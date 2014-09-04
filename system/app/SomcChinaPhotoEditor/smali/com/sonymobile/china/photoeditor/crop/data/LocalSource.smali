.class Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;
.super Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/LocalSource$1;,
        Lcom/sonymobile/china/photoeditor/crop/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
.field public static final KEY_BUCKET_ID:Ljava/lang/String; = "bucketId"

.field public static final KEY_MEDIA_TYPES:Ljava/lang/String; = "mediaTypes"

.field private static final LOCAL_ALL_ALBUM:I = 0x7

.field private static final LOCAL_ALL_ALBUMSET:I = 0x6

.field private static final LOCAL_IMAGE_ALBUM:I = 0x2

.field private static final LOCAL_IMAGE_ALBUMSET:I = 0x0

.field private static final LOCAL_IMAGE_ITEM:I = 0x4

.field private static final LOCAL_VIDEO_ALBUM:I = 0x3

.field private static final LOCAL_VIDEO_ALBUMSET:I = 0x1

.field private static final LOCAL_VIDEO_ITEM:I = 0x5

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x4

.field private static final NO_MATCH:I = -0x1

.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource$IdComparator;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/LocalSource$1;)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V
    .locals 7
    .param p1, "context"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 76
    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 77
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 78
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    .line 79
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    const-string v1, "/local/image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    const-string v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 81
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    const-string v1, "/local/all"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    const-string v1, "/local/image/*"

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 84
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    const-string v1, "/local/video/*"

    invoke-virtual {v0, v1, v4}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 85
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    const-string v1, "/local/all/*"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    const-string v1, "/local/image/item/*"

    invoke-virtual {v0, v1, v5}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    const-string v1, "/local/video/item/*"

    invoke-virtual {v0, v1, v6}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "defaultType"    # I

    .prologue
    .line 149
    const-string v4, "mediaTypes"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->getMediaType(Ljava/lang/String;I)I

    move-result v3

    .line 150
    .local v3, "mediaType":I
    const-string v4, "bucketId"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "bucketId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 153
    .local v2, "id":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 160
    packed-switch v3, :pswitch_data_0

    .line 166
    :pswitch_0
    const-string v4, "/local/all"

    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(I)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v4

    :goto_0
    return-object v4

    .line 154
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_0

    .line 162
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    const-string v4, "/local/image"

    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(I)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v4

    goto :goto_0

    .line 164
    :pswitch_2
    const-string v4, "/local/video"

    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(I)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v4

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "defaultType"    # I

    .prologue
    .line 129
    if-nez p0, :cond_1

    .line 140
    .end local p1    # "defaultType":I
    :cond_0
    :goto_0
    return p1

    .line 132
    .restart local p1    # "defaultType":I
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 133
    .local v0, "value":I
    and-int/lit8 v1, v0, 0x5

    if-eqz v1, :cond_0

    move p1, v0

    .line 134
    goto :goto_0

    .line 135
    .end local v0    # "value":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;Z)V
    .locals 12
    .param p2, "consumer"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;
    .param p3, "isImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;",
            ">;",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;"
    sget-object v10, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 232
    .local v6, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 233
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;

    .line 236
    .local v7, "pid":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, v7, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->path:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v10}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 238
    .local v9, "startId":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v4, v1, 0x1

    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 242
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;

    .line 243
    .local v8, "pid2":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    iget-object v10, v8, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->path:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v10}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "curId":I
    sub-int v10, v0, v9

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_1

    .line 250
    .end local v0    # "curId":I
    .end local v8    # "pid2":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    :cond_0
    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-static {v10, p3, v2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;->getMediaItemById(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;ZLjava/util/ArrayList;)[Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    move-result-object v3

    .line 251
    .local v3, "items":[Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    move v5, v1

    .local v5, "k":I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 252
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;

    .line 253
    .restart local v8    # "pid2":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    iget v10, v8, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->id:I

    sub-int v11, v5, v1

    aget-object v11, v3, v11

    invoke-interface {p2, v10, v11}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;->consume(ILcom/sonymobile/china/photoeditor/crop/data/MediaItem;)V

    .line 251
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 247
    .end local v3    # "items":[Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    .end local v5    # "k":I
    .restart local v0    # "curId":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 256
    .end local v0    # "curId":I
    .end local v8    # "pid2":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    .restart local v3    # "items":[Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    .restart local v5    # "k":I
    :cond_2
    move v1, v4

    .line 257
    goto :goto_0

    .line 258
    .end local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "items":[Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v7    # "pid":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    .end local v9    # "startId":I
    :cond_3
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    .locals 10
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 97
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 98
    .local v0, "app":Lcom/sonymobile/china/photoeditor/crop/GalleryApp;
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    invoke-virtual {v6, p1}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->match(Lcom/sonymobile/china/photoeditor/crop/data/Path;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 124
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 102
    :pswitch_0
    new-instance v6, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-direct {v6, p1, v7}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V

    .line 122
    :goto_0
    return-object v6

    .line 104
    :pswitch_1
    new-instance v6, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    invoke-virtual {v7, v9}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->getIntVar(I)I

    move-result v7

    invoke-direct {v6, p1, v0, v7, v8}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;IZ)V

    goto :goto_0

    .line 106
    :pswitch_2
    new-instance v6, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    invoke-virtual {v7, v9}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->getIntVar(I)I

    move-result v7

    invoke-direct {v6, p1, v0, v7, v9}, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbum;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;IZ)V

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    invoke-virtual {v6, v9}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->getIntVar(I)I

    move-result v1

    .line 109
    .local v1, "bucketId":I
    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getDataManager()Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    move-result-object v3

    .line 110
    .local v3, "dataManager":Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    sget-object v6, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->PATH_IMAGE:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v6, v1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(I)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .line 112
    .local v4, "imageSet":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    sget-object v6, Lcom/sonymobile/china/photoeditor/crop/data/LocalAlbumSet;->PATH_VIDEO:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v6, v1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(I)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .line 114
    .local v5, "videoSet":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 115
    .local v2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    new-instance v6, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    aput-object v4, v7, v9

    aput-object v5, v7, v8

    invoke-direct {v6, p1, v2, v7}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/util/Comparator;[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;)V

    goto :goto_0

    .line 120
    .end local v1    # "bucketId":I
    .end local v2    # "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    .end local v3    # "dataManager":Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    .end local v4    # "imageSet":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .end local v5    # "videoSet":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    :pswitch_4
    new-instance v6, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->getIntVar(I)I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;I)V

    goto :goto_0

    .line 122
    :pswitch_5
    new-instance v6, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mMatcher:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->getIntVar(I)I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;I)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 173
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-object v2

    .line 175
    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 176
    .local v0, "id":J
    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(J)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v2

    goto :goto_0

    .line 179
    .end local v0    # "id":J
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 180
    .restart local v0    # "id":J
    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(J)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v2

    goto :goto_0

    .line 183
    .end local v0    # "id":J
    :pswitch_2
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v2

    goto :goto_0

    .line 186
    :pswitch_3
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 189
    :catch_0
    move-exception v3

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v1}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getDataManager()Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    .line 200
    .local v0, "object":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    instance-of v1, v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "/local/all"

    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v1

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;

    .end local v0    # "object":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getChild(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    .restart local v0    # "object":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;)V
    .locals 7
    .param p2, "consumer"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;",
            ">;",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v1, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v5, "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 212
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 213
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;

    .line 216
    .local v4, "pid":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    iget-object v6, v4, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->path:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v6}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getParent()Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v3

    .line 217
    .local v3, "parent":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    sget-object v6, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    if-ne v3, v6, :cond_1

    .line 218
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    sget-object v6, Lcom/sonymobile/china/photoeditor/crop/data/LocalVideo;->ITEM_PATH:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    if-ne v3, v6, :cond_0

    .line 220
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    .end local v3    # "parent":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .end local v4    # "pid":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v1, p2, v6}, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;Z)V

    .line 225
    const/4 v6, 0x0

    invoke-direct {p0, v5, p2, v6}, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;Z)V

    .line 226
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 290
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 284
    return-void
.end method
