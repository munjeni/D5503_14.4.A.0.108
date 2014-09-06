.class public Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;
.super Ljava/lang/Object;
.source "ByteBufferRing.java"


# instance fields
.field private mBufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBufferIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "numberOfBuffer"    # I
    .param p2, "lengthOfOneBuffer"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    .line 20
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mCurrentBufferIndex:I

    .line 25
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 27
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private getNextIndex()I
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mCurrentBufferIndex:I

    if-gt v0, v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mCurrentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCurrent()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    iget v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mCurrentBufferIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNext()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->getNextIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increment()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mCurrentBufferIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 36
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 38
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    return-void
.end method
