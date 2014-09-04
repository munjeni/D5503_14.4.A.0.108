.class public abstract Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    }
.end annotation


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->mPrefix:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract createMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTargetCacheSize()J
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTotalUsedCacheSize()J
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;)V
    .locals 5
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
    .line 81
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 82
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;

    .line 84
    .local v3, "pid":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    iget-object v4, v3, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->path:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getObject()Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;

    move-result-object v2

    .line 85
    .local v2, "obj":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    if-nez v2, :cond_0

    .line 87
    :try_start_0
    iget-object v4, v3, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->path:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {p0, v4}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;->createMediaObject(Lcom/sonymobile/china/photoeditor/crop/data/Path;)Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 94
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 95
    iget v4, v3, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->id:I

    check-cast v2, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .end local v2    # "obj":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    invoke-interface {p2, v4, v2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;->consume(ILcom/sonymobile/china/photoeditor/crop/data/MediaItem;)V

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v3    # "pid":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    :cond_2
    return-void

    .line 88
    .restart local v2    # "obj":Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
    .restart local v3    # "pid":Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
