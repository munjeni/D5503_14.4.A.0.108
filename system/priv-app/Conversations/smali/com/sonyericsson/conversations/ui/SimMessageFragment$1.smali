.class Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;
.super Ljava/lang/Object;
.source "SimMessageFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SimMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 75
    const/4 v7, 0x1

    .line 77
    .local v7, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    const/4 v7, 0x0

    .line 124
    :goto_0
    return v7

    .line 79
    :pswitch_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$000(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    .local v8, "outIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-virtual {v0, v8}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    .end local v8    # "outIntent":Landroid/content/Intent;
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipboardManager;

    .line 87
    .local v6, "cbm":Landroid/content/ClipboardManager;
    const-string v0, "sms body"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$100(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0700d8

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    .end local v6    # "cbm":Landroid/content/ClipboardManager;
    :pswitch_2
    new-instance v2, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1$1;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;)V

    .line 109
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700dd

    const v3, 0x7f0700db

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
