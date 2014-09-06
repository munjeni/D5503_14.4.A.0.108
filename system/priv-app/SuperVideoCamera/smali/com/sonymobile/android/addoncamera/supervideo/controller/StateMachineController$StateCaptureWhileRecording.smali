.class Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;
.super Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCaptureWhileRecording"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 1

    .prologue
    .line 792
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 793
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_CAPTURE_WHILE_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 794
    return-void
.end method


# virtual methods
.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doHandleRecordingError()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1700(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 876
    return-void
.end method

.method public varargs handleOnRecordingProgressCheckPoint([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 837
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->updateRecordingProgress()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 838
    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 865
    aget-object v0, p1, v1

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .line 866
    .local v0, "takenStatus":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    monitor-enter p0

    .line 867
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->getRequestId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->setRequestId(I)V

    .line 868
    monitor-exit p0

    .line 869
    return-void

    .line 868
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateVideoRecording;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateVideoRecording;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 833
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 8
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 802
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SET_EARLY_THUMBNAIL:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v6

    aget-object v0, p1, v7

    check-cast v0, [B

    check-cast v0, [B

    aget-object v1, p1, v5

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->orientation:I

    invoke-static {v6, v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->createThumbnailViewFromJpeg(Landroid/app/Activity;[BI)Landroid/widget/RelativeLayout;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 807
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    new-array v3, v5, [Ljava/lang/Object;

    aget-object v0, p1, v5

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->getRequestId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 811
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_THUMBNAIL_STORE_PROGRESS_ANIMATION:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    new-array v3, v5, [Ljava/lang/Object;

    aget-object v0, p1, v5

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->getRequestId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 816
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    aget-object v1, p1, v7

    check-cast v1, [B

    check-cast v1, [B

    aget-object v2, p1, v5

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->requestStorePicture([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1800(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;[BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V

    .line 822
    return-void
.end method

.method public handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 826
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 827
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    aget-object v0, p1, v3

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->requestStoreVideo(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    invoke-static {v1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1300(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    .line 828
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doStopRecording()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 854
    return-void
.end method

.method public varargs handleReachHighTemperature([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doStopRecording()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 843
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 844
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 858
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doStopRecording()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 859
    return-void
.end method
