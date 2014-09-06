.class Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$2;
.super Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognitionCallback$Stub;
.source "FaceIdentificationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$2;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    invoke-direct {p0}, Lcom/sonymobile/photoanalyzer/service/IRemoteFaceRecognitionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecognitionComplete(Lcom/sonymobile/photoanalyzer/service/FaceRecognitionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonymobile/photoanalyzer/service/FaceRecognitionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 620
    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IRemoteFaceRecognitionCallback.onRecognitionComplete():[IN] [RESUT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/photoanalyzer/service/FaceRecognitionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$2;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    # getter for: Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->mServiceSyncThread:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;->access$1200(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$CallbackTask;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$2;->this$0:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;

    invoke-direct {v1, v2, p1}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl$CallbackTask;-><init>(Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationImpl;Lcom/sonymobile/photoanalyzer/service/FaceRecognitionResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 624
    return-void
.end method
