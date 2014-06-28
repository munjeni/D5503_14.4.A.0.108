.class Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->onDeleteMarkedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

.field final synthetic val$checkedItemPositions:Landroid/util/SparseBooleanArray;

.field final synthetic val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$12;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->val$checkedItemPositions:Landroid/util/SparseBooleanArray;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v9

    .line 1267
    .local v9, "totalCount":I
    new-array v5, v9, [J

    .line 1268
    .local v5, "itemsId":[J
    new-array v7, v9, [Z

    .line 1269
    .local v7, "itemsStarred":[Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemId(I)J

    move-result-wide v0

    aput-wide v0, v5, v8

    .line 1271
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->isStarredItem(I)Z

    move-result v0

    aput-boolean v0, v7, v8

    .line 1269
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->val$checkedItemPositions:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v3

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/conversations/model/MessageListModel;->deleteMessages(ILandroid/util/SparseBooleanArray;J[JZ[Z)V

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1280
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1281
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1202(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1283
    :cond_2
    return-void
.end method
