.class Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenDeviceTask"
.end annotation


# instance fields
.field private mIsExpired:Z

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V
    .locals 1

    .prologue
    .line 325
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->mIsExpired:Z

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->mIsExpired:Z

    .line 327
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->isExpired()Z

    move-result v0

    return v0
.end method

.method private isExpired()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->mIsExpired:Z

    return v0
.end method

.method private openCamera()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 449
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_0

    .line 451
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)I

    move-result v4

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    # setter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3, v4}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$502(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 452
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v5}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameraextension/CameraExtension;->open(Landroid/hardware/Camera;I)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v4

    # setter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    invoke-static {v3, v4}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$1602(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonyericsson/cameraextension/CameraExtension;)Lcom/sonyericsson/cameraextension/CameraExtension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$1600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v3

    if-nez v3, :cond_2

    .line 471
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # setter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I
    invoke-static {v3, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$102(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;I)I

    .line 482
    :goto_1
    return v2

    .line 456
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/DeviceStatus;

    sget-object v4, Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/status/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/cameracommon/status/CameraId;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/status/CameraId;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 482
    const/4 v2, 0x1

    goto :goto_1

    .line 461
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 336
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # setter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I
    invoke-static {v1, v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$102(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;I)I

    .line 339
    new-instance v0, Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "param":Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;->saveExcept(I)Z

    .line 345
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->openCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # setter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$402(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 354
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;->save(ILandroid/hardware/Camera$Parameters;)Z

    .line 357
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->onDeviceOpened(Landroid/hardware/Camera$Parameters;)V

    .line 360
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->initPreviewSize(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$700(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V

    .line 363
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->initPictureSize(Landroid/hardware/Camera$Parameters;)V

    .line 366
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->setRecordSound(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$800(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V

    .line 369
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 372
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->initMetering(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$900(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V

    .line 375
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->initHdrVideo(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$1000(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V

    .line 378
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->initFocus(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$1100(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V

    .line 386
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f060000

    const v3, 0x7f060001

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->validate(Landroid/content/Context;IILandroid/hardware/Camera$Parameters;)V

    .line 391
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 402
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "key-sony-ext-recordingsound"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 408
    iput-boolean v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->mIsExpired:Z

    .line 410
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    const/4 v2, 0x2

    # setter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$102(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;I)I

    .line 421
    new-instance v1, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/DeviceStatus;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/cameracommon/status/VideoResolution;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$1300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/cameracommon/status/VideoRecordingFps;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$1200(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/cameracommon/status/VideoStabilizer;

    const-string v1, "on"

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "sony-vs"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;->ON:Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;

    :goto_1
    invoke-direct {v3, v1}, Lcom/sonyericsson/cameracommon/status/VideoStabilizer;-><init>(Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 433
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$1400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseCameraImmediately()V
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$1500(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V

    .line 436
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # setter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    invoke-static {v1, v6}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$1402(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Z)Z

    goto/16 :goto_0

    .line 421
    :cond_2
    sget-object v1, Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;->OFF:Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;

    goto :goto_1
.end method
