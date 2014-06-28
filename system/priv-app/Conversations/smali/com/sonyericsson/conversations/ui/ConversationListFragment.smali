.class public Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.super Landroid/app/Fragment;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
.implements Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;,
        Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;
    }
.end annotation


# static fields
.field private static final INSTANCE_LAYOUT_ID:Ljava/lang/String; = "LayoutId"

.field private static final INSTANCE_LISTVIEW_CHOICE_MODE:Ljava/lang/String; = "ListViewChoiceMode"

.field private static final INSTANCE_LISTVIEW_ID:Ljava/lang/String; = "ListViewId"

.field public static final LIST_SELECTED_POSITION_NONE:I = -0x1

.field protected static final MESSAGE_TYPE_SCROLL_TO_POSITION:I = 0x67

.field protected static final MESSAGE_TYPE_SHOW_DELETE_PROGRESS:I = 0x65

.field protected static final MESSAGE_TYPE_SHOW_LOADING_PROGRESS:I = 0x66

.field private static final TAG:Ljava/lang/String; = "ConversationListFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

.field private mCancelMenu:Landroid/view/MenuItem;

.field private mClosedByUser:Z

.field private mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

.field mConvListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

.field protected mConversationListEmptyText:Landroid/widget/TextView;

.field private mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

.field protected mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

.field protected mConversationsList:Landroid/widget/ListView;

.field private mDeleteConversationsMenu:Landroid/view/MenuItem;

.field private mFocusedMessageUri:Landroid/net/Uri;

.field private mFragmentLayoutId:I

.field private mFragmentListViewId:I

.field protected mHandler:Landroid/os/Handler;

.field private mIsMenuVisible:Z

.field private mListViewChoiceMode:I

.field private mMarkReadMenu:Landroid/view/MenuItem;

.field private mMenuForTest:Landroid/view/Menu;

.field private mMultiSelectionMode:Landroid/view/ActionMode;

.field private mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

.field private mNewConversationMenu:Landroid/view/MenuItem;

.field private mNormalModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private mPd:Landroid/app/ProgressDialog;

.field private mQueryString:Ljava/lang/String;

.field private mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mReloadConversations:Ljava/lang/Runnable;

.field protected mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectedPosition:I

.field private mSelectedThreadId:J

.field private mSettingsMenu:Landroid/view/MenuItem;

.field private mShowMarkProgressDlg:Ljava/lang/Runnable;

.field private mStarredMessageMenu:Landroid/view/MenuItem;

.field protected mTitleView:Landroid/widget/TextView;

.field protected mWriteNewHeaderView:Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;

.field private mshowProgressDlg:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 183
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 195
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mIsMenuVisible:Z

    .line 197
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mClosedByUser:Z

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    .line 201
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 203
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryString:Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMenuForTest:Landroid/view/Menu;

    .line 250
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 260
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNormalModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 268
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 281
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 323
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mReloadConversations:Ljava/lang/Runnable;

    .line 331
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$6;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 349
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .line 799
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mshowProgressDlg:Ljava/lang/Runnable;

    .line 1077
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowMarkProgressDlg:Ljava/lang/Runnable;

    .line 1200
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConvListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mClosedByUser:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->switchToViewMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mReloadConversations:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->reload()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedThreadId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method private getCancelMenuVisibility()Z
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeleteConversationsMenuVisibility()Z
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMarkReadMenuVisibility()Z
    .locals 4

    .prologue
    .line 754
    const/4 v1, 0x0

    .line 756
    .local v1, "isVisible":Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 757
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    if-eqz v3, :cond_1

    .line 758
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 759
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 762
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    const/4 v2, 0x0

    .line 765
    .local v2, "unReadCount":I
    :cond_0
    const-string v3, "unread_count"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 767
    if-lez v2, :cond_2

    .line 768
    const/4 v1, 0x1

    .line 777
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "unReadCount":I
    :cond_1
    :goto_0
    return v1

    .line 771
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "unReadCount":I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method private getMenuVisibility()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mIsMenuVisible:Z

    return v0
