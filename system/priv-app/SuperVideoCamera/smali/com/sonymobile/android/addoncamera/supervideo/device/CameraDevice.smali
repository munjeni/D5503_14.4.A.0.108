.class public interface abstract Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;


# static fields
.field public static final CAMERA_DEVICE_OPEN_TIMEOUT:I = 0x1388

.field public static final INTERVAL_OPEN_CAMERA:I = 0x1f4

.field public static final RETRY_OPEN_CAMERA:I = 0x1e

.field public static final SAVING_TASK_MAX_QUEUE_NUM:I = 0x6


# virtual methods
.method public abstract autoFocus()V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract getCamcordRect()Landroid/graphics/Rect;
.end method

.method public abstract getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;
.end method

.method public abstract getMaxZoom()I
.end method

.method public abstract getPictureRect()Landroid/graphics/Rect;
.end method

.method public abstract getPreviewRect()Landroid/graphics/Rect;
.end method

.method public abstract isCameraDisabled()Z
.end method

.method public abstract isShutterSoundEnabled()Z
.end method

.method public abstract prepareAdditionalFunctions()V
.end method

.method public abstract prepareAdditionalSettings()V
.end method

.method public abstract preparePreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract releaseCameraInstance()V
.end method

.method public abstract requestNextPreviewCallbackWithBuffer([B)V
.end method

.method public abstract requestStartCameraOpen(Landroid/content/Context;I)V
.end method

.method public abstract setShutterSound()V
.end method

.method public abstract setStateMachine(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;)V
.end method

.method public abstract startCameraOpen(Landroid/content/Context;I)V
.end method

.method public abstract startExtensionFeatures()V
.end method

.method public abstract startLiveViewFinder(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract startRecording(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
.end method

.method public abstract startSmoothZoom(I)V
.end method

.method public abstract stopExtensionFeatures()V
.end method

.method public abstract stopLiveViewFinder()V
.end method

.method public abstract stopPreviewCallback()V
.end method

.method public abstract stopRecording()V
.end method

.method public abstract stopSmoothZoom()V
.end method

.method public abstract takePicture(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
.end method

.method public abstract trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z
.end method

.method public abstract waitForCameraInitialization()Z
.end method
