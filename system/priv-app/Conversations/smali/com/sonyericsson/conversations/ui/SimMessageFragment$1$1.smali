.class Lcom/sonyericsson/conversations/ui/SimMessageFragment$1$1;
.super Ljava/lang/Object;
.source "SimMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$200(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v2

    if-nez v2, :cond_0

    .line 98
    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->ICC_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$400()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mIndex:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$300(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 99
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/sonyericsson/conversations/model/SimMessage;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/conversations/model/SimMessage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 100
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->initMessageActionsController(Lcom/sonyericsson/conversations/model/Message;)V
    invoke-static {v2, v0}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$500(Lcom/sonyericsson/conversations/ui/SimMessageFragment;Lcom/sonyericsson/conversations/model/Message;)V

    .line 102
    .end local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$200(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->deleteMessage()V

    .line 103
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 106
    :cond_1
    return-void
.end method
