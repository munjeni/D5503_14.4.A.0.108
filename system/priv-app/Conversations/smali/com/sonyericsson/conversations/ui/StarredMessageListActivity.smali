.class public Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;
.super Landroid/app/Activity;
.source "StarredMessageListActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;


# instance fields
.field private mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

.field private mStarredMessageList:Landroid/widget/ListView;

.field private mStarredMessageListEmptyText:Landroid/widget/TextView;

.field private mStarredMessageListModel:Lcom/sonyericsson/conversations/model/StarredMessageListModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListModel:Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    .line 36
    new-instance v0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity$1;-><init>(Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;)Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    return-object v0
.end method

.method private onUpdateContainerView()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListEmptyText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    .line 95
    .local v0, "isEmptyList":Z
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .end local v0    # "isEmptyList":Z
    :cond_0
    return-void

    .line 95
    .restart local v0    # "isEmptyList":Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 80
    .local v0, "outSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mContentView:Landroid/widget/FrameLayout;

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f030013

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 48
    const v1, 0x7f0a0033

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 50
    .local v0, "outSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mContentView:Landroid/widget/FrameLayout;

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 53
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 55
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 56
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 57
    const v1, 0x7f0a0034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListEmptyText:Landroid/widget/TextView;

    .line 58
    new-instance v1, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;IZ)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    new-instance v1, Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListModel:Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListModel:Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    invoke-virtual {v1, p0, p0}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->initModel(Landroid/content/Context;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 64
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 65
    return-void
.end method

.method public onDataLoaded(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->onUpdateContainerView()V

    .line 89
    return-void
.end method

.method public onDataReset()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListModel:Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 72
    return-void
.end method

.method public varargs onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 110
    sget-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->onDataReset()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->onDataLoaded(Landroid/database/Cursor;)V

    goto :goto_0
.end method
