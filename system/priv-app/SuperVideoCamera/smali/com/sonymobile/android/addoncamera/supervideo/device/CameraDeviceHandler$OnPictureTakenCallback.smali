.class Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPictureTakenCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1496
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$2400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v0

    .line 1497
    .local v0, "curCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 1500
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1516
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$2300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->onTakePictureDone([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    .line 1521
    :cond_1
    new-instance v2, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/DeviceStatus;

    sget-object v4, Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/status/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 1526
    :cond_2
    :goto_0
    return-void

    .line 1501
    :catch_0
    move-exception v1

    .line 1504
    .local v1, "exception":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1505
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;->ERROR_ON_START_PREVIEW:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

    invoke-interface {v2, v3, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->onDeviceError(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;Ljava/lang/Exception;)V

    goto :goto_0
.end method
