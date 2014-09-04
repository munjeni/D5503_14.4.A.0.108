.class public Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/DataManager$1;,
        Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;,
        Lcom/sonymobile/china/photoeditor/crop/data/DataManager$DateTakenComparator;
    }
.end annotation


# static fields
.field public static final INCLUDE_ALL:I = 0x3

.field public static final INCLUDE_IMAGE:I = 0x1

.field public static final INCLUDE_LOCAL_ALL_ONLY:I = 0x7

.field public static final INCLUDE_LOCAL_IMAGE_ONLY:I = 0x5

.field public static final INCLUDE_LOCAL_ONLY:I = 0x4

.field public static final INCLUDE_LOCAL_VIDEO_ONLY:I = 0x6

.field public static final INCLUDE_VIDEO:I = 0x2

.field public static final LOCK:Ljava/lang/Object;

.field private static final TOP_IMAGE_SET_PATH:Ljava/lang/String; = "/combo/{/mtp,/local/image,/picasa/image}"

.field private static final TOP_LOCAL_IMAGE_SET_PATH:Ljava/lang/String; = "/local/image"

.field private static final TOP_LOCAL_SET_PATH:Ljava/lang/String; = "/local/all"

.field private static final TOP_LOCAL_VIDEO_SET_PATH:Ljava/lang/String; = "/local/video"

.field private static final TOP_SET_PATH:Ljava/lang/String; = "/combo/{/mtp,/local/all,/picasa/all}"

.field private static final TOP_VIDEO_SET_PATH:Ljava/lang/String; = "/combo/{/local/video,/picasa/video}"

.field public static final sDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveCount:I

.field private mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->LOCK:Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$DateTakenComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$DateTakenComparator;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/DataManager$1;)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V
    .locals 2
    .param p1, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mActiveCount:I

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    .line 112
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method


# virtual methods
.method addSource(Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;)V
    .locals 2
    .param p1, "source"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public cache(Lcom/sonymobile/china/photoeditor/crop/data/Path;I)V
    .locals 1
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "flag"    # I

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->cache(I)V

    .line 261
    return-void
.end method

