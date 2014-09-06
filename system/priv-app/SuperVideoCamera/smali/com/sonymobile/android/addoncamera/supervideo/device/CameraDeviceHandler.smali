.class public Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;,
        Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;,
        Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;,
        Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;,
        Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;,
        Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnStorageFullRecordingInfoCallback;,
        Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;,
        Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnAutoFocusCallback;,
        Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;
    }
.end annotation


# static fields
.field private static final PREFERED_SUPERVIDEO_PICTURE_PREVIEW_HEIGHT:I = 0x2d0

.field private static final PREFERED_SUPERVIDEO_PICTURE_PREVIEW_WIDTH:I = 0x500

.field private static final STATUS_OPENED:I = 0x2

.field private static final STATUS_OPENING:I = 0x1

.field private static final STATUS_RELEASED:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final WAITING_TIME_STOP_REC:I = 0x640

.field private static instance:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;


# instance fields
.field private mCamcordProfile:Landroid/media/CamcorderProfile;

.field private mCamcordRect:Landroid/graphics/Rect;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraDeviceId:I

.field private mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

.field private mContext:Landroid/content/Context;

.field private mCurrentDeviceState:I

.field private mIsCameraDisabled:Z

.field private mIsImmediateReleaseRequested:Z

.field private mIsMicrophoneEnabled:Z

.field private mIsShutterSoundEnabled:Z

.field private mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

.field private mLastVideoTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

.field private mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderStartTimeMillis:J

.field private mOnAutoFocusCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnAutoFocusCallback;

.field private final mOnPictureTakenCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;

.field private mOnRecordingErrorCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;

.field private mOnRecordingInfoCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;

.field private final mOnShutterCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;

.field private mOnZoomChangedCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;

.field private mOpenDeviceFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mOpenDeviceTask:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;