.end method

.method private getNewConversationsMenuVisibility()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSearchMenuVisibility()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 706
    const/4 v0, 0x0

    .line 708
    .local v0, "isConversationListEmpty":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    if-nez v1, :cond_1

    move v3, v0

    .line 720
    :cond_0
    :goto_0
    return v3

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    if-ne v1, v4, :cond_4

    .line 715
    const/4 v0, 0x0

    .line 720
    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isConvListContentAreaVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    goto :goto_0

    .line 717
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move v0, v3

    :goto_2
    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private hasConversations()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 870
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    if-eqz v1, :cond_2

    .line 873
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    move v0, v2

    .line 879
    .local v0, "hasConversations":Z
    :cond_1
    :goto_0
    return v0

    .line 876
    .end local v0    # "hasConversations":Z
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_4

    :cond_3
    move v0, v2

    .restart local v0    # "hasConversations":Z
    :cond_4
    goto :goto_0
.end method

.method private hideEmptyListHint()V
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 909
    return-void
.end method

.method private launchConversationListSettingsActivity()V
    .locals 3

    .prologue
    .line 621
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 623
    return-void
.end method

.method private launchStarredMessageListActivity()V
    .locals 3

    .prologue
    .line 616
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 618
    return-void
.end method

.method public static newInstance(II)Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .locals 1
    .param p0, "fragmentLayoutId"    # I
    .param p1, "listViewId"    # I

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->newInstance(III)Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(III)Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .locals 3
    .param p0, "fragmentLayoutId"    # I
    .param p1, "listViewId"    # I
    .param p2, "listViewChoiceMode"    # I

    .prologue
    .line 363
    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;-><init>()V

    .line 364
    .local v1, "convListFrag":Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "LayoutId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    const-string v2, "ListViewId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    const-string v2, "ListViewChoiceMode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 369
    return-object v1
.end method

.method private onCancelClick()V
    .locals 3

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideSearchView()V

    .line 604
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedThreadId:J

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onCurrentConversationDeleted(J)V

    .line 607
    :cond_0
    return-void
.end method

.method private onDeleteObsoleteThreadsComplete(ILjava/lang/Object;I)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 1041
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->dismissProgressDialog()V

    .line 1043
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    packed-switch p1, :pswitch_data_0

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1046
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 1047
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1048
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    goto :goto_0

    .line 1057
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->isCurrentThreadDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->isGroupThreadDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedThreadId:J

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->updateCurrentThreadStatus(J)V

    .line 1060
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->resetGroupThreadDeleted()V

    .line 1069
    :cond_1
    if-lez p3, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->forceLoad()V

    goto :goto_0

    .line 1044
    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPostDelete(ZI)V
    .locals 3
    .param p1, "isWriteNewDeleted"    # Z
    .param p2, "deleteCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mshowProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mshowProgressDlg:Ljava/lang/Runnable;

    .line 829
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 834
    :cond_0
    if-eqz p1, :cond_1

    .line 835
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setWriteNewHeaderVisibility(Z)V

    .line 838
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    .line 839
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 841
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->reload()V

    .line 843
    if-lez p2, :cond_2

    .line 844
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f070080

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 849
    :cond_2
    return-void
.end method

.method private onPreDelete()V
    .locals 4

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mshowProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 809
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mshowProgressDlg:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 810
    return-void
.end method

.method private onWriteNewClick()V
    .locals 3

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideSearchView()V

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onConversationOpen(J)V

    .line 600
    :cond_0
    return-void
.end method

.method private reload()V
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->forceLoad()V

    .line 638
    :cond_0
    return-void
.end method

