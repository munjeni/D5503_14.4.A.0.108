.class public Lcom/sonyericsson/conversations/model/ConversationListModel;
.super Lcom/sonyericsson/conversations/model/LoaderModel;
.source "ConversationListModel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;,
        Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;,
        Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;,
        Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;,
        Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/conversations/model/LoaderModel;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONVERSATION_LIST_CURSOR_LOADER_ID:I = 0x0

.field public static final DB_TOKEN_DELETE_OBSOLETE_THREADS:I = 0x3ea

.field public static final DB_TOKEN_DELETE_THREADS:I = 0x3eb

.field public static final MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

.field public static final MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

.field public static final MODEL_EVENT_DATA_RESET:Ljava/lang/String;

.field public static final MODEL_EVENT_DELETE_OBSOLETE_THREADS_COMPLETE:Ljava/lang/String;

.field public static final MODEL_EVENT_POST_DELETE:Ljava/lang/String;

.field public static final MODEL_EVENT_POST_MARK_READ:Ljava/lang/String;

.field public static final MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

.field public static final MODEL_EVENT_PRE_MARK_READ:Ljava/lang/String;

.field private static final NON_EMPTY_THREAD_SELECTION:Ljava/lang/String; = "snippet NOT NULL OR address NOT NULL OR date NOT NULL"

.field public static final QUERY_INDICATOR_THREAD_ID_COLUMN:I = 0x0

.field public static final QUERY_INDICATOR_THREAD_ID_COUNT_COLUMN:I = 0x1

.field public static final QUERY_INDICATOR_TOTAL_INDICATOR_COUNT_COLUMN:I = 0x2

.field private static SINGLE_DELETION_THRESHOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeleteAsyncTask"

.field public static final UPDATE_CURSOR_DELAY:I = 0x15e


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

.field private mIsCurrentThreadDeleted:Z

.field private mIsGroupThreadDeleted:Z

.field protected mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

.field private mQueryHandler:Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delete_obsolete_threads_complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_DELETE_OBSOLETE_THREADS_COMPLETE:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pre_delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cancel_delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "post_delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_POST_DELETE:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pre_mark_read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_PRE_MARK_READ:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "post_mark_read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_POST_MARK_READ:Ljava/lang/String;

    .line 104
    const/16 v0, 0x19

    sput v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->SINGLE_DELETION_THRESHOLD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/LoaderModel;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    .line 93
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    .line 95
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsCurrentThreadDeleted:Z

    .line 97
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsGroupThreadDeleted:Z

    .line 100
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mQueryHandler:Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;

    .line 102
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/model/ConversationListModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/model/ConversationListModel;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsCurrentThreadDeleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/model/ConversationListModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/model/ConversationListModel;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsCurrentThreadDeleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/model/ConversationListModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/model/ConversationListModel;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsGroupThreadDeleted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/conversations/model/ConversationListModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/model/ConversationListModel;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsGroupThreadDeleted:Z

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->SINGLE_DELETION_THRESHOLD:I

    return v0
.end method

