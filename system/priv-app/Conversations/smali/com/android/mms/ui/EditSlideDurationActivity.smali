.class public Lcom/android/mms/ui/EditSlideDurationActivity;
.super Landroid/app/Activity;
.source "EditSlideDurationActivity.java"


# static fields
.field public static final SLIDE_DUR:Ljava/lang/String; = "dur"

.field public static final SLIDE_INDEX:Ljava/lang/String; = "slide_index"

.field public static final SLIDE_TOTAL:Ljava/lang/String; = "slide_total"

.field private static final STATE:Ljava/lang/String; = "state"


# instance fields
.field private mCurSlide:I

.field private mDone:Landroid/widget/Button;

.field private mDur:Landroid/widget/EditText;

.field private mLabel:Landroid/widget/TextView;

.field private final mOnDoneClickListener:Landroid/view/View$OnClickListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mState:Landroid/os/Bundle;

.field private mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    new-instance v0, Lcom/android/mms/ui/EditSlideDurationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditSlideDurationActivity$1;-><init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 138
    new-instance v0, Lcom/android/mms/ui/EditSlideDurationActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditSlideDurationActivity$2;-><init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnDoneClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private notifyUser(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 169
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    return-void
.end method


# virtual methods
.method protected editDone()V
    .locals 6

    .prologue
    .line 148
    iget-object v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "dur":Ljava/lang/String;
    const/4 v1, 0x0

    .line 151
    .local v1, "durValue":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    if-gtz v1, :cond_0

    .line 157
    const v3, 0x7f07010b

    invoke-direct {p0, v3}, Lcom/android/mms/ui/EditSlideDurationActivity;->notifyUser(I)V

    .line 164
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/NumberFormatException;
    const v3, 0x7f07010a

    invoke-direct {p0, v3}, Lcom/android/mms/ui/EditSlideDurationActivity;->notifyUser(I)V

    goto :goto_0

    .line 162
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 66
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 68
    const/16 v0, 0x8

    .line 69
    .local v0, "dur":I
    if-nez p1, :cond_1

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "slide_index"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    .line 73
    const-string v2, "slide_total"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    .line 74
    const-string v2, "dur"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 85
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const v2, 0x7f0a0002

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mLabel:Landroid/widget/TextView;

    .line 86
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070105

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v2, 0x7f0a0003

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    .line 90
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 94
    const v2, 0x7f0a0004

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDone:Landroid/widget/Button;

    .line 95
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDone:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void

    .line 76
    :cond_1
    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    .line 77
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "slide_index"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    .line 79
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "slide_total"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    .line 80
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "dur"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    .line 107
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "slide_index"

    iget v4, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "slide_total"

    iget v4, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    .local v0, "durValue":I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string v3, "dur"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v2, "state"

    iget-object v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    return-void

    .line 113
    .end local v0    # "durValue":I
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x5

    .restart local v0    # "durValue":I
    goto :goto_0
.end method
