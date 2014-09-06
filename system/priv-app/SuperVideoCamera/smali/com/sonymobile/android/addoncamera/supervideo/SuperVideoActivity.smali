.class public abstract Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;
.super Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.source "SuperVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$2;,
        Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_DEVICE_ID:I = 0x0

.field public static final SETUP_DEVICE_SETUP_WAIT_TIME:I = 0x64

.field public static final SETUP_LAZY_EXECUTION_WAIT_TIME:I = 0xc8

.field public static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.supervideo_sharedprefs"

.field static final SHARED_PREFERENCE_VERSION:Ljava/lang/String; = "0.0.0"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

.field private mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

.field private mPostEventHandler:Landroid/os/Handler;

.field private mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

.field private mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

.field private final mStorageListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

.field private mTriggerIntent:Landroid/content/Intent;

.field private mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mTriggerIntent:Landroid/content/Intent;

    .line 102
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$1;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .line 135
    const-string v0, "SuperVideoCamera"

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->setAppName(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mPostEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDownAll()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->removeStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V

    .line 424
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .line 427
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 430
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getLayoutOrientationChangedListener()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->removeOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 433
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mPostEventHandler:Landroid/os/Handler;

    .line 435
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 438
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getDownCoreInstances()V

    .line 439
    return-void
.end method

.method private getDownCoreInstances()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->setCameraDevice(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;)V

    .line 446
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->setViewFinder(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;)V

    .line 448
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setStateMachine(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;)V

    .line 449
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setCameraDevice(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;)V

    .line 452
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    .line 453
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    .line 454
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    .line 455
    return-void
.end method

.method private getStateMachine()Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    return-object v0
.end method

.method private static launchThis(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 686
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 687
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 690
    return-void
.end method

.method private releaseCameraDevice()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->releaseCameraInstance()V

    .line 395
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->setStateMachine(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;)V

    .line 396
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getInstance()Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->releaseCameraInstance()V

    goto :goto_0
.end method

.method private requestPostLazyInitializationTaskExecute()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mPostEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$LazyInitializationTask;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    return-void
.end method

.method private setUpAll()V
    .locals 4

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->setupCoreInstance()V

    .line 152
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 155
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .line 156
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setMessegePopup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 157
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 160
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    invoke-static {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setStorage(Ljava/lang/String;I)V

    .line 163
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    invoke-static {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setStorage(Ljava/lang/String;I)V

    .line 168
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->isOneShotPhoto()Z

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;Z)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .line 170
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->addStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V

    .line 172
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 175
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 178
    new-instance v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mPostEventHandler:Landroid/os/Handler;

    .line 184
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 190
    return-void
.end method

.method private setupCoreInstance()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    const-string v1, "com.sonymobile.android.addoncamera.supervideo_sharedprefs"

    const-string v2, "0.0.0"

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    .line 199
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    .line 202
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    .line 205
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getInstance()Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    .line 206
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->setStateMachine(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;)V

    .line 209
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    .line 212
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->setCameraDevice(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;)V

    .line 213
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->setViewFinder(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;)V

    .line 215
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setStateMachine(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;)V

    .line 216
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setCameraDevice(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;)V

    .line 217
    return-void
.end method

.method private setupSpecificInstance()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    if-nez v0, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->canApplicationBeFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 632
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    goto :goto_0

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 635
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    goto :goto_0
.end method

.method public forTestGetCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getCallingDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f0a007b

    const v2, 0x7f0a00e4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCapturingMode()Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mTriggerIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mTriggerIntent:Landroid/content/Intent;

    .line 231
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPreviewSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 673
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualStorageAvailable()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->isMenuAvailable()Z

    move-result v0

    return v0
.end method

.method public msgPopupCanceled()V
    .locals 0

    .prologue
    .line 649
    return-void
.end method

.method public msgPopupOpened()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->setUpAll()V

    .line 145
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 411
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getDownAll()V

    .line 413
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onDestroy()V

    .line 414
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 461
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 464
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 465
    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    if-eq v0, v3, :cond_0

    move v2, v4

    .line 526
    :goto_0
    return v2

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 472
    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->disableAutoOffTimer()V

    .line 477
    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 526
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 481
    :pswitch_0
    const/16 v3, 0x18

    if-ne p1, v3, :cond_2

    .line 482
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_IN_DOWN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    .line 487
    .local v1, "zoomKeyEvent":Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v3, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v2, v4

    .line 488
    goto :goto_0

    .line 484
    .end local v1    # "zoomKeyEvent":Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;
    :cond_2
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_OUT_DOWN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    .restart local v1    # "zoomKeyEvent":Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;
    goto :goto_1

    .line 492
    .end local v1    # "zoomKeyEvent":Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 493
    goto :goto_0

    .line 495
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 499
    :pswitch_2
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v3, v5, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v2, v4

    .line 501
    goto :goto_0

    .line 504
    :pswitch_3
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v3, v5, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v2, v4

    .line 506
    goto :goto_0

    .line 511
    :pswitch_4
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v6, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    invoke-interface {v5, v6, v3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 513
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v3, v5, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v2, v4

    .line 515
    goto :goto_0

    :pswitch_5
    move v2, v4

    .line 521
    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 534
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    .line 615
    :goto_0
    return v1

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->enableAutoOffTimer()V

    .line 540
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 544
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->isDialogOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 564
    :cond_1
    :pswitch_0
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_1

    .line 615
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 555
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_HIDDEN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v1, v3

    .line 558
    goto :goto_0

    .line 567
    :pswitch_2
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_UP:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v1, v3

    .line 569
    goto :goto_0

    .line 572
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 573
    goto :goto_0

    .line 575
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 579
    :pswitch_4
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_UP:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v1, v3

    .line 581
    goto :goto_0

    .line 584
    :pswitch_5
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_UP:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v1, v3

    .line 586
    goto :goto_0

    .line 591
    :pswitch_6
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_UP:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 593
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_UP:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v1, v3

    .line 595
    goto :goto_0

    :pswitch_7
    move v1, v3

    .line 601
    goto :goto_0

    .line 604
    :pswitch_8
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->canApplicationBeFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->terminateApplication()V

    :goto_1
    move v1, v3

    .line 611
    goto/16 :goto_0

    .line 608
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_KEY_BACK:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 564
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 223
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mTriggerIntent:Landroid/content/Intent;

    .line 224
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setSurfaceCallbacks(Z)V

    .line 371
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 375
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->releaseCameraDevice()V

    .line 377
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 379
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->clearKeepScreenOn()V

    .line 381
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->release()V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->store()V

    .line 386
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->unbindThermalService()V

    .line 389
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onPause()V

    .line 390
    return-void
.end method

.method public onReachHighTemperature(Z)V
    .locals 1
    .param p1, "isOnStartup"    # Z

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->isRecording()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendThermalEvent(ZZ)V

    .line 731
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->showBlankScreen()V

    .line 732
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getStateMachine()Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getStateMachine()Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->onReachHighTemperature()V

    .line 735
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->releaseCameraInstance()V

    .line 739
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->isPhoneCallWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setSurfaceCallbacks(Z)V

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 248
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->getInstance()Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    .line 249
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->setStateMachine(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;)V

    .line 252
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getCapturingMode()Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->changeCapturingMode(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V

    .line 256
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onResume()V

    .line 259
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isToggledStorageReady()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V

    .line 264
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->bindThermalService()V

    .line 267
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->isGpsLocationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->isNetworkLocationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->setDestinationToSave()V

    .line 275
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->getCapturingMode()Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    :goto_1
    invoke-static {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;)V

    .line 277
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setSurfaceCallbacks(Z)V

    goto :goto_0

    .line 275
    :cond_2
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    goto :goto_1
.end method

.method public resumeAll()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setSurfaceCallbacks(Z)V

    .line 286
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->requestStartCameraOpen(Landroid/content/Context;I)V

    .line 289
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->setupSpecificInstance()V

    .line 292
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getLayoutOrientationChangedListener()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 294
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->enableOrientation()V

    .line 295
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->keepScreenOn()V

    .line 297
    new-instance v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    .line 300
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->waitForCameraInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->requestPostLazyInitializationTaskExecute()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->onResume()V

    .line 306
    return-void
.end method

.method public resumeFromIncomingCall()V
    .locals 0

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->dismissDialog()V

    .line 681
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    .line 682
    invoke-static {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->launchThis(Landroid/app/Activity;)V

    .line 683
    return-void
.end method

.method public setShutterSound()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->setShutterSound()V

    .line 694
    return-void
.end method

.method public setTouchCapture()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupTouchCapture()V

    .line 743
    return-void
.end method

.method public showBlankScreen()V
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    if-eqz v0, :cond_0

    .line 698
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mViewFinderVisuals:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_SHOW_BLANK_SCREEN:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 705
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->releaseCameraDevice()V

    .line 706
    return-void
.end method
