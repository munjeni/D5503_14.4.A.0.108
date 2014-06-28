.class Lcom/android/phone/MultiLineTitleEditTextPreference$1;
.super Ljava/lang/Object;
.source "MultiLineTitleEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MultiLineTitleEditTextPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHasTextInternalChanged:Z

.field private final mSpanObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/phone/MultiLineTitleEditTextPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/MultiLineTitleEditTextPreference;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->this$0:Lcom/android/phone/MultiLineTitleEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->mSpanObject:Ljava/lang/Object;

    return-void
.end method

.method private handleTextInternalChange(Landroid/text/Editable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 150
    iget-object v8, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->mSpanObject:Ljava/lang/Object;

    invoke-interface {p1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 151
    .local v4, "start":I
    iget-object v8, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->mSpanObject:Ljava/lang/Object;

    invoke-interface {p1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 152
    .local v2, "end":I
    const/4 v1, -0x1

    .line 154
    .local v1, "delStart":I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    .line 159
    .local v0, "calc":[I
    aget v3, v0, v7

    .line 162
    .local v3, "msgLength":I
    aget v8, v0, v9

    packed-switch v8, :pswitch_data_0

    .line 172
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported message encoding:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 164
    :pswitch_1
    const/16 v8, 0xa0

    if-gt v3, v8, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    add-int/lit16 v8, v3, -0xa0

    sub-int v1, v2, v8

    .line 175
    :goto_1
    if-ltz v4, :cond_2

    if-ltz v2, :cond_2

    if-gez v1, :cond_3

    .line 176
    :cond_2
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_0

    # getter for: Lcom/android/phone/MultiLineTitleEditTextPreference;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/MultiLineTitleEditTextPreference;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid index, start:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", delStart:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :pswitch_2
    const/16 v8, 0x46

    if-le v3, v8, :cond_0

    .line 169
    add-int/lit8 v8, v3, -0x46

    sub-int v1, v2, v8

    .line 170
    goto :goto_1

    .line 180
    :cond_3
    iget-boolean v8, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->mHasTextInternalChanged:Z

    if-nez v8, :cond_4

    move v6, v7

    :cond_4
    iput-boolean v6, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->mHasTextInternalChanged:Z

    .line 181
    iget-boolean v6, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->mHasTextInternalChanged:Z

    if-eqz v6, :cond_5

    .line 182
    iget-object v6, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->this$0:Lcom/android/phone/MultiLineTitleEditTextPreference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f0b010f

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 186
    :cond_5
    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 188
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_0

    # getter for: Lcom/android/phone/MultiLineTitleEditTextPreference;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/MultiLineTitleEditTextPreference;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Character number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->this$0:Lcom/android/phone/MultiLineTitleEditTextPreference;

    # getter for: Lcom/android/phone/MultiLineTitleEditTextPreference;->mIsMsgSizeLimited:Z
    invoke-static {v0}, Lcom/android/phone/MultiLineTitleEditTextPreference;->access$000(Lcom/android/phone/MultiLineTitleEditTextPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->handleTextInternalChange(Landroid/text/Editable;)V

    .line 147
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 126
    iget-object v2, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->this$0:Lcom/android/phone/MultiLineTitleEditTextPreference;

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 127
    .local v1, "dialog":Landroid/app/Dialog;
    instance-of v2, v1, Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    .line 140
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local p1    # "s":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v1    # "dialog":Landroid/app/Dialog;
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_1
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1    # "dialog":Landroid/app/Dialog;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 130
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 131
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->this$0:Lcom/android/phone/MultiLineTitleEditTextPreference;

    # getter for: Lcom/android/phone/MultiLineTitleEditTextPreference;->mIsMsgSizeLimited:Z
    invoke-static {v2}, Lcom/android/phone/MultiLineTitleEditTextPreference;->access$000(Lcom/android/phone/MultiLineTitleEditTextPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    check-cast p1, Landroid/text/Spannable;

    .end local p1    # "s":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/phone/MultiLineTitleEditTextPreference$1;->mSpanObject:Ljava/lang/Object;

    add-int v3, p2, p4

    const/16 v4, 0x12

    invoke-interface {p1, v2, p2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 131
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
