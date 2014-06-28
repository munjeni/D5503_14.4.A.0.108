.class public Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
.super Landroid/app/Fragment;
.source "SimMessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;,
        Lcom/sonyericsson/conversations/ui/SimMessageListFragment$SimCursorAdapter;
    }
.end annotation


# static fields
.field private static final ICC_URI:Landroid/net/Uri;

.field static final MENU_COPY:I = 0x1

.field static final MENU_DELETE:I = 0x2

.field static final SHOW_BUSY:I = 0x2

.field static final SHOW_EMPTY:I = 0x1

.field static final SHOW_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimMessageListFragment"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field mContextMenuForTest:Landroid/view/ContextMenu;

.field private mEmptyListText:Landroid/widget/TextView;

.field private mIsResumed:Z

.field private mListAdapter:Landroid/widget/CursorAdapter;

.field private mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mPendingRefresh:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSimList:Landroid/widget/ListView;

.field mState:I

.field private final simChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    .line 67
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 105
    new-instance v0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->simChangeObserver:Landroid/database/ContentObserver;

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->refreshMessageList()V

    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mPendingRefresh:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->updateState(I)V

    return-void
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->simChangeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 177
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 178
    const/16 v1, 0xf

    .line 180
    .local v1, "flag":I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 182
    .end local v1    # "flag":I
    :cond_0
    return-void
.end method

.method private refreshMessageList()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->updateState(I)V

    .line 242
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->startQuery()V

    .line 244
    :cond_0
    return-void
.end method

.method private showProgressDialog(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    .line 307
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const v2, 0x7f0700bd

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v4, v3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private startQuery()V
    .locals 9

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 237
    :cond_1
    return-void

    .line 230
    :catch_0
    move-exception v8

    .line 231
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 280
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mState:I

    if-ne v0, p1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 284
    :cond_0
    iput p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mState:I

    .line 285
    packed-switch p1, :pswitch_data_0

    .line 302
    const-string v0, "SimMessageListFragment"

    const-string v1, "Invalid State"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mEmptyListText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->showProgressDialog(Z)V

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mEmptyListText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->showProgressDialog(Z)V

    goto :goto_0

    .line 297
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mEmptyListText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->showProgressDialog(Z)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public focusMessageList()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 173
    :cond_0
    return-void
.end method

.method getContextMenuForTest()Landroid/view/ContextMenu;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContextMenuForTest:Landroid/view/ContextMenu;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/Notification;->clear()V

    .line 200
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->updateState(I)V

    .line 201
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->startQuery()V

    .line 202
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 383
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 388
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 318
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 337
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copyMessage(Landroid/app/Activity;)V

    move v0, v6

    .line 321
    goto :goto_0

    .line 323
    :pswitch_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$3;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)V

    .line 330
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700dd

    const v3, 0x7f0700db

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/app/FragmentManager;)V

    move v0, v6

    .line 335
    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 343
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v6, p3

    .line 345
    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 347
    .local v6, "adapterMenuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 348
    .local v7, "cursor":Landroid/database/Cursor;
    iget v0, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 349
    const-string v0, "index_on_icc"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, "iccIndex":Ljava/lang/String;
    const-string v0, "true"

    const-string v1, "is_status_report"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 352
    .local v9, "isStatusReport":Z
    const/4 v5, 0x0

    .line 354
    .local v5, "options":I
    if-nez v9, :cond_0

    .line 355
    const/high16 v0, 0x10000

    or-int/2addr v5, v0

    .line 358
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 362
    .local v10, "uri":Landroid/net/Uri;
    new-instance v4, Lcom/sonyericsson/conversations/model/SimMessage;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, v10}, Lcom/sonyericsson/conversations/model/SimMessage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 364
    .local v4, "message":Lcom/sonyericsson/conversations/model/Message;
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isCopyVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f070018

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 373
    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const v3, 0x7f07001a

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 375
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContextMenuForTest:Landroid/view/ContextMenu;

    .line 376
    return-void

    .line 370
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f070017

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 125
    new-instance v1, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 126
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0a008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    .line 129
    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mEmptyListText:Landroid/widget/TextView;

    .line 130
    new-instance v1, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$SimCursorAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$SimCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    new-instance v2, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->init()V

    .line 165
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->initActionBar()V

    .line 166
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 276
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 277
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 193
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getConversationHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->startActivity(Landroid/content/Intent;)V

    .line 191
    const/4 v1, 0x1

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mIsResumed:Z

    .line 263
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mIsResumed:Z

    .line 252
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mPendingRefresh:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->refreshMessageList()V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mPendingRefresh:Z

    .line 256
    :cond_0
    return-void
.end method
