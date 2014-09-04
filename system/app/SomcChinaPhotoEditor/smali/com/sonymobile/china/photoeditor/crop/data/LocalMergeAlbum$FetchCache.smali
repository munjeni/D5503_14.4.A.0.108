.class Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "LocalMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private mBaseSet:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

.field private mCacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartPos:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;)V
    .locals 0
    .param p1, "baseSet"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .line 199
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "needLoading":Z
    const/4 v0, 0x0

    .line 208
    .local v0, "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    add-int/lit8 v2, v2, 0x40

    if-lt p1, v2, :cond_4

    .line 209
    :cond_0
    const/4 v1, 0x1

    .line 217
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 218
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 219
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 220
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    .line 223
    :cond_2
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_5

    .line 224
    :cond_3
    const/4 v2, 0x0

    .line 227
    :goto_1
    return-object v2

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 212
    .restart local v0    # "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    if-nez v0, :cond_1

    .line 213
    const/4 v1, 0x1

    goto :goto_0

    .line 227
    :cond_5
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 203
    return-void
.end method
