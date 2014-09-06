.class public interface abstract Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;
    }
.end annotation


# virtual methods
.method public abstract addOnStateChangedListener(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;)V
.end method

.method public abstract canApplicationBeFinished()Z
.end method

.method public abstract canCurrentStateHandleAsynchronizedTask()Z
.end method

.method public abstract isDialogOpened()Z
.end method

.method public abstract isMenuAvailable()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract onAutoFocusDone(Z)V
.end method

.method public abstract onDeviceError(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;Ljava/lang/Exception;)V
.end method

.method public abstract onDeviceOpened(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract onReachHighTemperature()V
.end method

.method public abstract onShutterDone(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
.end method

.method public abstract onTakePictureDone([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
.end method

.method public abstract onVideoRecordingDone(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
.end method

.method public abstract onZoomChange(IZLandroid/hardware/Camera;)V
.end method

.method public abstract removeOnStateChangedListener(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;)V
.end method

.method public varargs abstract sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
.end method

.method public abstract setCameraDevice(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;)V
.end method

.method public abstract setViewFinder(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;)V
.end method
