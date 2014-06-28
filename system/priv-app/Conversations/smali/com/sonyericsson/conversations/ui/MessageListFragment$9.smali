.class Lcom/sonyericsson/conversations/ui/MessageListFragment$9;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMarkedListener()V
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
    .line 854
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBubbleClicked(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 856
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 858
    .local v0, "status":Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 859
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 861
    .end local v0    # "status":Z
    :cond_0
    return-void

    .line 857
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
