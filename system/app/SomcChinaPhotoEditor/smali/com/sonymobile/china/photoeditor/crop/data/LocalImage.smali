.class public Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;
.super Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalLargeImageRequest;,
        Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalImageRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_ORIENTATION:I = 0x9

.field private static final INDEX_SIZE_ID:I = 0xb

.field private static final INDEX_WIDTH:I = 0xc

.field static final ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public height:I

.field private final mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

.field public rotation:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 84
    const/16 v0, 0xe

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

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;I)V
    .locals 6
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    .param p3, "id"    # I

    .prologue
    .line 118
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 119
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 120
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v3}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 122
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 123
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 124
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

    .line 127
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 135
    return-void

    .line 130
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

    .line 133
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
    .line 112
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 113
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 114
    invoke-direct {p0, p3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 115
    return-void
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    .line 292
    sparse-switch p0, :sswitch_data_0

    .line 302
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 294
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    .line 296
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method static getTargetSize(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 221
    packed-switch p0, :pswitch_data_0

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :pswitch_0
    const/16 v0, 0x280

    .line 225
    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0xc8

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->id:I

    .line 139
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 140
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 141
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    .line 142
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    .line 143
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateTakenInMs:J

    .line 144
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 145
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->rotation:I

    .line 146
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->bucketId:I

    .line 147
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->fileSize:J

    .line 148
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->width:I

    .line 149
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->height:I

    .line 150
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 284
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->assertNotInRenderThread()V

    .line 285
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 286
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

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

    .line 289
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 339
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 340
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
    .line 360
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x2

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->rotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 5

    .prologue
    .line 266
    const/16 v0, 0x62d

    .line 268
    .local v0, "operation":I
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    or-int/lit8 v0, v0, 0x40

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    or-int/lit8 v0, v0, 0x2

    .line 276
    :cond_1
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    iget-wide v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    or-int/lit8 v0, v0, 0x10

    .line 279
    :cond_2
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->width:I

    return v0
.end method

.method public requestImage(I)Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;
    .locals 6
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
    .line 174
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->mIsDrm:Z

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalImageRequest;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;Lcom/sonymobile/china/photoeditor/crop/data/Path;ILjava/lang/String;Z)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;
    .locals 3
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
    .line 233
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->mIsDrm:Z

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 9
    .param p1, "degrees"    # I

    .prologue
    .line 308
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->assertNotInRenderThread()V

    .line 309
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 310
    .local v0, "baseUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v3, "values":Landroid/content/ContentValues;
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->rotation:I

    add-int/2addr v4, p1

    rem-int/lit16 v2, v4, 0x168

    .line 312
    .local v2, "rotation":I
    if-gez v2, :cond_0

    .line 313
    add-int/lit16 v2, v2, 0x168

    .line 315
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const-string v5, "image/jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->fileSize:J

    .line 328
    const-string v4, "_size"

    iget-wide v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->fileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    :cond_1
    const-string v4, "orientation"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v4}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 335
    return-void

    .line 320
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 154
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;-><init>()V

    .line 155
    .local v0, "uh":Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->id:I

    .line 156
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 158
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    .line 159
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    .line 160
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateTakenInMs:J

    .line 161
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateAddedInSec:J

    .line 162
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateModifiedInSec:J

    .line 163
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 164
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->rotation:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->rotation:I

    .line 165
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->bucketId:I

    .line 166
    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->fileSize:J

    .line 167
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->width:I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->width:I

    .line 168
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->height:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->height:I

    .line 169
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
