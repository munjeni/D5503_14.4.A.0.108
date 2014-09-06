.class Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;
.super Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateResume"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 1

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 369
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 370
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->onResume()V

    .line 371
    return-void
.end method

.method private requestToStartLiveViewFinder()V
    .locals 4

    .prologue
    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->startLiveViewFinderOnResume(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 407
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method private startLiveViewFinderOnResume(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "targetSurface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 412
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->startLiveViewFinder(Landroid/view/SurfaceHolder;)V

    .line 415
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 416
    .local v0, "previewRect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 417
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Preview is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Preview is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs handleOnEvfPreparationFailed([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mTargetCameraId:I
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->requestStartCameraOpen(Landroid/content/Context;I)V

    .line 377
    return-void
.end method

.method public varargs handleOnEvfPreparationSucceeded([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 384
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/view/SurfaceHolder;

    # setter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$502(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 387
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->requestToStartLiveViewFinder()V

    .line 388
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method public varargs handleReachHighTemperature([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 425
    return-void
.end method

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->showCameraNotAvailableError()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    .line 395
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 396
    return-void
.end method