.field private mPictureRect:Landroid/graphics/Rect;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    invoke-direct {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;-><init>()V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->instance:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOpenDeviceTask:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;

    .line 86
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 87
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    .line 88
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 91
    iput v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I

    .line 97
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    .line 100
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    .line 103
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    .line 111
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsShutterSoundEnabled:Z

    .line 129
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    .line 132
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 138
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 139
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    .line 140
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsMicrophoneEnabled:Z

    .line 996
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorderStartTimeMillis:J

    .line 148
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnAutoFocusCallback;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnAutoFocusCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnAutoFocusCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnAutoFocusCallback;

    .line 149
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;

    .line 150
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;

    .line 151
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->initHdrVideo(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->initFocus(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/media/CamcorderProfile;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseCameraImmediately()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonyericsson/cameraextension/CameraExtension;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonyericsson/cameraextension/CameraExtension;)Lcom/sonyericsson/cameraextension/CameraExtension;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p1, "x1"    # Lcom/sonyericsson/cameraextension/CameraExtension;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseVideo()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraDeviceId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->initPreviewSize(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->setRecordSound(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->initMetering(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private declared-synchronized getCameraExtensionInstance()Lcom/sonyericsson/cameraextension/CameraExtension;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 247
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->waitOpenDeviceTaskFinishedSuccessfully()Z

    move-result v0

    .line 248
    .local v0, "expired":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOpenDeviceFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    if-eqz v0, :cond_0

    .line 254
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    .end local v0    # "expired":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getCameraInstance()Landroid/hardware/Camera;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 233
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->waitOpenDeviceTaskFinishedSuccessfully()Z

    move-result v0

    .line 234
    .local v0, "expired":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOpenDeviceFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    if-eqz v0, :cond_0

    .line 240
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    .end local v0    # "expired":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    .locals 2

    .prologue
    .line 154
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->instance:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initFocus(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 972
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/PlatformDependencyResolver;->getDefaultFocusMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "focus":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 978
    :cond_0
    return-void
.end method

.method private initHdrVideo(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 981
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/PlatformDependencyResolver;->getDefaultHdrVideo(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "hdrVideo":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 984
    const-string v1, "sony-video-hdr"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_0
    return-void
.end method

.method private initMetering(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 962
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/PlatformDependencyResolver;->getDefaultMetering(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "metering":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 965
    const-string v1, "sony-metering-mode"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :cond_0
    return-void
.end method

.method private initPreviewSize(Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .param p1, "target"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v8, 0x0

    .line 890
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    .line 928
    :goto_0
    return-void

    .line 894
    :cond_0
    const/4 v4, 0x0

    .line 897
    .local v4, "targetSize":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 898
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 900
    .local v2, "preferredSize":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_2

    .line 901
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 902
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, v6, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    if-ne v5, v6, :cond_1

    .line 905
    new-instance v4, Landroid/graphics/Rect;

    .end local v4    # "targetSize":Landroid/graphics/Rect;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 912
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    .restart local v4    # "targetSize":Landroid/graphics/Rect;
    :cond_2
    if-nez v4, :cond_3

    .line 913
    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x500

    const/16 v7, 0x2d0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v5}, Lcom/sonymobile/android/addoncamera/supervideo/device/PlatformDependencyResolver;->getOptimalPreviewSize(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 918
    :cond_3
    if-nez v4, :cond_4

    .line 919
    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    const-string v6, "Can not resolve preview size."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 926
    :cond_4
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    .line 927
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_0
.end method

.method private prepareMediaRecorder(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 9
    .param p1, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1153
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_0

    .line 1156
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "prepareMediaRecorder():[not NULL]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1160
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1161
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 1247
    :goto_0
    return-void

    .line 1166
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 1168
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1169
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1172
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1174
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    if-nez v4, :cond_2

    .line 1175
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "CamcorderProfile is null."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1178
    :cond_2
    iget-boolean v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsMicrophoneEnabled:Z

    if-eqz v4, :cond_4

    .line 1179
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1180
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1193
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v5, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->maxFileSizeBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 1196
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v5, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->maxDurationMills:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1199
    iget-object v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->location:Landroid/location/Location;

    if-eqz v4, :cond_3

    .line 1200
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    double-to-float v5, v5

    iget-object v6, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1212
    :cond_3
    iget-object v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->filePath:Ljava/lang/String;

    const-string v5, "/storage/emulated/"

    const-string v6, "/data/media/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, "replacedPath":Ljava/lang/String;
    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareMediaRecorder():original path ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareMediaRecorder():replaced path ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1219
    iget-boolean v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->isStorageFullReached:Z

    if-eqz v4, :cond_5

    .line 1220
    new-instance v4, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnStorageFullRecordingInfoCallback;

    invoke-direct {v4, p0, v8}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnStorageFullRecordingInfoCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V

    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnRecordingInfoCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;

    .line 1225
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnRecordingInfoCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1226
    new-instance v4, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;

    invoke-direct {v4, p0, v8}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V

    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnRecordingErrorCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;

    .line 1227
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnRecordingErrorCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingErrorCallback;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1230
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v5, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->orientation:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1234
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V

    .line 1237
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1240
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1241
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareMediaRecorder():[IOException]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseMediaRecorder()V

    .line 1245
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "prepareMediaRecorder():[Failed to prepare MediaRecorder.]"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1183
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "replacedPath":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1184
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1185
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1188
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1189
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_1

    .line 1222
    .restart local v3    # "replacedPath":Ljava/lang/String;
    :cond_5
    new-instance v4, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;

    invoke-direct {v4, p0, v8}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V

    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnRecordingInfoCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;

    goto/16 :goto_2
.end method

.method private prepareZoom()V
    .locals 3

    .prologue
    .line 524
    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;

    .line 527
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 529
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method private declared-synchronized releaseCameraImmediately()V
    .locals 2

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->stopExtensionFeatures()V

    .line 291
    new-instance v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    .line 303
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 306
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 308
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 310
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->release()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    .line 319
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1250
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_1

    .line 1251
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    const-string v3, "releaseMediaRecorder():[mMediaRecorder == null]"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1255
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1256
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 1257
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 1258
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1261
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1262
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 1268
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1269
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "releaseMediaRecorder():[Failed to reconnect Camera.]"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized releaseVideo()V
    .locals 1

    .prologue
    .line 1120
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->setStreamNotificationMute(Z)V

    .line 1123
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1124
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseMediaRecorder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    :cond_0
    monitor-exit p0

    return-void

    .line 1120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private requestCacheParameters()V
    .locals 2

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 637
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method private sendGoogleAnalyticsRecordingEvent(I)V
    .locals 4
    .param p1, "recTime"    # I

    .prologue
    .line 1111
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getCapturingMode()Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    move-result-object v0

    .line 1112
    .local v0, "mode":Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 1115
    .local v1, "screen":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;
    :goto_0
    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;J)V

    .line 1116
    return-void

    .line 1112
    .end local v1    # "screen":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;
    :cond_0
    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    goto :goto_0
.end method

.method private setPhotoShutterSound(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    const/16 v0, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-shuttersound"

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->getShutterSoundFilePath(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1138
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-shuttersound"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRecordSound(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "target"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 877
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isShutterSoundEnabled(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    .line 879
    .local v0, "sound":Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->getRecordSoundFilePath(Z)Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, "soundFilePath":Ljava/lang/String;
    const-string v2, "key-sony-ext-recordingsound"

    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsShutterSoundEnabled:Z

    .line 885
    return-void
.end method

.method private setStreamNotificationMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1149
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1150
    return-void
.end method

.method private showDeviceErrorMessage(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraDisabledMessage()V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessage()V

    goto :goto_0
.end method

.method private waitOpenDeviceTaskFinishedSuccessfully()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 538
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    if-nez v2, :cond_0

    .line 573
    :goto_0
    return v1

    .line 546
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    .line 573
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOpenDeviceTask:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->isExpired()Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;->access$1800(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;)Z

    move-result v1

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    const-string v3, "Camera device open fail : CancellationException."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseCameraImmediately()V

    .line 551
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    goto :goto_1

    .line 553
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 554
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    const-string v3, "Camera device open fail : ExecutionException."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseCameraImmediately()V

    .line 557
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    goto :goto_1

    .line 559
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    const-string v3, "Camera device open fail : InterruptedException."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseCameraImmediately()V

    .line 563
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    goto :goto_1

    .line 565
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 566
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    const-string v3, "Camera device open fail : TimeoutException."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseCameraImmediately()V

    .line 569
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    goto :goto_1
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 718
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 724
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnAutoFocusCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnAutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 740
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 745
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public commit()V
    .locals 3

    .prologue
    .line 1468
    iget v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1472
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1473
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 1476
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method

.method public getCamcordRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "isRefreshRequired"    # Z

    .prologue
    .line 609
    iget v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 611
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 630
    :goto_0
    return-object v1

    .line 614
    :cond_0
    if-eqz p1, :cond_1

    .line 615
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->requestCacheParameters()V

    .line 618
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_3

    .line 620
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 622
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_2

    .line 623
    const/4 v1, 0x0

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 630
    .end local v0    # "camera":Landroid/hardware/Camera;
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method public getMaxZoom()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 789
    const/4 v0, 0x0

    .line 791
    .local v0, "max":I
    invoke-virtual {p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v0

    .line 797
    .end local v0    # "max":I
    .local v1, "max":I
    :goto_0
    return v1

    .line 795
    .end local v1    # "max":I
    .restart local v0    # "max":I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    move v1, v0

    .line 797
    .end local v0    # "max":I
    .restart local v1    # "max":I
    goto :goto_0
.end method

.method public getPictureRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public initPictureSize(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "target"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v6, 0x0

    .line 931
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    .line 959
    :goto_0
    return-void

    .line 936
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 938
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 939
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 940
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 943
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    .line 950
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    if-nez v3, :cond_3

    .line 951
    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    const-string v4, "Can not resolve picture size."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 958
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_0
.end method

.method public isCameraDisabled()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    return v0
.end method

.method public isShutterSoundEnabled()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsShutterSoundEnabled:Z

    return v0
.end method

.method public prepareAdditionalFunctions()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->prepareZoom()V

    .line 519
    return-void
.end method

.method public prepareAdditionalSettings()V
    .locals 3

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 491
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 496
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 499
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->startExtensionFeatures()V

    .line 502
    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method

.method public preparePreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 814
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 820
    :goto_0
    return-void

    .line 819
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public declared-synchronized releaseCameraInstance()V
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I

    packed-switch v0, :pswitch_data_0

    .line 276
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->waitOpenDeviceTaskFinishedSuccessfully()Z

    .line 279
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseCameraImmediately()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    .line 267
    :pswitch_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized requestNextPreviewCallbackWithBuffer([B)V
    .locals 2
    .param p1, "frameBuffer"    # [B

    .prologue
    .line 825
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 827
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 841
    :goto_0
    monitor-exit p0

    return-void

    .line 836
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 825
    .end local v0    # "camera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public requestStartCameraOpen(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    .line 160
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 163
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->startCameraOpen(Landroid/content/Context;I)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;)V
    .locals 2
    .param p1, "ev"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .prologue
    .line 1352
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1353
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1360
    :goto_0
    return-void

    .line 1356
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_0
.end method

.method public set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;)V
    .locals 0
    .param p1, "focusMode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    .prologue
    .line 1412
    return-void
.end method

.method public set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;)V
    .locals 1
    .param p1, "microphone"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    .prologue
    .line 1458
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    invoke-virtual {p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsMicrophoneEnabled:Z

    .line 1459
    return-void
.end method

.method public set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;)V
    .locals 5
    .param p1, "photoLight"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    .prologue
    .line 1437
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1438
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1454
    :goto_0
    return-void

    .line 1441
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1448
    new-instance v2, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/PhotoLight;

    const-string v1, "torch"

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;->ON:Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;

    :goto_1
    invoke-direct {v3, v1}, Lcom/sonyericsson/cameracommon/status/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;->OFF:Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;

    goto :goto_1
.end method

.method public set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;)V
    .locals 5
    .param p1, "steadyShot"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    .prologue
    .line 1416
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1417
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1433
    :goto_0
    return-void

    .line 1421
    :cond_0
    const-string v1, "sony-is"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v1, "sony-vs"

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    new-instance v2, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/VideoStabilizer;

    const-string v1, "on"

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;->ON:Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;

    :goto_1
    invoke-direct {v3, v1}, Lcom/sonyericsson/cameracommon/status/VideoStabilizer;-><init>(Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;->OFF:Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;

    goto :goto_1
.end method

.method public set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;)V
    .locals 0
    .param p1, "videoAutoReview"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    .prologue
    .line 1464
    return-void
.end method

.method public set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;)V
    .locals 6
    .param p1, "videoSize"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1377
    invoke-virtual {p0, v4}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1378
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    .line 1383
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getVideoProfile()Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamcordProfile:Landroid/media/CamcorderProfile;

    .line 1385
    invoke-static {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/PlatformDependencyResolver;->getOptimalPreviewFpsRange(Landroid/hardware/Camera$Parameters;Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;)[I

    move-result-object v1

    .line 1386
    .local v1, "preferred":[I
    aget v2, v1, v4

    if-nez v2, :cond_2

    aget v2, v1, v5

    if-eqz v2, :cond_0

    .line 1394
    :cond_2
    const-string v2, "video-size"

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getVideoFrameSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    aget v2, v1, v4

    aget v3, v1, v5

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1406
    aget v2, v1, v5

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_0
.end method

.method public set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;)V
    .locals 2
    .param p1, "whiteBalance"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    .prologue
    .line 1364
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1365
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1372
    :goto_0
    return-void

    .line 1368
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShutterSound()V
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->setRecordSound(Landroid/hardware/Camera$Parameters;)V

    .line 862
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 873
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-recordingsound"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method public setStateMachine(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;)V
    .locals 0
    .param p1, "stateMachine"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    .line 605
    return-void
.end method

.method public declared-synchronized startCameraOpen(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    const-string v2, "device_policy"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 179
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 183
    check-cast p1, Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->showDeviceErrorMessage(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 189
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    .line 190
    iput p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCameraDeviceId:I

    .line 192
    iget v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I

    packed-switch v2, :pswitch_data_0

    .line 208
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 209
    .local v1, "exec":Ljava/util/concurrent/ExecutorService;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOpenDeviceTask:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OpenDeviceTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    .line 212
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 214
    const/4 v2, 0x1

    iput v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mCurrentDeviceState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 198
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local p1    # "context":Landroid/content/Context;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized startExtensionFeatures()V
    .locals 0

    .prologue
    .line 508
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public startLiveViewFinder(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 680
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 686
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v1

    .line 688
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "TraceLog"

    const-string v3, "CameraDevice.startLiveViewFinder():[IOException]"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRecording(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    .line 1003
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->setPhotoShutterSound(Z)V

    .line 1006
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->setStreamNotificationMute(Z)V

    .line 1008
    monitor-enter p0

    .line 1010
    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLastVideoTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .line 1013
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->prepareMediaRecorder(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    .line 1016
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1018
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorderStartTimeMillis:J

    .line 1039
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1040
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_2

    .line 1041
    new-instance v2, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/DeviceStatus;

    sget-object v4, Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/status/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 1050
    :goto_0
    monitor-exit p0

    .line 1051
    return-void

    .line 1019
    .end local v0    # "camera":Landroid/hardware/Camera;
    :catch_0
    move-exception v1

    .line 1020
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    const-string v3, "mMediaRecorder.start() fail."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1024
    .restart local v0    # "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_1

    .line 1025
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    const-string v3, "Camera.lock() after mMediaRecorder.start() fail."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 1030
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseVideo()V

    .line 1032
    throw v1

    .line 1050
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1046
    .restart local v0    # "camera":Landroid/hardware/Camera;
    :cond_2
    :try_start_3
    new-instance v2, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/DeviceStatus;

    sget-object v4, Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/status/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startSmoothZoom(I)V
    .locals 2
    .param p1, "zoomStep"    # I

    .prologue
    .line 750
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;

    if-nez v1, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 757
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto :goto_0
.end method

.method public declared-synchronized stopExtensionFeatures()V
    .locals 0

    .prologue
    .line 513
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public stopLiveViewFinder()V
    .locals 4

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 698
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 706
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v1

    .line 708
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "TraceLog"

    const-string v3, "CameraDevice.stopLiveViewFinder():[IOException]"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized stopPreviewCallback()V
    .locals 2

    .prologue
    .line 846
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 848
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 855
    :goto_0
    monitor-exit p0

    return-void

    .line 853
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 854
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 846
    .end local v0    # "camera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopRecording()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorderStartTimeMillis:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    .line 1057
    .local v2, "recTime":I
    const/16 v4, 0x640

    if-ge v2, v4, :cond_0

    .line 1058
    rsub-int v3, v2, 0x640

    .line 1066
    .local v3, "sleepTime":I
    int-to-long v4, v3

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    .end local v3    # "sleepTime":I
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1074
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_1

    .line 1075
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V

    .line 1079
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->releaseMediaRecorder()V

    .line 1082
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    if-eqz v4, :cond_2

    .line 1083
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLastVideoTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    invoke-interface {v4, v5}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->onVideoRecordingDone(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    .line 1085
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1088
    invoke-direct {p0, v8}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->setPhotoShutterSound(Z)V

    .line 1091
    invoke-direct {p0, v8}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->setStreamNotificationMute(Z)V

    .line 1095
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1096
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_3

    .line 1097
    new-instance v4, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    new-instance v5, Lcom/sonyericsson/cameracommon/status/DeviceStatus;

    sget-object v6, Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 1107
    :goto_1
    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->sendGoogleAnalyticsRecordingEvent(I)V

    .line 1108
    return-void

    .line 1067
    .end local v0    # "camera":Landroid/hardware/Camera;
    .restart local v3    # "sleepTime":I
    :catch_0
    move-exception v1

    .line 1069
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1085
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "sleepTime":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1102
    .restart local v0    # "camera":Landroid/hardware/Camera;
    :cond_3
    new-instance v4, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    new-instance v5, Lcom/sonyericsson/cameracommon/status/DeviceStatus;

    sget-object v6, Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_1
.end method

.method public stopSmoothZoom()V
    .locals 2

    .prologue
    .line 767
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnZoomChangedCallback;

    if-nez v1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 774
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 783
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->requestCacheParameters()V

    goto :goto_0
.end method

.method public takePicture(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 4
    .param p1, "takenStatus"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    .line 1331
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1333
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 1348
    :goto_0
    return-void

    .line 1339
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .line 1341
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnShutterCallback;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnPictureTakenCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1345
    new-instance v1, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/ContentResolver;)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/DeviceStatus;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;->PICTURE_TAKING_DURING_VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0
.end method

.method public trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    .line 648
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 650
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 672
    :goto_0
    return v2

    .line 658
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f060000

    const v5, 0x7f060001

    invoke-static {v3, v4, v5, p1}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->validate(Landroid/content/Context;IILandroid/hardware/Camera$Parameters;)V

    .line 663
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    const/4 v2, 0x1

    goto :goto_0

    .line 664
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->TAG:Ljava/lang/String;

    const-string v4, "Fail to Camera.setParameters()"

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method public waitForCameraInitialization()Z
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
