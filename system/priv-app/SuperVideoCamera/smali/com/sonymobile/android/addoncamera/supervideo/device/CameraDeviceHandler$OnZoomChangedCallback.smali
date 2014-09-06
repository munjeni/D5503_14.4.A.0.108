.class Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnZoomChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "zoomValue"    # I
    .param p2, "stopped"    # Z
    .param p3, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->onZoomChange(IZLandroid/hardware/Camera;)V

    .line 806
    :cond_0
    return-void
.end method
