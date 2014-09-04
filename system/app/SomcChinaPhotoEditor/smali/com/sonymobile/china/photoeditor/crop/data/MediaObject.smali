.class public abstract Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"


# static fields
.field public static final CACHE_FLAG_FULL:I = 0x2

.field public static final CACHE_FLAG_NO:I = 0x0

.field public static final CACHE_FLAG_SCREENNAIL:I = 0x1

.field public static final CACHE_STATUS_CACHED_FULL:I = 0x3

.field public static final CACHE_STATUS_CACHED_SCREENNAIL:I = 0x2

.field public static final CACHE_STATUS_CACHING:I = 0x1

.field public static final CACHE_STATUS_NOT_CACHED:I = 0x0

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final MEDIA_TYPE_ALL:I = 0x6

.field public static final MEDIA_TYPE_IMAGE:I = 0x2

.field public static final MEDIA_TYPE_UNKNOWN:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x4

.field public static final SUPPORT_ALL:I = -0x1

.field public static final SUPPORT_CACHE:I = 0x100

.field public static final SUPPORT_CROP:I = 0x8

.field public static final SUPPORT_DELETE:I = 0x1

.field public static final SUPPORT_EDIT:I = 0x200

.field public static final SUPPORT_FULL_IMAGE:I = 0x40

.field public static final SUPPORT_IMPORT:I = 0x800

.field public static final SUPPORT_INFO:I = 0x400

.field public static final SUPPORT_PLAY:I = 0x80

.field public static final SUPPORT_ROTATE:I = 0x2

.field public static final SUPPORT_SETAS:I = 0x20

.field public static final SUPPORT_SHARE:I = 0x4

.field public static final SUPPORT_SHOW_ON_MAP:I = 0x10

.field private static sVersionSerial:J


# instance fields
.field protected mDataVersion:J

.field protected final mPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->sVersionSerial:J

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V
    .locals 0
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "version"    # J

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1, p0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->setObject(Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;)V

    .line 89
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 90
    iput-wide p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mDataVersion:J

    .line 91
    return-void
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 6

    .prologue
    .line 142
    const-class v1, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->sVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cache(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheFlag()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheSize()J
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheStatus()I
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDataVersion()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public getPath()Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public rotate(I)V
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
