.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->onDeleteMarkedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

.field final synthetic val$checkSize:I

.field final synthetic val$checkedItemPositions:Landroid/util/SparseBooleanArray;

.field final synthetic val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$headerCount:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;IILandroid/util/SparseBooleanArray;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$headerCount:I

    iput p3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$checkSize:I

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$checkedItemPositions:Landroid/util/SparseBooleanArray;

    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 1260
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    .line 1261
    .local v2, "totalCount":I
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$headerCount:I

    add-int/2addr v2, v0

    .line 1262
    new-array v6, v2, [J

    .line 1263
    .local v6, "ids":[J
    new-array v7, v2, [I

    .line 1264
    .local v7, "types":[I
    new-array v9, v2, [Z

    .line 1265
    .local v9, "itemsStarred":[Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$headerCount:I

    if-ge v11, v0, :cond_0

    .line 1266
    const-wide/16 v3, -0x1

    aput-wide v3, v6, v11

    .line 1267
    aput v1, v7, v11

    .line 1268
    aput-boolean v1, v9, v11

    .line 1265
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1270
    :cond_0
    iget v11, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$headerCount:I

    :goto_1
    if-ge v11, v2, :cond_2

    .line 1271
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$headerCount:I

    sub-int v10, v11, v0

    .line 1272
    .local v10, "adapterIndex":I
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getItemId(I)J

    move-result-wide v3

    aput-wide v3, v6, v11

    .line 1273
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getThreadTypeAtPosition(I)I

    move-result v0

    aput v0, v7, v11

    .line 1274
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isStarredConversationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v10}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->isConversationStarred(I)Z

    move-result v0

    :goto_2
    aput-boolean v0, v9, v11

    .line 1270
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1274
    goto :goto_2

    .line 1277
    .end local v10    # "adapterIndex":I
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$700(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1278
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$700(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$checkSize:I

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$checkedItemPositions:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedThreadId:J
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$800(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)J

    move-result-wide v4

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual/range {v0 .. v9}, Lcom/sonyericsson/conversations/model/ConversationListModel;->deleteThreads(IILandroid/util/SparseBooleanArray;J[J[IZ[Z)V

    .line 1282
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$900(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1283
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$900(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1284
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$902(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1286
    :cond_4
    return-void
.end method
