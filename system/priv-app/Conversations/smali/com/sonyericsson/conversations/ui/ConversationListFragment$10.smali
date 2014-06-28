.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteMarkedItems()V
    .locals 21

    .prologue
    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    .line 1220
    .local v5, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v2

    array-length v4, v2

    .line 1221
    .local v4, "checkSize":I
    const/16 v19, 0x0

    .line 1222
    .local v19, "confirmMessage":I
    const/16 v20, 0x0

    .line 1223
    .local v20, "isAnyStarred":Z
    const/4 v15, 0x0

    .line 1224
    .local v15, "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    const/4 v14, 0x0

    .line 1225
    .local v14, "checkBoxTextResId":I
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1226
    .local v6, "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x0

    .line 1227
    .local v1, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 1229
    .local v3, "headerCount":I
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isStarredConversationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->checkAnyConversationStarred(ILandroid/util/SparseBooleanArray;)Z

    move-result v20

    .line 1234
    :cond_0
    const/4 v2, 0x1

    if-ne v4, v2, :cond_3

    .line 1235
    if-eqz v20, :cond_2

    .line 1236
    const v19, 0x7f070175

    .line 1248
    :goto_0
    if-eqz v20, :cond_1

    .line 1249
    const v14, 0x7f070177

    .line 1250
    new-instance v15, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$1;

    .end local v15    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1258
    .restart local v15    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_1
    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;

    .end local v1    # "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;IILandroid/util/SparseBooleanArray;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1288
    .restart local v1    # "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0700dd

    const v10, 0x7f0700db

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$1000(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const v9, 0x7f0700dd

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const v17, 0x1080027

    const v18, 0x1010355

    move-object v9, v1

    invoke-static/range {v7 .. v18}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;II)V

    .line 1293
    return-void

    .line 1238
    :cond_2
    const v19, 0x7f070044

    goto :goto_0

    .line 1241
    :cond_3
    if-eqz v20, :cond_4

    .line 1242
    const v19, 0x7f070176

    goto :goto_0

    .line 1244
    :cond_4
    const v19, 0x7f070045

    goto :goto_0
.end method

.method public onMarkAll()V
    .locals 4

    .prologue
    .line 1202
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 1203
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1204
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->onUpdateActionMenu()V

    .line 1207
    return-void
.end method

.method public onNotifyActionModeDestroy()V
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mClosedByUser:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$1200(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->switchToViewMode()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$1300(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    .line 1317
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$200(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$700(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->isDeleteTaskNotTriggered()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onFinishDeleteConversationsActionMode(Z)V

    .line 1319
    :cond_0
    return-void
.end method

.method public onUnMarkAll()V
    .locals 4

    .prologue
    .line 1210
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 1211
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1212
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->onUpdateActionMenu()V

    .line 1215
    return-void
.end method

.method public onUpdateActionMenu()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1296
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .line 1297
    .local v2, "count":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    .line 1299
    .local v1, "checkedCount":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$1100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v0, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 1300
    .local v0, "actionBarMenu":Landroid/view/Menu;
    const v6, 0x7f0a00cf

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1301
    .local v3, "deleteMenu":Landroid/view/MenuItem;
    if-lt v1, v7, :cond_0

    move v6, v7

    :goto_0
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1303
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$1100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const v10, 0x7f07013a

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setTitleOnSelectedView(Ljava/lang/String;)V

    .line 1306
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$1100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    const v9, 0x7f0a00ce

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1308
    .local v5, "unmarkAllItem":Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$1100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    const v9, 0x7f0a00cd

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1310
    .local v4, "markAllItem":Landroid/view/MenuItem;
    if-eq v1, v2, :cond_1

    move v6, v7

    :goto_1
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1311
    if-ne v1, v2, :cond_2

    :goto_2
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1312
    return-void

    .end local v4    # "markAllItem":Landroid/view/MenuItem;
    .end local v5    # "unmarkAllItem":Landroid/view/MenuItem;
    :cond_0
    move v6, v8

    .line 1301
    goto :goto_0

    .restart local v4    # "markAllItem":Landroid/view/MenuItem;
    .restart local v5    # "unmarkAllItem":Landroid/view/MenuItem;
    :cond_1
    move v6, v8

    .line 1310
    goto :goto_1

    :cond_2
    move v7, v8

    .line 1311
    goto :goto_2
.end method
