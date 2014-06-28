.class Lcom/sonyericsson/conversations/ui/MessageListFragment$11;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->prepareDeleteConversation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field final synthetic val$allItemPositions:Landroid/util/SparseBooleanArray;

.field final synthetic val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/util/SparseBooleanArray;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->val$allItemPositions:Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$700(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onStartDeleteConversation()V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v9

    .line 1123
    .local v9, "totalCount":I
    new-array v5, v9, [J

    .line 1124
    .local v5, "itemsId":[J
    new-array v7, v9, [Z

    .line 1125
    .local v7, "itemsStarred":[Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 1126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemId(I)J

    move-result-wide v0

    aput-wide v0, v5, v8

    .line 1127
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->isStarredItem(I)Z

    move-result v0

    aput-boolean v0, v7, v8

    .line 1125
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1129
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->val$allItemPositions:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v3

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/conversations/model/MessageListModel;->deleteMessages(ILandroid/util/SparseBooleanArray;J[JZ[Z)V

    goto :goto_0
.end method
