.class Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder$1;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder$1;->this$1:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder$1;->this$1:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;

    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    monitor-enter v1

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder$1;->this$1:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileDecoder;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 711
    monitor-exit v1

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