.method public delete(Lcom/sonymobile/china/photoeditor/crop/data/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->delete()V

    .line 245
    return-void
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 264
    if-nez p1, :cond_0

    move-object v1, v3

    .line 271
    :goto_0
    return-object v1

    .line 266
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;

    .line 267
    .local v2, "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->findPathByUri(Landroid/net/Uri;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v1

    .line 268
    .local v1, "path":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1    # "path":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .end local v2    # "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    :cond_2
    move-object v1, v3

    .line 271
    goto :goto_0
.end method

.method public getContentUri(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Landroid/net/Uri;
    .locals 1
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;

    .line 276
    .local v0, "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->getDefaultSetOf(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    .locals 5
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getObject()Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    .line 167
    .local v0, "obj":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    if-eqz v0, :cond_0

    .line 184
    .end local v0    # "obj":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    :goto_0
    return-object v0

    .line 170
    .restart local v0    # "obj":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;

    .line 171
    .local v2, "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    if-nez v2, :cond_1

    .line 175
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->createMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v1

    .line 179
    .local v1, "object":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    if-nez v1, :cond_2

    :cond_2
    move-object v0, v1

    .line 184
    goto :goto_0
.end method

.method public getMediaObject(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->fromString(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSet(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .locals 1
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    return-object v0
.end method

.method public getMediaSet(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    return-object v0
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .locals 5
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "seq":[Ljava/lang/String;
    array-length v1, v2

    .line 202
    .local v1, "n":I
    new-array v3, v1, [Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .line 203
    .local v3, "sets":[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 204
    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-object v3
.end method

.method public getMediaType(Lcom/sonymobile/china/photoeditor/crop/data/Path;)I
    .locals 1
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->getMediaType()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations(Lcom/sonymobile/china/photoeditor/crop/data/Path;)I
    .locals 1
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->getSupportedOperations()I

    move-result v0

    return v0
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "typeBits"    # I

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 148
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 136
    :pswitch_1
    const-string v0, "/combo/{/mtp,/local/image,/picasa/image}"

    .line 146
    :goto_0
    return-object v0

    .line 138
    :pswitch_2
    const-string v0, "/combo/{/local/video,/picasa/video}"

    goto :goto_0

    .line 140
    :pswitch_3
    const-string v0, "/combo/{/mtp,/local/all,/picasa/all}"

    goto :goto_0

    .line 142
    :pswitch_4
    const-string v0, "/local/image"

    goto :goto_0

    .line 144
    :pswitch_5
    const-string v0, "/local/video"

    goto :goto_0

    .line 146
    :pswitch_6
    const-string v0, "/local/all"

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTotalTargetCacheSize()J
    .locals 6

    .prologue
    .line 291
    const-wide/16 v2, 0x0

    .line 292
    .local v2, "sum":J
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;

    .line 293
    .local v1, "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->getTotalTargetCacheSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 295
    .end local v1    # "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    :cond_0
    return-wide v2
.end method

.method public getTotalUsedCacheSize()J
    .locals 6

    .prologue
    .line 281
    const-wide/16 v2, 0x0

    .line 282
    .local v2, "sum":J
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;

    .line 283
    .local v1, "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->getTotalUsedCacheSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 285
    .end local v1    # "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    :cond_0
    return-wide v2
.end method

.method public declared-synchronized initializeSourceMap()V
    .locals 4

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 130
    :cond_0
    monitor-exit p0

    return-void

    .line 122
    :cond_1
    :try_start_1
    new-instance v2, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-direct {v2, v3}, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->addSource(Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;)V

    .line 123
    new-instance v2, Lcom/sonymobile/china/photoeditor/crop/data/UriSource;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-direct {v2, v3}, Lcom/sonymobile/china/photoeditor/crop/data/UriSource;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->addSource(Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;)V

    .line 125
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mActiveCount:I

    if-lez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;

    .line 127
    .local v1, "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;I)V
    .locals 11
    .param p2, "consumer"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;
    .param p3, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/Path;",
            ">;",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/Path;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 219
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 220
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 221
    .local v6, "path":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    invoke-virtual {v6}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "prefix":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 223
    .local v1, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;"
    if-nez v1, :cond_0

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .restart local v1    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;"
    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    new-instance v9, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;

    add-int v10, v2, p3

    invoke-direct {v9, v6, v10}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;"
    .end local v6    # "path":Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 233
    .restart local v7    # "prefix":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;

    .line 234
    .local v8, "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, p2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    .line 236
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;>;"
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v8    # "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 320
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mActiveCount:I

    if-nez v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;

    .line 322
    .local v1, "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->pause()V

    goto :goto_0

    .line 325
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    :cond_0
    return-void
.end method

.method public peekMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    .locals 1
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getObject()Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public peekMediaSet(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .locals 1
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getObject()Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    return-object v0
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifier"    # Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "broker":Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 301
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;

    move-object v1, v0

    .line 302
    if-nez v1, :cond_0

    .line 303
    new-instance v2, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local v1    # "broker":Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;
    .local v2, "broker":Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mApplication:Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    invoke-interface {v3}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 307
    .end local v2    # "broker":Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;
    .restart local v1    # "broker":Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    invoke-virtual {v1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;->registerNotifier(Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;)V

    .line 309
    return-void

    .line 307
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1    # "broker":Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;
    .restart local v2    # "broker":Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "broker":Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;
    .restart local v1    # "broker":Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;
    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 312
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mActiveCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 313
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;

    .line 314
    .local v1, "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->resume()V

    goto :goto_0

    .line 317
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "source":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
    :cond_0
    return-void
.end method

.method public rotate(Lcom/sonymobile/china/photoeditor/crop/data/Path;I)V
    .locals 1
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "degrees"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->getMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->rotate(I)V

    .line 249
    return-void
.end method
