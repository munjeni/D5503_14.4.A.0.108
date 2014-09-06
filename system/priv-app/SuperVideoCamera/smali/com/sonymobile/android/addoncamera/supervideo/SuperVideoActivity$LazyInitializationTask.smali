.class Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;
.super Ljava/lang/Object;
.source "SuperVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LazyInitializationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private retry()V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mPostEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mPostEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    move-result-object v0

    if-nez v0, :cond_1

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->retry()V

    .line 354
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->canCurrentStateHandleAsynchronizedTask()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->prepareAdditionalSettings()V

    .line 335
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->prepareAdditionalFunctions()V

    .line 338
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getGpsAcquiredListener()Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->checkAndShowStorageExplanatoryDialog()V

    goto :goto_0

    .line 352
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;->retry()V

    goto :goto_0
.end method
