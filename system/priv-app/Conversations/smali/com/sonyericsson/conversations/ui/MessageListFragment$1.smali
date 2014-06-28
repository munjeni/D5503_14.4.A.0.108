.class Lcom/sonyericsson/conversations/ui/MessageListFragment$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageListItemPopulated(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MessageListModel;->getFocusedIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$100(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$100(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setListItemPopulateListener(Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getFocusedIndex()I

    move-result v1

    # invokes: Lcom/sonyericsson/conversations/ui/MessageListFragment;->setListViewSelection(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$300(Lcom/sonyericsson/conversations/ui/MessageListFragment;I)V

    goto :goto_0
.end method
