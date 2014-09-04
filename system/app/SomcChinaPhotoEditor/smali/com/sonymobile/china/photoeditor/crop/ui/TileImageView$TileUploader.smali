.class Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)V
    .locals 2

    .prologue
    .line 518
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 519
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;
    .param p2, "x1"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
    .locals 6
    .param p1, "root"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;
    .param p2, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 523
    const/4 v0, 0x1

    .line 526
    .local v0, "quota":I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    monitor-enter v5

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mUploadQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->access$300(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->pop()Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    move-result-object v1

    .line 528
    .local v1, "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    if-eqz v1, :cond_1

    if-gtz v0, :cond_2

    .line 537
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 538
    if-eqz v1, :cond_5

    :goto_2
    return v3

    .line 528
    .end local v1    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 531
    .restart local v1    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :cond_2
    invoke-virtual {v1, p2}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->isContentValid(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 532
    iget v2, v1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_3
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 533
    invoke-virtual {v1, p2}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->updateContent(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 534
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 532
    goto :goto_3

    :cond_4
    move v2, v4

    .line 537
    goto :goto_1

    :cond_5
    move v3, v4

    .line 538
    goto :goto_2
.end method
