.class Lcom/sonymobile/cameracommon/videowriter/VideoWriter$1;
.super Ljava/lang/Object;
.source "VideoWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->sendOnStartedEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$1;->this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$1;->this$0:Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mListener:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoWriterListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->access$000(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoWriterListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoWriterListener;->onStarted(Landroid/view/Surface;)V

    .line 147
    return-void
.end method