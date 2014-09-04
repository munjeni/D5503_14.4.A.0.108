.class public Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;
.super Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
.source "LocalMergeAlbum.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x40


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private final mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

.field private mSupportedOperation:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;Ljava/util/Comparator;[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;)V
    .locals 6
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p3, "sources"    # [Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/china/photoeditor/crop/data/Path;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;",
            ">;[",
            "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    const-wide/16 v4, -0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 50
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 54
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    .line 55
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .line 56
    array-length v4, p3

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 58
    .local v3, "set":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->addContentListener(Lcom/sonymobile/china/photoeditor/crop/data/ContentListener;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "set":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    :cond_0
    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 60
    .restart local v0    # "arr$":[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_1
    return-void
.end method

.method private invalidateCache()V
    .locals 5

    .prologue
    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mFetcher:[Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->invalidate()V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 80
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [I

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method private updateData()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 64
    .local v2, "supported":I
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mFetcher:[Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    array-length v1, v4

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 66
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mFetcher:[Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;

    new-instance v5, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    aget-object v6, v6, v0

    invoke-direct {v5, v6}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;)V

    aput-object v5, v4, v0

    .line 67
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getSupportedOperations()I

    move-result v4

    and-int/2addr v2, v4

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "supported":I
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 69
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "supported":I
    :cond_1
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 70
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->clear()V

    .line 71
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    array-length v6, v6

    new-array v6, v6, [I

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_2

    const-string v3, ""

    :goto_2
    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 73
    return-void

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 179
    .local v3, "set":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->delete()V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v3    # "set":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    :cond_0
    return-void
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
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
    const/4 v12, -0x1

    .line 97
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v10, p1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 98
    .local v0, "head":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 99
    .local v4, "markPos":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    invoke-virtual {v9}, [I->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 100
    .local v8, "subPos":[I
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    array-length v9, v9

    new-array v7, v9, [Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .line 102
    .local v7, "slot":[Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    array-length v6, v9

    .line 105
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 106
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mFetcher:[Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;

    aget-object v9, v9, v1

    aget v10, v8, v1

    invoke-virtual {v9, v10}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    move-result-object v9

    aput-object v9, v7, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;>;"
    move v1, v4

    :goto_1
    add-int v9, p1, p2

    if-ge v1, v9, :cond_4

    .line 112
    const/4 v3, -0x1

    .line 113
    .local v3, "k":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 114
    aget-object v9, v7, v2

    if-eqz v9, :cond_2

    .line 115
    if-eq v3, v12, :cond_1

    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    aget-object v10, v7, v2

    aget-object v11, v7, v3

    invoke-interface {v9, v10, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_2

    .line 116
    :cond_1
    move v3, v2

    .line 113
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 122
    :cond_3
    if-ne v3, v12, :cond_5

    .line 139
    .end local v2    # "j":I
    .end local v3    # "k":I
    :cond_4
    return-object v5

    .line 126
    .restart local v2    # "j":I
    .restart local v3    # "k":I
    :cond_5
    aget v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 127
    if-lt v1, p1, :cond_6

    .line 128
    aget-object v9, v7, v3

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_6
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mFetcher:[Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;

    aget-object v9, v9, v3

    aget v10, v8, v3

    invoke-virtual {v9, v10}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    move-result-object v9

    aput-object v9, v7, v3

    .line 134
    add-int/lit8 v9, v1, 0x1

    rem-int/lit8 v9, v9, 0x40

    if-nez v9, :cond_7

    .line 135
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v10, v1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8}, [I->clone()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSupportedOperation:I

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 6

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "count":I
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 146
    .local v4, "set":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v4    # "set":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    :cond_0
    return v1
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->notifyContentChanged()V

    .line 169
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    array-length v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 155
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->reload()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_1
    if-eqz v0, :cond_2

    .line 159
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->nextVersionNumber()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mDataVersion:J

    .line 160
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->updateData()V

    .line 161
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->invalidateCache()V

    .line 163
    :cond_2
    iget-wide v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mDataVersion:J

    return-wide v3
.end method

.method public rotate(I)V
    .locals 4
    .param p1, "degrees"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMergeAlbum;->mSources:[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .local v0, "arr$":[Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 186
    .local v3, "set":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->rotate(I)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v3    # "set":Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    :cond_0
    return-void
.end method
