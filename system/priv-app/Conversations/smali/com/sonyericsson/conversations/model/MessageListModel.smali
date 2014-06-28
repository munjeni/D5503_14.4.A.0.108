.class public Lcom/sonyericsson/conversations/model/MessageListModel;
.super Lcom/sonyericsson/conversations/model/LoaderModel;
.source "MessageListModel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;,
        Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;
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
.field private static final MESSAGE_LIST_CURSOR_LOADER_ID:I = 0x1

.field public static final MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

.field public static final MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

.field public static final MODEL_EVENT_DATA_RESET:Ljava/lang/String;

.field public static final MODEL_EVENT_POST_DELETE:Ljava/lang/String;

.field public static final MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

.field private static final UPDATE_CURSER_DELAY:I = 0x15e

.field private static sQueryOrder:Ljava/lang/String;

.field private static sQueryProjection:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/sonyericsson/conversations/model/Conversation;

.field private mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

.field private mFocusedIndex:I

.field private mFocusedMessageUri:Landroid/net/Uri;

.field private mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pre_delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cancel_delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "post_delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_POST_DELETE:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryOrder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/model/Conversation;Landroid/net/Uri;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;
    .param p2, "focusedMessageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/LoaderModel;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mContext:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    .line 45
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedIndex:I

    .line 53
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedMessageUri:Landroid/net/Uri;

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must not create MessageListModel with null conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 70
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedMessageUri:Landroid/net/Uri;

    .line 71
    return-void
.end method

.method private initQueryCondition()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/provider/CapabilityUtil;->init(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 188
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryOrder:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isSortSequenceEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 190
    .local v0, "sequencTimeAsOrder":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const-string v1, "sequence_time"

    sput-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryOrder:Ljava/lang/String;

    .line 192
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageProjection;->SEQUENCE_TIME_ORDERED_COMMON_PROJECTION:[Ljava/lang/String;

    sput-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryProjection:[Ljava/lang/String;

    .line 198
    .end local v0    # "sequencTimeAsOrder":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local v0    # "sequencTimeAsOrder":Ljava/lang/Boolean;
    :cond_1
    const-string v1, "normalized_date"

    sput-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryOrder:Ljava/lang/String;

    .line 195
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageProjection;->COMMON_PROJECTION:[Ljava/lang/String;

    sput-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryProjection:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public deleteMessages(ILandroid/util/SparseBooleanArray;J[JZ[Z)V
    .locals 10
    .param p1, "totalCount"    # I
    .param p2, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p3, "threadId"    # J
    .param p5, "itemsId"    # [J
    .param p6, "deleteStarred"    # Z
    .param p7, "itemsStarred"    # [Z

    .prologue
    .line 288
    if-eqz p2, :cond_1

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 292
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v4

    move-object v1, p0

    move v3, p1

    move-wide v5, p3

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;-><init>(Lcom/sonyericsson/conversations/model/MessageListModel;Landroid/content/Context;ILandroid/util/SparseBooleanArray;J[JZ[Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [[J

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    :cond_1
    return-void
.end method

.method public forceLoad()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setUpdateThrottle(J)V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 125
    :cond_0
    return-void
.end method

.method public getConversation()Lcom/sonyericsson/conversations/model/Conversation;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    return-object v0
.end method

.method public getFocusedIndex()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedIndex:I

    return v0
.end method

.method public getFocusedMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public initExistMessageList(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 180
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p0}, Lcom/sonyericsson/conversations/model/LoaderModel;->createCursorLoaderForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 181
    return-void
.end method

.method public initModel(Landroid/content/Context;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mContext:Landroid/content/Context;

    .line 174
    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p0, p2}, Lcom/sonyericsson/conversations/model/BaseModel;->addListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 177
    :cond_0
    return-void
.end method

.method public isLoadStarted()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    if-nez v1, :cond_1

    .line 133
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, p0}, Lcom/sonyericsson/conversations/model/LoaderModel;->createCursorLoaderForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v1}, Landroid/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setUpdateThrottle(J)V

    .line 136
    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 138
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 139
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    goto :goto_0
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
    const/4 v4, 0x0

    .line 100
    sget-object v0, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 101
    .local v2, "baseUri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->initQueryCondition()V

    .line 102
    new-instance v0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryProjection:[Ljava/lang/String;

    sget-object v6, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryOrder:Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 109
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setUpdateThrottle(J)V

    .line 112
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ModelCache;->clearMessageMap()V

    .line 113
    sget-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/model/MessageListModel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 117
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 149
    return-void
.end method

.method public setFocusedIndex(I)V
    .locals 0
    .param p1, "focusedIndex"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedIndex:I

    .line 157
    return-void
.end method

.method public setFocusedMessageUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "focusedMessageUri"    # Landroid/net/Uri;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedMessageUri:Landroid/net/Uri;

    .line 165
    return-void
.end method

.method public uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 208
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mContext:Landroid/content/Context;

    .line 209
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mDeleteTask:Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;

    .line 210
    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/BaseModel;->removeListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 213
    :cond_1
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/LoaderModel;->mLoaderManager:Landroid/app/LoaderManager;

    .line 214
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    .line 215
    return-void
.end method
