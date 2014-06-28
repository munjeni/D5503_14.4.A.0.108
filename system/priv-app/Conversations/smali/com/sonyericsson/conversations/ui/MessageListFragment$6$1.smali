.class Lcom/sonyericsson/conversations/ui/MessageListFragment$6$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$6;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$6;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6$1;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDeleted()V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6$1;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$6;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$700(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6$1;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$6;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$600(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onCurrentConversationDeleted(J)V

    .line 573
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6$1;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$6;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$800(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 574
    return-void
.end method
