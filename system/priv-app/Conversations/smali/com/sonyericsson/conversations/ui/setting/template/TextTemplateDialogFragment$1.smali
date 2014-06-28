.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;
.super Ljava/lang/Object;
.source "TextTemplateDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 102
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mChangedListener:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->access$000(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    move-result-object v3

    if-nez v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0a002f

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 107
    .local v2, "textTemplateFragment":Landroid/app/Fragment;
    if-eqz v2, :cond_2

    .line 108
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    check-cast v2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    .end local v2    # "textTemplateFragment":Landroid/app/Fragment;
    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->setTextTemplateChangedListener(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;)V

    .line 113
    :cond_0
    const-string v0, ""

    .line 114
    .local v0, "inputString":Ljava/lang/String;
    const-string v1, ""

    .line 115
    .local v1, "tempInputString":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->access$100(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->access$100(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->access$100(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070142

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 131
    .end local v0    # "inputString":Ljava/lang/String;
    .end local v1    # "tempInputString":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 124
    .restart local v0    # "inputString":Ljava/lang/String;
    .restart local v1    # "tempInputString":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-virtual {v3}, Landroid/app/DialogFragment;->dismiss()V

    .line 125
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mMode:I
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->access$200(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 126
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mChangedListener:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->access$000(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    move-result-object v3

    invoke-interface {v3, v5, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;->onTextTemplateChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->mChangedListener:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->access$000(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;->onTextTemplateChanged(ILjava/lang/String;)V

    goto :goto_0
.end method