.method private showEmptyListHint()V
    .locals 8

    .prologue
    .line 883
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 884
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 885
    .local v5, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 886
    const v6, 0x7f0700ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 887
    .local v1, "descriptionText":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 900
    .end local v1    # "descriptionText":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 901
    return-void

    .line 891
    :cond_0
    const v6, 0x7f070083

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "accessibilityText":Ljava/lang/String;
    const v6, 0x7f070084

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, "displayText":Ljava/lang/String;
    const v6, 0x7f020037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 895
    .local v4, "newMessageIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v4}, Lcom/sonyericsson/conversations/util/SpannableStringUtil;->merge(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v3

    .line 897
    .local v3, "emptyListHint":Landroid/text/SpannableString;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startDeleteConversations()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 611
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->switchToMultiSelectMode(I)V

    .line 613
    :cond_0
    return-void
.end method

.method private switchToMultiSelectMode(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 1155
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1158
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1179
    :goto_1
    return-void

    .line 1156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1162
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onStartDeleteConversations()V

    .line 1163
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWriteNewHeaderView:Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;

    if-eqz v1, :cond_2

    .line 1164
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWriteNewHeaderView:Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->setCheckableMode(Z)V

    .line 1166
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->switchCursorAdapterMode(I)V

    .line 1168
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1169
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1171
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1172
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 1173
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1176
    :cond_3
    new-instance v0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .line 1177
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConvListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 1178
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    goto :goto_1
.end method

.method private switchToViewMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1182
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWriteNewHeaderView:Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWriteNewHeaderView:Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->setCheckableMode(Z)V

    .line 1185
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    if-ne v0, v3, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->switchCursorAdapterMode(I)V

    .line 1192
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1193
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1194
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1195
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 1196
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 1197
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .line 1198
    return-void

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->switchCursorAdapterMode(I)V

    goto :goto_0
.end method

.method private updateOptionMenuAndExpandView(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onSearchViewExpand()V

    .line 1358
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1374
    return-void
.end method


# virtual methods
.method public allTaskesFinished()V
    .locals 1

    .prologue
    .line 781
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v0

    .line 782
    .local v0, "manager":Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;
    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->unregisterMessagePersistListener(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;)V

    .line 785
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    .line 786
    return-void
.end method

.method public asyncDeleteObsoleteThreads()V
    .locals 1

    .prologue
    .line 793
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->isTaskOngoing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->asyncDeleteObsoleteThreads()V

    .line 797
    :cond_0
    return-void
.end method

.method public changeToNormalMode()V
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->changeToNormalMode()V

    .line 1383
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNormalModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1384
    return-void
.end method

.method public changeToSearchMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1403
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->changeToSearchMode(Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1406
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->setSearchString(Ljava/lang/String;)V

    .line 1408
    :cond_0
    return-void
.end method

.method protected dismissProgressDialog()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 561
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 562
    return-void
.end method

.method public expandSearchView(Ljava/lang/String;)V
    .locals 1
    .param p1, "restoredString"    # Ljava/lang/String;

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1345
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateOptionMenuAndExpandView(Ljava/lang/String;)V

    .line 1347
    :cond_0
    return-void
.end method

.method public getActionMenuForTest()Landroid/view/Menu;
    .locals 4

    .prologue
    .line 1323
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1326
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "mActionMenu"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1327
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1328
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Menu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1329
    :catch_0
    move-exception v1

    .line 1330
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1332
    const/4 v3, 0x0

    goto :goto_0
.end method

.method getCustomViewForTest()Landroid/view/View;
    .locals 2

    .prologue
    .line 1433
    const/4 v0, 0x0

    .line 1435
    .local v0, "customView":Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v0, v1, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    .line 1439
    :cond_0
    return-object v0
.end method

.method public getFocuseMessageUriOfTheFirstConversation()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getMessageUriAtPosition(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getOptionMenuForTest()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMenuForTest:Landroid/view/Menu;

    return-object v0
.end method

.method public getThreadIdAtPosition(I)J
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 1019
    const-wide/16 v0, 0x0

    .line 1020
    .local v0, "threadId":J
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    if-eqz v2, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getThreadIdAtPosition(I)J

    move-result-wide v0

    .line 1026
    :goto_0
    return-wide v0

    .line 1024
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getThreadIdAtPosition(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getThreadTypeAtPosition(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getThreadTypeAtPosition(I)I

    move-result v0

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 384
    const-string v0, ""

    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 388
    const-string v0, ""

    const v1, 0x7f07009e

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 390
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public hideSearchView()V
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1139
    :cond_0
    return-void
.end method

.method protected highlightSelectedConversation(Z)V
    .locals 7
    .param p1, "ensureSelectionVisible"    # Z

    .prologue
    const/16 v6, 0x67

    .line 921
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedThreadId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 927
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->clearChoices()V

    goto :goto_0

    .line 931
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 932
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 933
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getThreadIdAtPosition(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedThreadId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 932
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 936
    :cond_3
    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedPosition:I

    .line 937
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 938
    if-eqz p1, :cond_0

    .line 939
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 940
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public isSearchBoxVisible()Z
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 1429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 444
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 445
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 446
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onCreateListCursorAdapter(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 448
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNormalModeItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 457
    :cond_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {v2, v3, v4, v0, v4}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    .line 459
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 463
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->initModel(Landroid/content/Context;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 465
    return-void

    .line 457
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelDelete(Z)V
    .locals 3
    .param p1, "isWriteNewDeleted"    # Z

    .prologue
    const/4 v2, 0x0

    .line 813
    if-eqz p1, :cond_0

    .line 814
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setWriteNewHeaderVisibility(Z)V

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    .line 818
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 820
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->reload()V

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f07003d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 823
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 413
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 415
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 416
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 417
    const-string v1, "LayoutId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFragmentLayoutId:I

    .line 418
    const-string v1, "ListViewId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFragmentListViewId:I

    .line 419
    const-string v1, "ListViewChoiceMode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    .line 421
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 422
    return-void
.end method

.method protected onCreateListCursorAdapter(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 402
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mListViewChoiceMode:I

    if-ne v0, v2, :cond_0

    .line 403
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    .line 406
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflate"    # Landroid/view/MenuInflater;

    .prologue
    .line 641
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 642
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 643
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v3, 0x7f0f0000

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 645
    const v3, 0x7f0a00b8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewConversationMenu:Landroid/view/MenuItem;

    .line 646
    const v3, 0x7f0a00be

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCancelMenu:Landroid/view/MenuItem;

    .line 647
    const v3, 0x7f0a00bd

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSettingsMenu:Landroid/view/MenuItem;

    .line 648
    const v3, 0x7f0a00b9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mDeleteConversationsMenu:Landroid/view/MenuItem;

    .line 649
    const v3, 0x7f0a00bb

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mStarredMessageMenu:Landroid/view/MenuItem;

    .line 650
    const v3, 0x7f0a00bc

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMarkReadMenu:Landroid/view/MenuItem;

    .line 651
    const v3, 0x7f0a00ba

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    .line 652
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 653
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 655
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-nez v3, :cond_0

    .line 669
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 660
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 663
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_1

    .line 664
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    .line 665
    .local v1, "info":Landroid/app/SearchableInfo;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 668
    .end local v1    # "info":Landroid/app/SearchableInfo;
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMenuForTest:Landroid/view/Menu;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 431
    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFragmentLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 433
    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFragmentListViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    .line 434
    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    .line 436
    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWriteNewHeaderView:Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;

    .line 439
    :cond_0
    return-object v0
.end method

.method public onDataLoaded(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 947
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->isDeleteTaskRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->dismissProgressDialog()V

    .line 953
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 955
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 956
    const/4 p1, 0x0

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    .line 961
    .local v0, "adapter":Landroid/widget/CursorAdapter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 962
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    .line 965
    :cond_2
    if-eqz v0, :cond_3

    .line 966
    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 967
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eq v2, v0, :cond_3

    .line 968
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 972
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 973
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    if-eqz v2, :cond_4

    .line 974
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->isDeleteTaskFinished()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 975
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->isCurrentThreadDeleted()Z

    move-result v1

    .line 976
    .local v1, "isCurrentThreadDeleted":Z
    if-eqz v1, :cond_7

    .line 977
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    iget-wide v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedThreadId:J

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onCurrentConversationDeleted(J)V

    .line 978
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->resetCurrentThreadDeleted()V

    .line 982
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->removeDeleteTask()V

    .line 991
    .end local v1    # "isCurrentThreadDeleted":Z
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onUpdateContainerView()V

    .line 995
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_5

    .line 996
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 1000
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1009
    .end local v0    # "adapter":Landroid/widget/CursorAdapter;
    :cond_6
    :goto_2
    return-void

    .line 980
    .restart local v0    # "adapter":Landroid/widget/CursorAdapter;
    .restart local v1    # "isCurrentThreadDeleted":Z
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onFinishDeleteConversationsActionMode(Z)V

    goto :goto_0

    .line 984
    .end local v1    # "isCurrentThreadDeleted":Z
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    invoke-interface {v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onConvListLoadFinished()V

    goto :goto_1

    .line 1002
    .end local v0    # "adapter":Landroid/widget/CursorAdapter;
    :cond_9
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    if-eqz v2, :cond_a

    .line 1003
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1005
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    if-eqz v2, :cond_6

    .line 1006
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_2
.end method

.method public onDataReset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1012
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1016
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 490
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 491
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 496
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mClosedByUser:Z

    .line 497
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 498
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 503
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 504
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 505
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    .line 508
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    if-eqz v1, :cond_3

    .line 509
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->close()V

    .line 512
    :cond_3
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v0

    .line 513
    .local v0, "manager":Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;
    if-eqz v0, :cond_4

    .line 514
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->unregisterMessagePersistListener(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;)V

    .line 516
    :cond_4
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    .line 518
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    if-eqz v1, :cond_5

    .line 519
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 520
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 522
    :cond_5
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 523
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1143
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    .line 1144
    .local v0, "longClickAvalible":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    const/4 v0, 0x0

    .line 1151
    :goto_0
    return v0

    .line 1147
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideSearchView()V

    .line 1148
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->switchToMultiSelectMode(I)V

    .line 1149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onListItemClick(JI)V
    .locals 4
    .param p1, "threadId"    # J
    .param p3, "position"    # I

    .prologue
    .line 530
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v2, p3}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getThreadTypeAtPosition(I)I

    move-result v1

    .line 534
    .local v1, "threadType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 535
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getAlertList()Landroid/content/Intent;

    move-result-object v0

    .line 536
    .local v0, "outboundIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 538
    .end local v0    # "outboundIntent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    if-eqz v2, :cond_0

    .line 539
    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedThreadId:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 540
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    invoke-interface {v2, p1, p2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onConversationOpen(J)V

    goto :goto_0
.end method

.method public varargs onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "obj"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1449
    sget-object v5, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1450
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onDataReset()V

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    sget-object v5, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1452
    aget-object v5, p2, v6

    check-cast v5, Landroid/database/Cursor;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onDataLoaded(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1453
    :cond_2
    sget-object v5, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_DELETE_OBSOLETE_THREADS_COMPLETE:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1454
    aget-object v5, p2, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1455
    .local v4, "token":I
    aget-object v0, p2, v7

    .line 1456
    .local v0, "cookie":Ljava/lang/Object;
    const/4 v5, 0x2

    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1457
    .local v3, "result":I
    invoke-direct {p0, v4, v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onDeleteObsoleteThreadsComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 1458
    .end local v0    # "cookie":Ljava/lang/Object;
    .end local v3    # "result":I
    .end local v4    # "token":I
    :cond_3
    sget-object v5, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1459
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onPreDelete()V

    goto :goto_0

    .line 1460
    :cond_4
    sget-object v5, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1461
    aget-object v5, p2, v6

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1462
    .local v2, "isWriteNewDeleted":Z
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onCancelDelete(Z)V

    goto :goto_0

    .line 1463
    .end local v2    # "isWriteNewDeleted":Z
    :cond_5
    sget-object v5, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_POST_DELETE:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1464
    aget-object v5, p2, v6

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1465
    .restart local v2    # "isWriteNewDeleted":Z
    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1466
    .local v1, "deleteCount":I
    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onPostDelete(ZI)V

    goto :goto_0

    .line 1467
    .end local v1    # "deleteCount":I
    .end local v2    # "isWriteNewDeleted":Z
    :cond_6
    sget-object v5, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_PRE_MARK_READ:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1468
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onPreExecuteMarkRead()V

    goto :goto_0

    .line 1469
    :cond_7
    sget-object v5, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_POST_MARK_READ:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onPostExecuteMarkRead()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 566
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 591
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 568
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onWriteNewClick()V

    goto :goto_0

    .line 571
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->launchConversationListSettingsActivity()V

    goto :goto_0

    .line 574
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->startDeleteConversations()V

    goto :goto_0

    .line 577
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->launchStarredMessageListActivity()V

    goto :goto_0

    .line 580
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->markReadAllConversation()V

    goto :goto_0

    .line 585
    :pswitch_5
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onSearchRequested()Z

    goto :goto_0

    .line 588
    :pswitch_6
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onCancelClick()V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00b8
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 469
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 470
    return-void
.end method

.method protected onPostExecuteMarkRead()V
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowMarkProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1093
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowMarkProgressDlg:Ljava/lang/Runnable;

    .line 1096
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->dismissProgressDialog()V

    .line 1098
    :cond_0
    return-void
.end method

.method protected onPreExecuteMarkRead()V
    .locals 4

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowMarkProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1087
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mShowMarkProgressDlg:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1088
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 672
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewConversationMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 673
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mNewConversationMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getNewConversationsMenuVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 675
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSettingsMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 676
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mDeleteConversationsMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getDeleteConversationsMenuVisibility()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 678
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMarkReadMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMarkReadMenuVisibility()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 680
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mStarredMessageMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 681
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getSearchMenuVisibility()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 684
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCancelMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCancelMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getMenuVisibility()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getCancelMenuVisibility()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 688
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 673
    goto :goto_0

    :cond_2
    move v0, v2

    .line 676
    goto :goto_1

    :cond_3
    move v0, v2

    .line 678
    goto :goto_2

    :cond_4
    move v1, v2

    .line 685
    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 474
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 476
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v0

    .line 478
    .local v0, "manager":Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->isTaskOngoing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->registerMessagePersistListener(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 374
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 375
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 628
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 630
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateOptionMenuAndExpandView(Ljava/lang/String;)V

    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdateContainerView()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 855
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hasConversations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideEmptyListHint()V

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showEmptyListHint()V

    goto :goto_0
.end method

.method public reloadDataAfterEndSearchMode()V
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationListModel:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->restartLoadData()V

    .line 1394
    return-void
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    .line 790
    return-void
.end method

.method public setListEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1131
    return-void
.end method

.method public setMenuVisibleFlag(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 691
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mIsMenuVisible:Z

    .line 692
    return-void
.end method

.method public setSelecedThread(J)V
    .locals 1
    .param p1, "threadId"    # J

    .prologue
    .line 912
    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedThreadId:J

    .line 914
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->highlightSelectedConversation(Z)V

    .line 915
    return-void
.end method

.method public setWriteNewHeaderVisibility(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 1127
    :cond_1
    :goto_0
    return-void

    .line 1111
    :cond_2
    if-eqz p1, :cond_3

    .line 1112
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWriteNewHeaderView:Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;->setCheckableMode(Z)V

    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWriteNewHeaderView:Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1118
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1119
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1120
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->highlightSelectedConversation(Z)V

    .line 1121
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onUpdateContainerView()V

    .line 1122
    if-nez p1, :cond_1

    .line 1124
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedPosition:I

    .line 1125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1116
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mWriteNewHeaderView:Lcom/sonyericsson/conversations/ui/ConversationListHeaderView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method protected showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 555
    :cond_1
    return-void
.end method
