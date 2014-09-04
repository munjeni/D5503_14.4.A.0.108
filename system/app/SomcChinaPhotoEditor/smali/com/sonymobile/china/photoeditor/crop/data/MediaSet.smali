.class public abstract Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
.super Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;,
        Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;,
        Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;
    }
.end annotation


# static fields
.field private static final FUTURE_STUB:Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final MEDIAITEM_BATCH_FETCH_COUNT:I = 0x1f4

.field public static final SYNC_RESULT_CANCELLED:I = 0x1

.field public static final SYNC_RESULT_ERROR:I = 0x2

.field public static final SYNC_RESULT_SUCCESS:I


# instance fields
.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$1;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$1;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->FUTURE_STUB:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V
    .locals 1
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "version"    # J

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 152
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    .line 69
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method protected enumerateMediaItems(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;I)I
    .locals 9
    .param p1, "consumer"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;
    .param p2, "startIndex"    # I

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getMediaItemCount()I

    move-result v6

    .line 203
    .local v6, "total":I
    const/4 v5, 0x0

    .line 204
    .local v5, "start":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 205
    const/16 v7, 0x1f4

    sub-int v8, v6, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 206
    .local v0, "count":I
    invoke-virtual {p0, v5, v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 207
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "n":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 208
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .line 209
    .local v2, "item":Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    add-int v7, p2, v5

    add-int/2addr v7, v1

    invoke-interface {p1, v7, v2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;->consume(ILcom/sonymobile/china/photoeditor/crop/data/MediaItem;)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v2    # "item":Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    :cond_0
    add-int/2addr v5, v0

    .line 212
    goto :goto_0

    .line 213
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    .end local v4    # "n":I
    :cond_1
    return v6
.end method

.method public enumerateMediaItems(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;)V
    .locals 1
    .param p1, "consumer"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->enumerateMediaItems(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;I)I

    .line 188
    return-void
.end method

.method protected enumerateTotalMediaItems(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;I)I
    .locals 5
    .param p1, "consumer"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;
    .param p2, "startIndex"    # I

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "start":I
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->enumerateMediaItems(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 221
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .line 222
    .local v1, "m":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 223
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getSubMediaSet(I)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    move-result-object v3

    add-int v4, p2, v2

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->enumerateTotalMediaItems(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return v2
.end method

.method public enumerateTotalMediaItems(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;)V
    .locals 1
    .param p1, "consumer"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->enumerateTotalMediaItems(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$ItemConsumer;I)I

    .line 192
    return-void
.end method

.method public getCoverMediaItem()Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 87
    const/4 v4, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 88
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 89
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .line 95
    :goto_0
    return-object v4

    .line 90
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .local v3, "n":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 91
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getSubMediaSet(I)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getCoverMediaItem()Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    move-result-object v0

    .line 92
    .local v0, "cover":Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 93
    goto :goto_0

    .line 90
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "cover":Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getIndexOf(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/util/ArrayList;)I
    .locals 3
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/china/photoeditor/crop/data/Path;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 144
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    iget-object v2, v2, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mPath:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    if-ne v2, p1, :cond_0

    .line 147
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 143
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndexOfItem(Lcom/sonymobile/china/photoeditor/crop/data/Path;I)I
    .locals 7
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "hint"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v3, 0x1f4

    .line 122
    add-int/lit16 v6, p2, -0xfa

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 123
    .local v2, "start":I
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 124
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getIndexOf(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 125
    .local v0, "index":I
    if-eq v0, v5, :cond_0

    .line 126
    add-int v3, v2, v0

    .line 136
    :goto_0
    return v3

    .line 129
    :cond_0
    if-nez v2, :cond_1

    move v2, v3

    .line 130
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 132
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getIndexOf(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 133
    if-eq v0, v5, :cond_2

    .line 134
    add-int v3, v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 129
    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v3, :cond_3

    move v3, v5

    .line 136
    goto :goto_0

    .line 137
    :cond_3
    add-int/lit16 v2, v2, 0x1f4

    .line 138
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getSubMediaSet(I)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 103
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getMediaItemCount()I

    move-result v2

    .line 112
    .local v2, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getSubMediaSet(I)Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return v2
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentChanged()V
    .locals 3

    .prologue
    .line 173
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;

    .line 174
    .local v1, "listener":Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;
    invoke-interface {v1}, Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;->onContentDirty()V

    goto :goto_0

    .line 176
    .end local v1    # "listener":Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;
    :cond_0
    return-void
.end method

.method public abstract reload()J
.end method

.method public removeContentListener(Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public requestSync(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;)Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;",
            ")",
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;->onSyncDone(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;I)V

    .line 241
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->FUTURE_STUB:Lcom/sonymobile/china/photoeditor/crop/util/Future;

    return-object v0
.end method

.method protected requestSyncOnMultipleSets([Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;)Lcom/sonymobile/china/photoeditor/crop/util/Future;
    .locals 1
    .param p1, "sets"    # [Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .param p2, "listener"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;",
            ")",
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$MultiSetSyncFuture;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$SyncListener;)V

    return-object v0
.end method