.method private getQueryProjection()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v0, "queryProjection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v1, "recipient_ids"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v1, "snippet"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v1, "snippet_cs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    const-string v1, "snippet_type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    const-string v1, "unread_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    const-string v1, "send_failed_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    const-string v1, "delivery_failed_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    const-string v1, "download_failed_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v1, "address"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    const-string v1, "date"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyAlertsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    const-string v1, "thread_type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v1

    const-string v2, "semc_pref_key_enable_attachment_indicator"

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    const-string v1, "has_attachment"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_1
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isStarredConversationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    const-string v1, "star_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_2
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isTotalCountEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    const-string v1, "total_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_3
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static queryIndicatorInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "indicatorColumn"    # Ljava/lang/String;

    .prologue
    .line 601
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "COUNT(_id)"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUM("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 604
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asyncDeleteObsoleteThreads()V
    .locals 7

    .prologue
    .line 574
    const/4 v4, 0x0

    .line 575
    .local v4, "selection":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyAlertsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const-string v4, "thread_type != 1"

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mQueryHandler:Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v6

    .line 583
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method public changeToNormalMode()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    const-string v1, "snippet NOT NULL OR address NOT NULL OR date NOT NULL"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setSelection(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setUri(Landroid/net/Uri;)V

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->getQueryProjection()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setProjection([Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    const-string v1, "date DESC"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setSortOrder(Ljava/lang/String;)V

    .line 558
    :cond_0
    return-void
.end method

.method public changeToSearchMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 561
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    if-eqz v1, :cond_0

    .line 562
    sget-object v1, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "semc_ext"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "pattern"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 565
    .local v0, "searchUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setSelection(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setUri(Landroid/net/Uri;)V

    .line 567
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setProjection([Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setSortOrder(Ljava/lang/String;)V

    .line 570
    .end local v0    # "searchUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public deleteThreads(IILandroid/util/SparseBooleanArray;J[J[IZ[Z)V
    .locals 12
    .param p1, "checkedCount"    # I
    .param p2, "totalCount"    # I
    .param p3, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p4, "selectedThreadId"    # J
    .param p6, "ids"    # [J
    .param p7, "types"    # [I
    .param p8, "deleteStarred"    # Z
    .param p9, "itemsStarred"    # [Z

    .prologue
    .line 410
    if-eqz p3, :cond_1

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->cancel(Z)Z

    .line 414
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v5

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel;Landroid/content/Context;IILandroid/util/SparseBooleanArray;J[J[IZ[Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 419
    :cond_1
    return-void
.end method

.method public forceLoad()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setUpdateThrottle(J)V

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->forceLoad()V

    .line 523
    :cond_0
    return-void
.end method

.method public initModel(Landroid/content/Context;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    .line 460
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mQueryHandler:Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;

    .line 461
    if-eqz p2, :cond_0

    .line 462
    invoke-virtual {p0, p2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->addListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 464
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->createCursorLoaderForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 465
    return-void
.end method

.method public isCurrentThreadDeleted()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsCurrentThreadDeleted:Z

    return v0
.end method

.method public isDeleteTaskFinished()Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeleteTaskNotTriggered()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeleteTaskRunning()Z
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupThreadDeleted()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsGroupThreadDeleted:Z

    return v0
.end method

.method public markReadAllConversation()V
    .locals 4

    .prologue
    .line 392
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel;Landroid/content/Context;)V

    .line 393
    .local v0, "markReadTask":Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->getQueryProjection()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "snippet NOT NULL OR address NOT NULL OR date NOT NULL"

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    instance-of v1, p1, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 540
    check-cast v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    .line 542
    .local v0, "conversationLoader":Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setUpdateThrottle(J)V

    .line 544
    .end local v0    # "conversationLoader":Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    return-void
.end method

.method public removeDeleteTask()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    .line 439
    return-void
.end method

.method public resetCurrentThreadDeleted()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsCurrentThreadDeleted:Z

    .line 431
    return-void
.end method

.method public resetGroupThreadDeleted()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsGroupThreadDeleted:Z

    .line 435
    return-void
.end method

.method public restartLoadData()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoaderManager:Landroid/app/LoaderManager;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 529
    :cond_0
    return-void
.end method

.method public uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    const/4 v2, 0x0

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->cancel(Z)Z

    .line 475
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    .line 476
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mQueryHandler:Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;

    .line 477
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    .line 478
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoaderManager:Landroid/app/LoaderManager;

    .line 479
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;

    .line 480
    if-eqz p1, :cond_1

    .line 481
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->removeListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 483
    :cond_1
    return-void
.end method

.method public updateCurrentThreadStatus(J)V
    .locals 2
    .param p1, "threadId"    # J

    .prologue
    .line 383
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel;Landroid/content/Context;J)V

    .line 385
    .local v0, "queryCurrentThread":Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    return-void
.end method
