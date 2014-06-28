.class public Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;
.super Ljava/util/AbstractMap;
.source "SoftHashMapWithExtra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$1;,
        Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final mHardRefs:[Ljava/lang/Object;

.field private mHardRefsPos:I

.field private final mRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mSoftRefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra",
            "<TK;TV;TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "nrHardRefs"    # I

    .prologue
    .line 61
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mSoftRefsMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 62
    if-lez p1, :cond_0

    .line 63
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefs:[Ljava/lang/Object;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefs:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private addHardRef(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefs:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefs:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefs:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 102
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 89
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefs:[Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefsPos:I

    aput-object p1, v1, v2

    .line 100
    iget v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefsPos:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefs:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefsPos:I

    goto :goto_1
.end method

.method private clearCollectedRefs()V
    .locals 3

    .prologue
    .line 113
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;

    .local v0, "sv":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra<TK;TV;TE;>;"
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mSoftRefsMap:Ljava/util/HashMap;

    # getter for: Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;->mKey:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;->access$000(Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 71
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefs:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefs:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefs:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mHardRefsPos:I

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clearCollectedRefs()V

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mSoftRefsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 80
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    const/4 v1, 0x0

    .line 134
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mSoftRefsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;

    .line 136
    .local v0, "softRef":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra<TK;TV;TE;>;"
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 142
    if-nez v1, :cond_1

    .line 145
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mSoftRefsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    return-object v1

    .line 148
    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->addHardRef(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getExtra(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mSoftRefsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;

    .line 157
    .local v0, "softRef":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra<TK;TV;TE;>;"
    if-eqz v0, :cond_0

    .line 158
    # getter for: Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;->mExtra:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;->access$100(Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->putWithExtra(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putWithExtra(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TE;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "extra":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    .line 168
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clearCollectedRefs()V

    .line 171
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->addHardRef(Ljava/lang/Object;)V

    .line 173
    iget-object v7, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mSoftRefsMap:Ljava/util/HashMap;

    new-instance v0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;

    iget-object v4, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$1;)V

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;

    .line 176
    .local v6, "oldValue":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra<TK;TV;TE;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    :cond_0
    return-object v5
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clearCollectedRefs()V

    .line 183
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mSoftRefsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;

    .line 185
    .local v0, "oldValue":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra$SoftReferenceWithKeyExtra<TK;TV;TE;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;, "Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra<TK;TV;TE;>;"
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clearCollectedRefs()V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->mSoftRefsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
