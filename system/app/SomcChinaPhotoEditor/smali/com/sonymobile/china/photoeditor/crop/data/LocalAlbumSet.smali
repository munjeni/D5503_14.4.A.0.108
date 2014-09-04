.class public Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;
.super Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
.source "LocalAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;
    }
.end annotation


# static fields
.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = "1) GROUP BY 1,(2"

.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "MAX(datetaken) DESC"

.field private static final EXTERNAL_MEDIA:Ljava/lang/String; = "external"

.field private static final INDEX_BUCKET_ID:I = 0x0

.field private static final INDEX_BUCKET_NAME:I = 0x2

.field private static final INDEX_MEDIA_TYPE:I = 0x1

.field public static final PATH_ALL:Lcom/sonymobile/china/photoeditor/crop/data/Path;

.field public static final PATH_IMAGE:Lcom/sonymobile/china/photoeditor/crop/data/Path;

.field public static final PATH_VIDEO:Lcom/sonymobile/china/photoeditor/crop/data/Path;

.field private static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final mBaseUri:Landroid/net/Uri;

.field private static final mWatchUriImage:Landroid/net/Uri;

.field private static final mWatchUriVideo:Landroid/net/Uri;

.field private static final sName:Ljava/lang/String; = ""


# instance fields
.field private mAlbums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

.field private final mNotifierImage:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

