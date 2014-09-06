.class Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;
.super Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStopRecording"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 1

    .prologue
    .line 882
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 883
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_STOP_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->mCaptureState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 884
    return-void
.end method


# virtual methods
.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doHandleRecordingError()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1700(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 944
    return-void
.end method

.method public varargs handleOnStoreCompleted([Ljava/lang/Object;)V
    .locals 10
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 903
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
    invoke-static {v6}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoAutoReview:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {v6}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    .line 904
    .local v1, "autoReview":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;
    sget-object v6, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    if-eq v1, v6, :cond_3

    .line 906
    :try_start_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Landroid/net/Uri;

    move-object v0, v6

    check-cast v0, Landroid/net/Uri;

    move-object v5, v0

    .line 907
    .local v5, "uri":Landroid/net/Uri;
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "objects":[Ljava/lang/Object;
    const/4 v6, 0x1

    aget-object v6, p1, v6

    check-cast v6, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    move-object v0, v6

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    move-object v4, v0

    .line 909
    .local v4, "takenStatus":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    const/4 v3, 0x0

    .line 910
    .local v3, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 911
    iget-object v3, v4, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mimeType:Ljava/lang/String;

    .line 914
    :cond_0
    const-string v6, "video/mp4"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 915
    sget-object v6, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->EDIT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    if-ne v1, v6, :cond_2

    .line 916
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->launchEditor(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    invoke-static {v6, v5, v4}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1900(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    .line 929
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "takenStatus":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 918
    .restart local v3    # "mimeType":Ljava/lang/String;
    .restart local v4    # "takenStatus":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v6}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
    invoke-static {v7}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$1100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v7

    iget-object v7, v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v6, v5, v4, v7}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 922
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "takenStatus":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 923
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$900()Ljava/lang/String;

    move-result-object v6

    const-string v7, "openReviewWindow: failed."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 924
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;

    iget-object v8, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v7, v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v8, v9, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v6, v7, v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 927
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .restart local p1    # "objects":[Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v7, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;

    iget-object v8, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v7, v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v8, v9, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v6, v7, v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 893
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 894
    return-void
.end method

.method public varargs handleReachHighTemperature([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 889
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 899
    return-void
.end method

.method public varargs handleUIComponentHidden([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 935
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_CLOSE_DIALOGS:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 937
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 938
    return-void
.end method
