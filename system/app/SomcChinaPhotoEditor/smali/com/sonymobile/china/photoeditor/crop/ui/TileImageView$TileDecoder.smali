.class Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mNotifier:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)V
    .locals 1

    .prologue
    .line 704
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 706
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder$1;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->mNotifier:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;
    .param p2, "x1"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 717
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setMode(I)Z

    .line 718
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->mNotifier:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;

    invoke-interface {p1, v1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 719
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    monitor-enter v2

    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mDecodeQueue:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->access$700(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->pop()Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    move-result-object v0

    .line 723
    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 725
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 733
    if-eqz v0, :cond_0

    .line 735
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->decodeTile(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->queueForUpload(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 738
    .end local v0    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 726
    .restart local v0    # "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
