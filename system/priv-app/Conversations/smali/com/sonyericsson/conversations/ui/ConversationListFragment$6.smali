.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const-string v1, ""

    # setter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$402(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$200(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onCloseSearchModeInConversationList()V

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mReloadConversations:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$500(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mReloadConversations:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$500(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const-string v1, ""

    # setter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$402(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    const/4 v0, 0x1

    return v0
.end method
