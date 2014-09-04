.class public Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;,
        Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;,
        Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;,
        Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final FREESPACE_IDNEX_DATA:I = 0x1

.field private static final FREESPACE_IDNEX_ID:I = 0x0

.field private static final FREESPACE_INDEX_CONTENT_SIZE:I = 0x3

.field private static final FREESPACE_INDEX_CONTENT_URL:I = 0x2

.field private static final FREESPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREESPACE_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id = ?"

.field private static final LRU_CAPACITY:I = 0x4

.field private static final MAX_DELETE_COUNT:I = 0x10

.field private static final QUERY_INDEX_DATA:I = 0x1

.field private static final QUERY_INDEX_ID:I

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final SUM_INDEX_SUM:I

.field private static final SUM_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final WHERE_HASH_AND_URL:Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

.field private mAssociateMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapacity:J

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/china/photoeditor/crop/common/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mRoot:Ljava/io/File;

.field private final mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 56
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->SCHEMA:Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    .line 58
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 62
    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "hash_code"

    aput-object v2, v1, v4

    const-string v2, "content_url"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "content_url"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    .line 73
    const-string v0, "%s ASC"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "last_access"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sum(%s)"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "_size"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Ljava/io/File;J)V
    .locals 2
    .param p1, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p2, "root"    # Ljava/io/File;
    .param p3, "capacity"    # J

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTotalBytes:J

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mInitialized:Z

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mAssociateMap:Ljava/util/WeakHashMap;

    .line 110
    invoke-static {p2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mRoot:Ljava/io/File;

    .line 111
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 112
    iput-wide p3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mCapacity:J

    .line 113
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DatabaseHelper;

    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DatabaseHelper;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mRoot:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mAssociateMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Lcom/sonymobile/china/photoeditor/crop/common/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    return-void
.end method

.method private findEntryInDatabase(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .locals 19
    .param p1, "stringUrl"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v15

    .line 127
    .local v15, "hash":J
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x1

    aput-object p1, v7, v3

    .line 130
    .local v7, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v6, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 133
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    new-instance v14, Ljava/io/File;

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v14, "file":Ljava/io/File;
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    .line 136
    .local v17, "id":J
    const/4 v12, 0x0

    .line 137
    .local v12, "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sonymobile/china/photoeditor/crop/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    move-object v12, v0

    .line 139
    if-nez v12, :cond_0

    .line 140
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    new-instance v13, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v13, v0, v1, v2, v14}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;JLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .end local v12    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .local v13, "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v13}, Lcom/sonymobile/china/photoeditor/crop/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v12, v13

    .line 145
    .end local v13    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .restart local v12    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v12    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .end local v14    # "file":Ljava/io/File;
    .end local v17    # "id":J
    :goto_0
    return-object v12

    .line 145
    .restart local v12    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v17    # "id":J
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    .end local v12    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .end local v14    # "file":Ljava/io/File;
    .end local v17    # "id":J
    :catchall_1
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 151
    const/4 v12, 0x0

    goto :goto_0

    .line 145
    .restart local v13    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v17    # "id":J
    :catchall_2
    move-exception v3

    move-object v12, v13

    .end local v13    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .restart local v12    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    goto :goto_1
.end method

.method private declared-synchronized freeSomeSpaceIfNeed(I)V
    .locals 18
    .param p1, "maxDeleteFileCount"    # I

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTotalBytes:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mCapacity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 267
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 239
    .local v10, "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    if-lez p1, :cond_3

    :try_start_2
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTotalBytes:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mCapacity:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 241
    .local v12, "id":J
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 242
    .local v17, "url":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 243
    .local v15, "size":J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 245
    .local v14, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 247
    .local v9, "containsKey":Z
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 248
    if-nez v9, :cond_1

    .line 249
    add-int/lit8 p1, p1, -0x1

    .line 250
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTotalBytes:J

    sub-long/2addr v1, v15

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTotalBytes:J

    .line 251
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 265
    .end local v9    # "containsKey":Z
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "id":J
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "size":J
    .end local v17    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 234
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 247
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "id":J
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v15    # "size":J
    .restart local v17    # "url":Ljava/lang/String;
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 265
    .end local v12    # "id":J
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "size":J
    .end local v17    # "url":Ljava/lang/String;
    :cond_3
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method

.method private declared-synchronized initialize()V
    .locals 9

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 286
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mInitialized:Z

    .line 287
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 295
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 296
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTotalBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTotalBytes:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    :cond_3
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 304
    iget-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 305
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    goto :goto_0

    .line 302
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized insertEntry(Ljava/lang/String;Ljava/io/File;)J
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 271
    .local v1, "size":J
    iget-wide v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTotalBytes:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTotalBytes:J

    .line 273
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "hashCode":Ljava/lang/String;
    const-string v4, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v4, "hash_code"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v4, "content_url"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v4, "_size"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 279
    const-string v4, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 280
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    .line 270
    .end local v0    # "hashCode":Ljava/lang/String;
    .end local v1    # "size":J
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private updateLastAccess(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 123
    :cond_0
    return-void
.end method

.method public download(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .locals 9
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    .line 180
    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mInitialized:Z

    if-nez v5, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->initialize()V

    .line 183
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "stringUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    monitor-enter v6

    .line 187
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    invoke-virtual {v5, v3}, Lcom/sonymobile/china/photoeditor/crop/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    .line 188
    .local v1, "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    if-eqz v1, :cond_1

    .line 189
    iget-object v0, v1, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    .line 190
    .local v0, "cacheFile":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    iget-wide v7, v1, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->updateLastAccess(J)V

    .line 192
    monitor-exit v6

    .line 222
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :goto_0
    return-object v1

    .line 195
    .restart local v1    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    new-instance v2, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;

    invoke-direct {v2}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;-><init>()V

    .line 199
    .local v2, "proxy":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 200
    :try_start_1
    invoke-direct {p0, v3}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_2

    .line 202
    iget-object v0, v1, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    .line 203
    .restart local v0    # "cacheFile":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    iget-wide v7, v1, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->updateLastAccess(J)V

    .line 205
    monitor-exit v6

    goto :goto_0

    .line 220
    .end local v0    # "cacheFile":Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 195
    .end local v1    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .end local v2    # "proxy":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 211
    .restart local v1    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .restart local v2    # "proxy":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;

    .line 212
    .local v4, "task":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;
    if-nez v4, :cond_3

    .line 213
    new-instance v4, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;

    .end local v4    # "task":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;
    invoke-direct {v4, p0, v3}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;Ljava/lang/String;)V

    .line 214
    .restart local v4    # "task":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v4, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->addProxy(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;)V

    .line 216
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v5}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getThreadPool()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    move-result-object v5

    invoke-virtual {v5, v4, v4}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->submit(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    move-result-object v5

    # setter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->mFuture:Lcom/sonymobile/china/photoeditor/crop/util/Future;
    invoke-static {v4, v5}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->access$002(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;Lcom/sonymobile/china/photoeditor/crop/util/Future;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .line 220
    :goto_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;->get(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    move-result-object v1

    goto :goto_0

    .line 218
    :cond_3
    :try_start_4
    invoke-virtual {v4, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$DownloadTask;->addProxy(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$TaskProxy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public lookup(Ljava/net/URL;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    .locals 6
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 155
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mInitialized:Z

    if-nez v2, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->initialize()V

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "stringUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    monitor-enter v3

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mEntryMap:Lcom/sonymobile/china/photoeditor/crop/common/LruCache;

    invoke-virtual {v2, v1}, Lcom/sonymobile/china/photoeditor/crop/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    .line 162
    .local v0, "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    if-eqz v0, :cond_1

    .line 163
    iget-wide v4, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->updateLastAccess(J)V

    .line 164
    monitor-exit v3

    move-object v2, v0

    .line 176
    :goto_0
    return-object v2

    .line 166
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 170
    :try_start_1
    invoke-direct {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    iget-wide v4, v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->updateLastAccess(J)V

    .line 173
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v0

    goto :goto_0

    .line 166
    .end local v0    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 175
    .restart local v0    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
    :cond_2
    :try_start_3
    monitor-exit v3

    .line 176
    const/4 v2, 0x0

    goto :goto_0

    .line 175
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
