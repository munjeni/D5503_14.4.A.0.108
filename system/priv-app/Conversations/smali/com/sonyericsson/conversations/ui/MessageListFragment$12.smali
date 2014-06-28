.class Lcom/sonyericsson/conversations/ui/MessageListFragment$12;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;


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
    .line 1203
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteMarkedItems()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    .line 1228
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v14

    .line 1229
    .local v14, "messageIds":[J
    array-length v9, v14

    .line 1230
    .local v9, "checkedCount":I
    if-nez v9, :cond_0

    .line 1289
    :goto_0
    return-void

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    .line 1234
    .local v10, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->checkAnyMessageStarred(Landroid/util/SparseBooleanArray;)Z

    move-result v13

    .line 1235
    .local v13, "isAnyStarred":Z
    const/4 v11, 0x0

    .line 1236
    .local v11, "confirmMessage":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_3

    .line 1237
    if-eqz v13, :cond_2

    .line 1238
    const v11, 0x7f070178

    .line 1250
    :goto_1
    const/4 v7, 0x0

    .line 1251
    .local v7, "checkBoxTextResId":I
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1252
    .local v12, "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v8, 0x0

    .line 1253
    .local v8, "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    if-eqz v13, :cond_1

    .line 1254
    const v7, 0x7f07017a

    .line 1255
    new-instance v8, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$1;

    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-direct {v8, p0, v12}, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$12;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1263
    .restart local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;

    invoke-direct {v2, p0, v10, v12}, Lcom/sonyericsson/conversations/ui/MessageListFragment$12$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$12;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1286
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700dd

    const v3, 0x7f0700db

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object v5, v4

    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 1240
    .end local v2    # "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "checkBoxTextResId":I
    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .end local v12    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    const v11, 0x7f070039

    goto :goto_1

    .line 1243
    :cond_3
    if-eqz v13, :cond_4

    .line 1244
    const v11, 0x7f070179

    goto :goto_1

    .line 1246
    :cond_4
    const v11, 0x7f07003a

    goto :goto_1
.end method

.method public onMarkAll()V
    .locals 4

    .prologue
    .line 1205
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v3}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1206
    .local v1, "messageListView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1207
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1208
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->onUpdateActionMenu()V

    .line 1212
    return-void
.end method

.method public onNotifyActionModeDestroy()V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mClosedByUser:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1400(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMessageListMarkableMode(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1500(Lcom/sonyericsson/conversations/ui/MessageListFragment;Z)V

    .line 1314
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$700(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onFinishDeleteMessagesActionMode()V

    .line 1316
    :cond_0
    return-void
.end method

.method public onUnMarkAll()V
    .locals 4

    .prologue
    .line 1215
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v3}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1216
    .local v1, "messageListView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1217
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1218
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1221
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->onUpdateActionMenu()V

    .line 1222
    return-void
.end method

.method public onUpdateActionMenu()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1292
    const/4 v4, 0x0

    .line 1293
    .local v4, "markAllItem":Landroid/view/MenuItem;
    const/4 v5, 0x0

    .line 1295
    .local v5, "unmarkAllItem":Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    .line 1296
    .local v2, "count":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v6}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    .line 1298
    .local v1, "checkedCount":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1300(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v0, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 1299
    .local v0, "actionBarMenu":Landroid/view/Menu;
    const v6, 0x7f0a00cf

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1300
    .local v3, "deleteMenu":Landroid/view/MenuItem;
    if-lt v1, v7, :cond_0

    move v6, v7

    :goto_0
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1302
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1300(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const v10, 0x7f07013a

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setTitleOnSelectedView(Ljava/lang/String;)V

    .line 1305
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1300(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    const v9, 0x7f0a00ce

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1306
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1300(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    const v9, 0x7f0a00cd

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1307
    if-eq v1, v2, :cond_1

    move v6, v7

    :goto_1
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1308
    if-ne v1, v2, :cond_2

    :goto_2
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1309
    return-void

    :cond_0
    move v6, v8

    .line 1300
    goto :goto_0

    :cond_1
    move v6, v8

    .line 1307
    goto :goto_1

    :cond_2
    move v7, v8

    .line 1308
    goto :goto_2
.end method
