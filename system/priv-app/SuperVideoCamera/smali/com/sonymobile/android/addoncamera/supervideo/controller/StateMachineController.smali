.class public Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;
.implements Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$5;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateFinalize;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePause;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StatePhotoUIComponentDisplaying;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateZooming;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStopRecording;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateCaptureWhileRecording;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateZoomingWhileRecording;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateVideoRecording;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateResume;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateInitialize;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateNone;,
        Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;
    }
.end annotation


# static fields
.field private static final RESUME_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String;

.field public static final VIDEO_PROGRESS_BAR_UPDATE_INTERVAL:I = 0x64


# instance fields
.field private final mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

.field private mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

.field private mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

.field private final mExecService:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

.field private final mOnStateChangedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

.field private final mRecordingProgressCheckTack:Ljava/lang/Runnable;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTargetCameraId:I

.field private final mTimeStampPathFactory:Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;

.field private mUpdateProgressCount:I

.field private mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;)V
    .locals 3
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    .param p2, "paramManager"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    .line 76
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    .line 79
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 82
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mUpdateProgressCount:I

    .line 88
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .line 91
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateNone;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateNone;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    .line 100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mOnStateChangedListenerSet:Ljava/util/Set;

    .line 103
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;

    const-string v1, "MOV_"

    const-string v2, ".mp4"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mTimeStampPathFactory:Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;

    .line 108
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mExecService:Ljava/util/concurrent/ExecutorService;

    .line 1661
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$2;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mRecordingProgressCheckTack:Ljava/lang/Runnable;

    .line 124
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    .line 125
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
    .param p1, "x1"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doStartRecording([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doStopRecording()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->requestStoreVideo(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->updateRecordingProgress()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doCaptureWhileRecording()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doStopZoom()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doHandleRecordingError()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;[BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/net/Uri;
    .param p5, "x5"    # Z

    .prologue
    .line 63
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->requestStorePicture([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->launchEditor(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->calculateRemainStorage(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mTargetCameraId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->showCameraNotAvailableError()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doZoomIn()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->doZoomOut()V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private calculateRemainStorage(ZZ)V
    .locals 5
    .param p1, "updateUi"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1913
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v2}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getCamcordRect()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1920
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4, p2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    move-result-wide v0

    .line 1922
    .local v0, "capacity":J
    const-wide/32 v2, 0xf000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1924
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$4;

    invoke-direct {v3, p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$4;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private varargs declared-synchronized changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "nextState"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1386
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->exit()V

    .line 1389
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    .line 1392
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;

    .line 1393
    .local v1, "listener":Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->getCaptureState()Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;->onStateChanged(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1386
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1397
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->entry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1398
    monitor-exit p0

    return-void
.end method

.method private createCurrentTakenStatus(I)Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .locals 24
    .param p1, "cameraType"    # I

    .prologue
    .line 1430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1431
    .local v3, "takenTimeMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->getOrientation()I

    move-result v7

    invoke-static {v7}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getNormalizedRotation(I)I

    move-result v5

    .line 1434
    .local v5, "orientation":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 1437
    .local v6, "location":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v7}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getCamcordRect()Landroid/graphics/Rect;

    move-result-object v21

    .line 1440
    .local v21, "capRect":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 1441
    .local v9, "mimeType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1442
    .local v10, "fileExtension":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1443
    .local v11, "filePath":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 1444
    .local v14, "maxFileSizeBytes":J
    const-wide/16 v12, 0x0

    .line 1445
    .local v12, "maxDurationMills":J
    const/16 v16, 0x0

    .line 1446
    .local v16, "isStorageFullReached":Z
    const/4 v2, 0x0

    .line 1447
    .local v2, "takenStatus":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    const/16 v18, 0x0

    .line 1449
    .local v18, "contentType":I
    packed-switch p1, :pswitch_data_0

    .line 1483
    :goto_0
    new-instance v17, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1499
    .local v17, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;>;"
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .end local v2    # "takenStatus":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct/range {v2 .. v18}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/ref/WeakReference;I)V

    .line 1503
    .restart local v2    # "takenStatus":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    return-object v2

    .line 1451
    .end local v17    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$StoreDataCallback;>;"
    :pswitch_0
    const-string v9, "image/jpeg"

    .line 1452
    const-string v10, ".JPG"

    .line 1453
    const/16 v18, 0x0

    .line 1454
    goto :goto_0

    .line 1457
    :pswitch_1
    const-string v9, "video/mp4"

    .line 1458
    const-string v10, ".mp4"

    .line 1460
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->getVideoFilePath(J)Ljava/lang/String;

    move-result-object v11

    .line 1461
    const/16 v18, 0x3

    .line 1463
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v7

    const-wide/16 v22, 0x400

    mul-long v19, v7, v22

    .line 1467
    .local v19, "availableStorageSizeBytes":J
    const-wide/32 v7, 0x3c00000

    sub-long v7, v19, v7

    const-wide/32 v22, 0xf00000

    add-long v14, v7, v22

    .line 1470
    const-wide/16 v7, 0x0

    cmp-long v7, v14, v7

    if-gez v7, :cond_0

    .line 1471
    const-wide/16 v14, 0x0

    .line 1475
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->getMaxDurationMillisecond(J)J

    move-result-wide v12

    .line 1478
    const-wide v7, 0xffffffffL

    cmp-long v7, v14, v7

    if-gez v7, :cond_1

    const/16 v16, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 1449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doCaptureWhileRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1670
    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->createCurrentTakenStatus(I)Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    move-result-object v0

    .line 1671
    .local v0, "status":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    if-eqz v0, :cond_0

    .line 1672
    iput v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->contentType:I

    .line 1675
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->takePicture(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    .line 1677
    :cond_0
    return-void
.end method

.method private doHandleRecordingError()V
    .locals 2

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showUnknownErrorMessage()V

    .line 1752
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1753
    return-void
.end method

.method private varargs doStartRecording([Ljava/lang/Object;)V
    .locals 12
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1680
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_STARTED:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1682
    invoke-direct {p0, v11}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->createCurrentTakenStatus(I)Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .line 1684
    const/4 v3, 0x0

    .line 1685
    .local v3, "success":Z
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    if-eqz v4, :cond_0

    .line 1687
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v5

    iget-object v5, v5, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->getSomcType()I

    move-result v5

    iput v5, v4, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->somcType:I

    .line 1690
    const/4 v1, 0x0

    .line 1691
    .local v1, "isConstraint":Z
    const/4 v2, 0x0

    .line 1693
    .local v2, "isVideoHdr":Z
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget-wide v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->maxDurationMills:J

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-interface {v4, v5, v6}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1700
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    invoke-interface {v4, v5}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->startRecording(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    const/4 v3, 0x1

    .line 1713
    .end local v1    # "isConstraint":Z
    .end local v2    # "isVideoHdr":Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 1715
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mRecordingProgressCheckTack:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1719
    :goto_1
    return-void

    .line 1704
    .restart local v1    # "isConstraint":Z
    .restart local v2    # "isVideoHdr":Z
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->TAG:Ljava/lang/String;

    const-string v5, "Start recording failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1707
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v4

    const v5, 0x7f0a0074

    const v6, 0x7f0a00db

    invoke-virtual {v4, v5, v6, v10}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0

    .line 1717
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "isConstraint":Z
    .end local v2    # "isVideoHdr":Z
    :cond_1
    new-instance v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;

    invoke-direct {v4, p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    new-array v5, v9, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private doStopRecording()V
    .locals 3

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_STARTED:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1746
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->stopRecording()V

    .line 1747
    return-void
.end method

.method private doStopZoom()V
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->stopSmoothZoom()V

    .line 1586
    return-void
.end method

.method private doZoomIn()V
    .locals 2

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getMaxZoom()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->startSmoothZoom(I)V

    .line 1576
    return-void
.end method

.method private doZoomOut()V
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->startSmoothZoom(I)V

    .line 1581
    return-void
.end method

.method private getMaxDurationMillisecond(J)J
    .locals 20
    .param p1, "maxFileSizeBytes"    # J

    .prologue
    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getCamcordRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1522
    .local v4, "capRect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getValueFromFrameSize(II)Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    move-result-object v5

    .line 1525
    .local v5, "currentVideoSize":Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    if-nez v5, :cond_1

    .line 1526
    const-wide/16 v10, 0x0

    .line 1561
    :cond_0
    :goto_0
    return-wide v10

    .line 1529
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x404e000000000000L

    mul-double v16, v16, v18

    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getAverageFileSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-long v8, v0

    .line 1532
    .local v8, "remainSec":J
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1533
    const-wide/16 v16, 0x3e8

    mul-long v2, v8, v16

    .line 1545
    .local v2, "calculatedMaxDurationMills":J
    move-wide v10, v2

    .line 1548
    .local v10, "ret":J
    const-wide/16 v16, 0x3e8

    div-long v12, v10, v16

    .line 1549
    .local v12, "second":J
    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getAverageFileSize()J

    move-result-wide v16

    const-wide/16 v18, 0x400

    mul-long v16, v16, v18

    const-wide/16 v18, 0x3c

    div-long v14, v16, v18

    .line 1550
    .local v14, "sizePerSec":J
    mul-long v6, v12, v14

    .line 1551
    .local v6, "fileSizeFromDuration":J
    cmp-long v16, p1, v6

    if-gez v16, :cond_2

    .line 1553
    const-wide/16 v16, 0x3e8

    mul-long v16, v16, p1

    div-long v10, v16, v14

    .line 1557
    :cond_2
    const-wide/32 v16, 0x7fffffff

    cmp-long v16, v16, v10

    if-gez v16, :cond_0

    .line 1558
    const-wide/32 v10, 0x7fffffff

    goto :goto_0
.end method

.method private getOrientation()I
    .locals 6

    .prologue
    .line 1401
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getSensorOrientationDegree()I

    move-result v0

    .line 1402
    .local v0, "degree":I
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getNormalizedRotation(I)I

    move-result v3

    .line 1404
    .local v3, "sensorOrientation":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1405
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v4, 0x0

    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1418
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1420
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v4, v4, 0x168

    sub-int/2addr v4, v3

    rem-int/lit16 v2, v4, 0x168

    .line 1425
    .local v2, "orientation":I
    :goto_0
    return v2

    .line 1422
    .end local v2    # "orientation":I
    :cond_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v3

    rem-int/lit16 v2, v4, 0x168

    .restart local v2    # "orientation":I
    goto :goto_0
.end method

.method private getVideoFilePath(J)Ljava/lang/String;
    .locals 3
    .param p1, "takenTimeMillis"    # J

    .prologue
    .line 1507
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$5;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$parameters$CapturingMode:[I

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v2

    iget-object v2, v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1515
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getNextVideoFilePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1509
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->TIMESHIFT_VIDEO_120F_DIR_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1511
    .local v0, "directoryPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mTimeStampPathFactory:Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/TimeStampPathFactory;->get(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private launchEditor(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "takenStatus"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    .line 948
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mimeType:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 953
    .local v0, "isEditorAvailable":Z
    if-nez v0, :cond_0

    .line 955
    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 961
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    check-cast v1, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v2

    iget-object v2, v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v1, p1, p2, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V

    goto :goto_0
.end method

.method private declared-synchronized requestStorePicture([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p3, "isSuperResolutinZoom"    # Z
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "addToMediaStore"    # Z

    .prologue
    .line 1816
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;[BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V

    .line 1819
    .local v0, "task":Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mExecService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1820
    monitor-exit p0

    return-void

    .line 1816
    .end local v0    # "task":Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized requestStoreVideo(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    .line 1823
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->getRequestId(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->setRequestId(I)V

    .line 1826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    .line 1829
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v0

    .line 1830
    .local v0, "savingTaskManager":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->storeVideo(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V

    .line 1833
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    monitor-exit p0

    return-void

    .line 1823
    .end local v0    # "savingTaskManager":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private showCameraNotAvailableError()V
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->isCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraDisabledMessage()V

    .line 1642
    :goto_0
    return-void

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessage()V

    goto :goto_0
.end method

.method private updateRecordingProgress()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1878
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    if-eqz v1, :cond_0

    .line 1879
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->disableAutoOffTimer()V

    .line 1885
    :cond_0
    iget v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mUpdateProgressCount:I

    if-nez v1, :cond_1

    .line 1887
    invoke-direct {p0, v6, v5}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->calculateRemainStorage(ZZ)V

    .line 1890
    :cond_1
    iget v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mUpdateProgressCount:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2

    .line 1892
    iput v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mUpdateProgressCount:I

    .line 1898
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mLastTakenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget-wide v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 1901
    .local v0, "recordingTime":I
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1905
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mRecordingProgressCheckTack:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1907
    return-void

    .line 1895
    .end local v0    # "recordingTime":I
    :cond_2
    iget v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mUpdateProgressCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mUpdateProgressCount:I

    goto :goto_0
.end method


# virtual methods
.method public addOnStateChangedListener(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public declared-synchronized canApplicationBeFinished()Z
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->getCaptureState()Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->canApplicationBeFinished()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canCurrentStateHandleAsynchronizedTask()Z
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->getCaptureState()Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->canHandleAsynchronizedTask()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDialogOpened()Z
    .locals 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->getCaptureState()Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_UI_COMPONENT_DISPLAY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->isMenuAvailable()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isRecording()Z
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->getCaptureState()Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->isRecording()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAutoFocusDone(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 1566
    return-void
.end method

.method public onDeviceError(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1604
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$5;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$ErrorCode:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1627
    :goto_0
    return-void

    .line 1608
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1610
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1611
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->TAG:Ljava/lang/String;

    const-string v2, "onDeviceError(): [Screen backlight is ON."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->showCameraNotAvailableError()V

    goto :goto_0

    .line 1623
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    goto :goto_0

    .line 1604
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDeviceOpened(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "cameraParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->initialize(Landroid/hardware/Camera$Parameters;)V

    .line 1633
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->apply(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;Z)V

    .line 1634
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->stopLiveViewFinder()V

    .line 1125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1128
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->enableAutoOffTimer()V

    .line 1129
    return-void
.end method

.method public onReachHighTemperature()V
    .locals 2

    .prologue
    .line 1647
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_REACH_HIGH_TEMPERATURE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1648
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mTargetCameraId:I

    .line 436
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$1;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 444
    return-void
.end method

.method public onShutterDone(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 3
    .param p1, "takenStatus"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    .line 1570
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1571
    return-void
.end method

.method public onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 9
    .param p1, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p2, "store_result"    # I
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1838
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->getRequestId()I

    move-result v5

    .line 1839
    .local v5, "requestId":I
    if-nez p2, :cond_1

    move v2, v0

    .line 1840
    .local v2, "result":Z
    :goto_0
    move-object v3, p4

    .line 1841
    .local v3, "originalUri":Landroid/net/Uri;
    const-string v6, "image/jpeg"

    .line 1842
    .local v6, "mime":Ljava/lang/String;
    iget v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->orientation:I

    .line 1845
    .local v4, "thumbnailOrientation":I
    sget-object v7, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p4, v8, v1

    aput-object p1, v8, v0

    invoke-virtual {p0, v7, v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1847
    iget v7, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->contentType:I

    if-ne v7, v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    sget-object v7, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_FADE_OUT_THUMBNAIL_ANIMATION:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v7, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1852
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;ZLandroid/net/Uri;II)V

    invoke-virtual {v7, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1873
    return-void

    .end local v2    # "result":Z
    .end local v3    # "originalUri":Landroid/net/Uri;
    .end local v4    # "thumbnailOrientation":I
    .end local v6    # "mime":Ljava/lang/String;
    :cond_1
    move v2, v1

    .line 1839
    goto :goto_0
.end method

.method public onTakePictureDone([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "lastTakenStatus"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    const/4 v3, 0x0

    .line 1724
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1729
    return-void
.end method

.method public onVideoRecordingDone(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 5
    .param p1, "lastTakenStatus"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .prologue
    .line 1734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1737
    .local v0, "stopTimeMillis":J
    iget-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    sub-long v2, v0, v2

    iput-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->duration:J

    .line 1740
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_RECORDING_DONE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1741
    return-void
.end method

.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 5
    .param p1, "zoomValue"    # I
    .param p2, "stopped"    # Z
    .param p3, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1599
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public varargs declared-synchronized sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "transitter"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1190
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$5;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$TransitterEvent:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 1373
    :goto_0
    monitor-exit p0

    return-void

    .line 1194
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleInitialize([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1198
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleResume([Ljava/lang/Object;)V

    goto :goto_0

    .line 1202
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleResumeTimeout([Ljava/lang/Object;)V

    goto :goto_0

    .line 1206
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handlePause([Ljava/lang/Object;)V

    goto :goto_0

    .line 1210
    :pswitch_4
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleFinalize([Ljava/lang/Object;)V

    goto :goto_0

    .line 1216
    :pswitch_5
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnEvfPreparationFailed([Ljava/lang/Object;)V

    goto :goto_0

    .line 1220
    :pswitch_6
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnEvfPreparationSucceeded([Ljava/lang/Object;)V

    goto :goto_0

    .line 1227
    :pswitch_7
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleReachHighTemperature([Ljava/lang/Object;)V

    goto :goto_0

    .line 1233
    :pswitch_8
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnStoreRequested([Ljava/lang/Object;)V

    goto :goto_0

    .line 1237
    :pswitch_9
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    goto :goto_0

    .line 1241
    :pswitch_a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleStorageMounted([Ljava/lang/Object;)V

    goto :goto_0

    .line 1245
    :pswitch_b
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleStorageError([Ljava/lang/Object;)V

    goto :goto_0

    .line 1249
    :pswitch_c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleStorageShouldChange([Ljava/lang/Object;)V

    goto :goto_0

    .line 1254
    :pswitch_d
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleKeyFocusDown([Ljava/lang/Object;)V

    goto :goto_0

    .line 1258
    :pswitch_e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleKeyFocusUp([Ljava/lang/Object;)V

    goto :goto_0

    .line 1262
    :pswitch_f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleStartRecording([Ljava/lang/Object;)V

    goto :goto_0

    .line 1266
    :pswitch_10
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleKeyCaptureUp([Ljava/lang/Object;)V

    goto :goto_0

    .line 1270
    :pswitch_11
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleKeyZoomInDown([Ljava/lang/Object;)V

    goto :goto_0

    .line 1274
    :pswitch_12
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleKeyZoomOutDown([Ljava/lang/Object;)V

    goto :goto_0

    .line 1278
    :pswitch_13
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleKeyZoomUp([Ljava/lang/Object;)V

    goto :goto_0

    .line 1282
    :pswitch_14
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleKeyBack([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1288
    :pswitch_15
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handlePrepareTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1292
    :pswitch_16
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleStartTouchZoomIn([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1296
    :pswitch_17
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleStartTouchZoomOut([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1300
    :pswitch_18
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleStopTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1304
    :pswitch_19
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleFinishTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1309
    :pswitch_1a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleTouchAreaTouch([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1313
    :pswitch_1b
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleTouchAreaRelease([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1317
    :pswitch_1c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleCamcordButtonTouch([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1321
    :pswitch_1d
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleCamcordButtonRelease([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1325
    :pswitch_1e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleCaptureButtonTouch([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1329
    :pswitch_1f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleCaptureButtonRelease([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1333
    :pswitch_20
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnHeadUpDisplayInitialized([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1337
    :pswitch_21
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleUIComponentDisplayed([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1341
    :pswitch_22
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleUIComponentHidden([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1345
    :pswitch_23
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnVideoRecordingDone([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1349
    :pswitch_24
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1353
    :pswitch_25
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnTakePictureDone([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1358
    :pswitch_26
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnRecordingProgressCheckPoint([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1362
    :pswitch_27
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleParameterChanged([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1366
    :pswitch_28
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$State;->handleOnRecordingError([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method public setCameraDevice(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;)V
    .locals 0
    .param p1, "cameraDevice"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    .line 136
    return-void
.end method

.method public setViewFinder(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;)V
    .locals 0
    .param p1, "viewFinder"    # Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    .line 131
    return-void
.end method
