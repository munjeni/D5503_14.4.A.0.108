.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;
.super Ljava/lang/Object;
.source "TextTemplateFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteMarkedItems()V
    .locals 13

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$700(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 383
    .local v7, "checkState":Landroid/util/SparseBooleanArray;
    if-nez v7, :cond_0

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$200(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 439
    :goto_0
    return-void

    .line 387
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v11, "markedTextTemplateIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 390
    .local v6, "checkSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 391
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    .line 392
    .local v12, "pos":I
    invoke-virtual {v7, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$400(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v0}, Lcom/sonymobile/template/sms/TextTemplate;->getId()I

    move-result v10

    .line 394
    .local v10, "id":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v10    # "id":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 398
    .end local v12    # "pos":I
    :cond_2
    new-instance v2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;

    invoke-direct {v2, p0, v11}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;Ljava/util/ArrayList;)V

    .line 429
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v8, 0x0

    .line 430
    .local v8, "confirmMessage":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 431
    const v8, 0x7f07003b

    .line 436
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700dd

    const v3, 0x7f0700db

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 433
    :cond_3
    const v8, 0x7f07003c

    goto :goto_2
.end method

.method public onMarkAll()V
    .locals 4

    .prologue
    .line 365
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$700(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 366
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 367
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$700(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->onUpdateActionMenu()V

    .line 370
    return-void
.end method

.method public onNotifyActionModeDestroy()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClosedByUser:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$900(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->switchToViewMode()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$1000(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$1100(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$1100(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;->onFinishDeleteTextTemplate()V

    .line 468
    :cond_0
    return-void
.end method

.method public onUnMarkAll()V
    .locals 4

    .prologue
    .line 373
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$700(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 374
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 375
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$700(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->onUpdateActionMenu()V

    .line 378
    return-void
.end method

.method public onUpdateActionMenu()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 442
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$700(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .line 443
    .local v2, "count":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$700(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    .line 445
    .local v1, "checkedCount":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$800(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v0, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 446
    .local v0, "actionBarMenu":Landroid/view/Menu;
    const v6, 0x7f0a00cf

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 447
    .local v3, "deleteMenu":Landroid/view/MenuItem;
    if-lt v1, v7, :cond_0

    move v6, v7

    :goto_0
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$800(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    const v10, 0x7f07013a

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setTitleOnSelectedView(Ljava/lang/String;)V

    .line 452
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$800(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    const v9, 0x7f0a00ce

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 454
    .local v5, "unmarkAllItem":Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$800(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    const v9, 0x7f0a00cd

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 456
    .local v4, "markAllItem":Landroid/view/MenuItem;
    if-eq v1, v2, :cond_1

    move v6, v7

    :goto_1
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 457
    if-ne v1, v2, :cond_2

    :goto_2
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 458
    return-void

    .end local v4    # "markAllItem":Landroid/view/MenuItem;
    .end local v5    # "unmarkAllItem":Landroid/view/MenuItem;
    :cond_0
    move v6, v8

    .line 447
    goto :goto_0

    .restart local v4    # "markAllItem":Landroid/view/MenuItem;
    .restart local v5    # "unmarkAllItem":Landroid/view/MenuItem;
    :cond_1
    move v6, v8

    .line 456
    goto :goto_1

    :cond_2
    move v7, v8

    .line 457
    goto :goto_2
.end method