.field private final mNotifierVideo:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->PATH_ALL:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 50
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->PATH_IMAGE:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 52
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->PATH_VIDEO:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 63
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 65
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    .line 67
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V
    .locals 2
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .prologue
    .line 116
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mAlbums:Ljava/util/List;

    .line 117
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 118
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->getTypeFromPath(Lcom/sonymobile/china/photoeditor/crop/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mType:I

    .line 119
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    sget-object v1, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;Landroid/net/Uri;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mNotifierImage:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    .line 120
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    sget-object v1, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;Landroid/net/Uri;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mNotifierVideo:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    .line 121
    return-void
.end method

.method private static circularShiftRight([Ljava/lang/Object;II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    aget-object v1, p0, p2

    .line 308
    .local v1, "temp":Ljava/lang/Object;, "TT;"
    move v0, p2

    .local v0, "k":I
    :goto_0
    if-le v0, p1, :cond_0

    .line 309
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    .line 308
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 311
    :cond_0
    aput-object v1, p0, p1

    .line 312
    return-void
.end method

.method private static findBucket([Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;I)I
    .locals 3
    .param p0, "entries"    # [Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;
    .param p1, "bucketId"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 179
    aget-object v2, p0, v0

    iget v2, v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;->bucketId:I

    if-ne v2, p1, :cond_0

    .line 182
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 178
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "bucketId"    # I

    .prologue
    .line 245
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 247
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 251
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 255
    const-string v0, ""

    .line 260
    :goto_0
    return-object v0

    .line 258
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 260
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 258
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getLocalAlbum(Lcom/sonymobile/china/photoeditor/crop/data/DataManager;ILcom/sonymobile/china/photoeditor/crop/data/Path;ILjava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .locals 12
    .param p1, "manager"    # Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    .param p2, "type"    # I
    .param p3, "parent"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p4, "id"    # I
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual/range {p3 .. p4}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(I)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v1

    .line 226
    .local v1, "path":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    invoke-virtual {p1, v1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->peekMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v9

    .line 227
    .local v9, "object":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    if-eqz v9, :cond_0

    .line 228
    check-cast v9, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .end local v9    # "object":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    move-object v0, v9

    .line 236
    :goto_0
    return-object v0

    .line 229
    .restart local v9    # "object":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 241
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :pswitch_1
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    const/4 v4, 0x1

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;IZLjava/lang/String;)V

    goto :goto_0

    .line 233
    :pswitch_2
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    const/4 v4, 0x0

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;IZLjava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_3
    sget-object v8, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 236
    .local v8, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;

    const/4 v2, 0x2

    new-array v10, v2, [Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    const/4 v11, 0x0

    const/4 v4, 0x2

    sget-object v5, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->PATH_IMAGE:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->getLocalAlbum(Lcom/sonymobile/china/photoeditor/crop/data/DataManager;ILcom/sonymobile/china/photoeditor/crop/data/Path;ILjava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    move-result-object v2

    aput-object v2, v10, v11

    const/4 v11, 0x1

    const/4 v4, 0x4

    sget-object v5, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->PATH_VIDEO:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->getLocalAlbum(Lcom/sonymobile/china/photoeditor/crop/data/DataManager;ILcom/sonymobile/china/photoeditor/crop/data/Path;ILjava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-direct {v0, v1, v8, v10}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/util/Comparator;[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getTypeFromPath(Lcom/sonymobile/china/photoeditor/crop/data/Path;)I
    .locals 5
    .param p0, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "name":[Ljava/lang/String;
    array-length v2, v0

    if-ge v2, v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    const-string v2, "all"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const/4 v1, 0x6

    .line 133
    :cond_1
    :goto_0
    return v1

    .line 130
    :cond_2
    const-string v2, "image"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    const-string v1, "video"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    const/4 v1, 0x4

    goto :goto_0

    .line 134
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadBucketEntries(Landroid/database/Cursor;)[Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;>;"
    const/4 v2, 0x0

    .line 155
    .local v2, "typeBits":I
    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 156
    or-int/lit8 v2, v2, 0x2

    .line 158
    :cond_0
    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mType:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 159
    or-int/lit8 v2, v2, 0x8

    .line 162
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    shl-int v3, v5, v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 164
    new-instance v1, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 166
    .local v1, "entry":Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    .end local v1    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;
    :catchall_0
    move-exception v3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;

    return-object v3
.end method


# virtual methods
.method fakeChange()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mNotifierImage:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->fakeChange()V

    .line 277
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mNotifierVideo:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->fakeChange()V

    .line 278
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, ""

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mAlbums:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mAlbums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected loadSubMediaSets()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 190
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/util/GalleryUtils;->assertNotInRenderThread()V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v2}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v5, "1) GROUP BY 1,(2"

    const/4 v6, 0x0

    const-string v7, "MAX(datetaken) DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 193
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_1

    .line 197
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 221
    :cond_0
    return-object v10

    .line 199
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->loadBucketEntries(Landroid/database/Cursor;)[Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;

    move-result-object v13

    .line 200
    .local v13, "entries":[Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;
    const/16 v20, 0x0

    .line 204
    .local v20, "offset":I
    sget v2, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v13, v2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->findBucket([Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;I)I

    move-result v17

    .line 205
    .local v17, "index":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 206
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "offset":I
    .local v21, "offset":I
    move/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    move/from16 v20, v21

    .line 208
    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    :cond_2
    sget v2, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    invoke-static {v13, v2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->findBucket([Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;I)I

    move-result v17

    .line 209
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_3

    .line 210
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    move/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    move/from16 v20, v21

    .line 213
    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v10, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v2}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getDataManager()Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    move-result-object v5

    .line 215
    .local v5, "dataManager":Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    move-object v11, v13

    .local v11, "arr$":[Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;
    array-length v0, v11

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-object v14, v11, v16

    .line 216
    .local v14, "entry":Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mType:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    iget v8, v14, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;->bucketId:I

    iget-object v9, v14, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->getLocalAlbum(Lcom/sonymobile/china/photoeditor/crop/data/DataManager;ILcom/sonymobile/china/photoeditor/crop/data/Path;ILjava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 218
    .end local v14    # "entry":Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet$BucketEntry;
    :cond_4
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, "n":I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_0

    .line 219
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->reload()J

    .line 218
    add-int/lit8 v15, v15, 0x1

    goto :goto_1
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mNotifierImage:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mNotifierVideo:Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mDataVersion:J

    .line 269
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->loadSubMediaSets()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->mAlbums:Ljava/util/List;

    .line 271
    :cond_0
    iget-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method
