.class public Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;
.super Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo$LocalVideoRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DURATION:I = 0x9

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_SIZE_ID:I = 0xb

.field static final ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public durationInSec:I

.field private final mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "/local/video/item"

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;I)V
    .locals 6
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "context"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p3, "id"    # I

    .prologue
    .line 88
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 89
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 90
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v3}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 91
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 92
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 93
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 94
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get cursor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    return-void

    .line 100
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find data for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 82
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 83
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 84
    invoke-direct {p0, p3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V

    .line 85
    return-void
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->id:I

    .line 109
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 110
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 111
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    .line 112
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    .line 113
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateTakenInMs:J

    .line 114
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 115
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->durationInSec:I

    .line 116
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->bucketId:I

    .line 117
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->fileSize:J

    .line 118
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 173
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->assertNotInRenderThread()V

    .line 174
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 175
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v1}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 187
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 188
    .local v0, "baseUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0x485

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo$LocalVideoRequest;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->getPath()Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Lcom/sonymobile/china/photoeditor/crop/data/Path;ILjava/lang/String;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 0
    .param p1, "degrees"    # I

    .prologue
    .line 183
    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 122
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;-><init>()V

    .line 123
    .local v0, "uh":Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->id:I

    .line 124
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 126
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    .line 127
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    .line 128
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateTakenInMs:J

    .line 129
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateAddedInSec:J

    .line 130
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateModifiedInSec:J

    .line 131
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 132
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->durationInSec:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->durationInSec:I

    .line 133
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->bucketId:I

    .line 134
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->fileSize:J

    .line 135
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
