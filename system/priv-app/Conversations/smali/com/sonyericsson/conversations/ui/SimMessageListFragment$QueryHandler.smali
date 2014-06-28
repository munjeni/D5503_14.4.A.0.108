.class Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SimMessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .line 206
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 207
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    .line 211
    if-eqz p3, :cond_0

    .line 212
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->updateState(I)V
    invoke-static {v0, v3}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$400(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;I)V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$700(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$500()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->simChangeObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$600(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 223
    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$300(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Landroid/widget/CursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->updateState(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$400(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;I)V

    goto :goto_0
.end method
