.class Lcom/sonyericsson/conversations/ui/MessageListFragment$8;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;I)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$100(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$100(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->val$index:I

    # invokes: Lcom/sonyericsson/conversations/ui/MessageListFragment;->setListViewSelection(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$300(Lcom/sonyericsson/conversations/ui/MessageListFragment;I)V

    goto :goto_0
.end method
