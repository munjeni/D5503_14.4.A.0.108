.class Lcom/sonyericsson/conversations/ui/SimMessageListFragment$2;
.super Ljava/lang/Object;
.source "SimMessageListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v8}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$300(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Landroid/widget/CursorAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 135
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 141
    const-string v8, "date"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 142
    .local v3, "date":J
    const-string v8, "address"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "address":Ljava/lang/String;
    const-string v8, "body"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "body":Ljava/lang/String;
    const-string v8, "index_on_icc"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "iccIndex":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v8

    if-nez v8, :cond_0

    .line 150
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v7, "onClickIntent":Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v6, "messageInfo":Landroid/os/Bundle;
    const-string v8, "date"

    invoke-virtual {v6, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 153
    const-string v8, "address"

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v8, "body"

    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v8, "index"

    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v7, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 157
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
