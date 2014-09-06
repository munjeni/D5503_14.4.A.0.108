.class Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRecordingErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;

    .prologue
    .line 1286
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_ERROR:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1292
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseVideo()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$2200(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V

    .line 1293
    return-void
.end method
