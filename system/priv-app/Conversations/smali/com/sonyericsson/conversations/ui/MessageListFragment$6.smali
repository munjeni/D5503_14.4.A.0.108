.class Lcom/sonyericsson/conversations/ui/MessageListFragment$6;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->deleteMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field final synthetic val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$500(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$500(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 568
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 569
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$800(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$6$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$6$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$6;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$800(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->deleteMessage()V

    .line 579
    :cond_2
    return-void
.end method
