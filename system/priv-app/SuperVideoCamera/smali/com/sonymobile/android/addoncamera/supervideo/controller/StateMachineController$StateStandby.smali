.class Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;
.super Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStandby"
.end annotation


# instance fields
.field private mIsCaptureButtonVisible:Z

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 1

    .prologue
    .line 450
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->mIsCaptureButtonVisible:Z

    .line 451
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 454
    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->disableAutoOffTimer()V

    .line 455
    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->enableAutoOffTimer()V

    .line 456
    return-void
.end method

.method private startRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 541
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Strage error. "

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->pauseAudioPlayback()V

    .line 550
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateVideoRecording;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateVideoRecording;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-array v1, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doStartRecording([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public entry()V
    .locals 4

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 462
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 468
    :cond_0
    return-void
.end method

.method public varargs handleCamcordButtonRelease([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->startRecording()V

    .line 527
    return-void
.end method

.method public varargs handleKeyCaptureUp([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->startRecording()V

    .line 532
    return-void
.end method

.method public varargs handleKeyZoomInDown([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 495
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doZoomIn()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$700(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 497
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateZooming;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateZooming;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 501
    :cond_0
    return-void
.end method

.method public varargs handleKeyZoomOutDown([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 506
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doZoomOut()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 508
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateZooming;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateZooming;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 512
    :cond_0
    return-void
.end method

.method public varargs handleOnHeadUpDisplayInitialized([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->mIsCaptureButtonVisible:Z

    if-eqz v0, :cond_0

    .line 482
    :cond_0
    invoke-super {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnHeadUpDisplayInitialized([Ljava/lang/Object;)V

    .line 483
    return-void
.end method

.method public varargs handleParameterChanged([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->apply(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;Z)V

    .line 572
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 562
    return-void
.end method

.method public varargs handlePrepareTouchZoom([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 517
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateZooming;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateZooming;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 522
    :cond_0
    return-void
.end method

.method public varargs handleReachHighTemperature([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 557
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 567
    return-void
.end method

.method public varargs handleTouchAreaRelease([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->startRecording()V

    .line 537
    return-void
.end method

.method public varargs handleUIComponentDisplayed([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 489
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 490
    return-void
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x1

    return v0
.end method
