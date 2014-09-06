.class Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$2300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->onShutterDone(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    .line 1487
    :cond_0
    return-void
.end method
