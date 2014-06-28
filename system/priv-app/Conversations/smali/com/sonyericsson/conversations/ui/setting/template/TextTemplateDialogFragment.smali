.class public Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;
.super Landroid/app/DialogFragment;
.source "TextTemplateDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;
    }
.end annotation


# static fields
.field public static final DIALOG_FRAGMENT_TAG_NAME:Ljava/lang/String; = "text-template-dialog"

.field public static final INSTANCE_MODE:Ljava/lang/String; = "mode"

.field public static final INSTANCE_TEXT_TEMPLATE:Ljava/lang/String; = "textTemplate"

.field public static final MODE_ADD:I = 0x1

.field public static final MODE_EDIT:I = 0x2


# instance fields
.field private mCancelButtOnClickListener:Landroid/view/View$OnClickListener;

.field private mChangedListener:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

.field private mDoneButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mEditText:Landroid/widget/EditText;

.field private mMode:I

.field private mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 99
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mDoneButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 134
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mCancelButtOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mChangedListener:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    .line 61
    const-string v0, "textTemplate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    .line 65
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "textTemplate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 72
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget v5, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    if-ne v5, v8, :cond_2

    .line 75
    const v5, 0x7f070140

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 80
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030026

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "contentView":Landroid/view/View;
    const v5, 0x7f0a0091

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 83
    new-array v2, v8, [Landroid/text/InputFilter;

    .line 84
    .local v2, "filter":[Landroid/text/InputFilter;
    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x46

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v2, v5

    .line 85
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 86
    iget v5, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    if-eqz v5, :cond_1

    .line 87
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v6}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v6}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 90
    :cond_1
    const v5, 0x7f0a0093

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 91
    .local v4, "mDoneButton":Landroid/widget/Button;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mDoneButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v5, 0x7f0a0092

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 94
    .local v3, "mCancelButton":Landroid/widget/Button;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mCancelButtOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 77
    .end local v0    # "contentView":Landroid/view/View;
    .end local v2    # "filter":[Landroid/text/InputFilter;
    .end local v3    # "mCancelButton":Landroid/widget/Button;
    .end local v4    # "mDoneButton":Landroid/widget/Button;
    :cond_2
    const v5, 0x7f070141

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    const-string v0, "mode"

    iget v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string v0, "textTemplate"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mOriginalTemplate:Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 149
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public setTextTemplateChangedListener(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mChangedListener:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    .line 143
    return-void
.end method
