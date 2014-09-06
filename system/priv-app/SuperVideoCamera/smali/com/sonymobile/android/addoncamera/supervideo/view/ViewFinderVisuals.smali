.class public Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.super Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.source "ViewFinderVisuals.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;
.implements Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;
.implements Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;
.implements Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$DialogOkListener;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$StorageExplanatoryDialogListener;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CaptureButtonListener;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;
    }
.end annotation


# static fields
.field public static final NO_RESOURCE_ID:I = -0x1

.field private static final RECORD_MODE_4K:Ljava/lang/String; = "record_mode_4k"

.field private static final RECORD_MODE_TIMESHIFT:Ljava/lang/String; = "record_mode_timeshift"

.field private static final SHARED_PREFS_KEY_4K2K_EXPLANATORY_DISABLED:Ljava/lang/String; = "4K2K_EXPLANATORY_DISABLED"

.field private static final TAG:Ljava/lang/String; = "ViewFinderVisuals"


# instance fields
.field private final mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

.field private mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

.field private mCamcordButtonListener:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;

.field private mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

.field private mCaptureButtonListener:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CaptureButtonListener;

.field private mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

.field private mCurrentOrientation:I

.field private mEnabledSurfaceCallback:Z

.field private mHeadUpDisplay:Landroid/widget/RelativeLayout;

.field private final mOnChangedModeSettingListener:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

.field protected mPref:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

.field private mRetryCount:I

.field private final mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

.field private mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

.field private mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

.field private mStorageExplanatoryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mSurface:Landroid/view/SurfaceView;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTargetSurfaceHeight:I

.field private mTargetSurfaceWidth:I

.field private mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;)V
    .locals 4
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    .param p2, "pref"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;
    .param p3, "paramManager"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 162
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;)V

    .line 124
    iput v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mTargetSurfaceWidth:I

    .line 125
    iput v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mTargetSurfaceHeight:I

    .line 133
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;

    invoke-direct {v0, p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCamcordButtonListener:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;

    .line 135
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CaptureButtonListener;

    invoke-direct {v0, p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CaptureButtonListener;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCaptureButtonListener:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CaptureButtonListener;

    .line 139
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCurrentOrientation:I

    .line 150
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mEnabledSurfaceCallback:Z

    .line 267
    iput v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mRetryCount:I

    .line 1232
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mOnChangedModeSettingListener:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;

    .line 1247
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$2;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    .line 163
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    .line 165
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    .line 166
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 167
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 169
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setup(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->disableAccessibilityTalkBack()V

    .line 177
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mPref:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    .line 178
    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    .line 179
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mEnabledSurfaceCallback:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;Landroid/view/SurfaceHolder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->isAllDialogClosed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToDimSystemUi()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToRecoverSystemUi()V

    return-void
.end method

.method private changeCaptureButtonToCaptureMode()V
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 568
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 569
    return-void
.end method

.method private changeCaptureButtonToRecording()V
    .locals 2

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 573
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 574
    return-void
.end method

.method private changeToDialogView(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;)V
    .locals 2
    .param p1, "kind"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 945
    :goto_0
    return-void

    .line 927
    :cond_0
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$ViewFinderVisuals$UiComponentKind:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 943
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 944
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0

    .line 929
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 930
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 931
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->hideShortcutTray()V

    .line 933
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->closeDialogs(Z)V

    .line 935
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->clearCaptureButton()V

    goto :goto_1

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    goto :goto_1

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private changeToIdleView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 826
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 852
    :goto_0
    return-void

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->onShutterDone()V

    .line 835
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupCapturingModeSelectorButton(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V

    .line 838
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeCaptureButtonToCaptureMode()V

    .line 840
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 842
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 843
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    .line 845
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->showShortcutTray()V

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 851
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method private changeToPauseView()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 898
    :goto_0
    return-void

    .line 885
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 888
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->clearCaptureButton()V

    .line 890
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->hideShortcutTray()V

    .line 892
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->closeDialogs(Z)V

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 897
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method private changeToVideoRecordingView()V
    .locals 2

    .prologue
    .line 855
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 857
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeCaptureButtonToRecording()V

    .line 867
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->hideShortcutTray()V

    .line 869
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->closeDialogs(Z)V

    .line 873
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hideThumbnail()V

    .line 876
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 877
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method private changeToZoomingView(Z)V
    .locals 2
    .param p1, "isShooting"    # Z

    .prologue
    .line 901
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 918
    :goto_0
    return-void

    .line 905
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 908
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->clearCaptureButton()V

    .line 910
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->hideShortcutTray()V

    .line 912
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->closeDialogs(Z)V

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 917
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method private checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V
    .locals 9
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 271
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->isAlreadyHighTemperature()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v4}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 278
    .local v2, "previewRect":Landroid/graphics/Rect;
    if-nez v2, :cond_3

    .line 279
    iget v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mRetryCount:I

    const/16 v5, 0x1e

    if-le v4, v5, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->showCameraNotAvailableError()V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 286
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_2

    .line 287
    new-instance v4, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckSurfacePreparedRetryTask;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;Landroid/view/SurfaceHolder;II)V

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    iget v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mRetryCount:I

    .line 296
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARATION_FAILED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 301
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_3
    iput v8, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mRetryCount:I

    .line 304
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 307
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 310
    .local v3, "surfaceRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getFinderRectFromPreviewSize(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 316
    .local v0, "finderRect":Landroid/graphics/Rect;
    invoke-static {v0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 318
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARATION_SUCCEEDED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 325
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->resizeEvfScope(II)V

    goto :goto_0
.end method

.method private clearCaptureButton()V
    .locals 0

    .prologue
    .line 1309
    return-void
.end method

.method private closeCurrentDisplayingUiComponent()V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    if-nez v0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 951
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->closeCapturingModeSelector()V

    .line 952
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->closeDialogs(Z)V

    goto :goto_0
.end method

.method public static getApplicationLayoutRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 184
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 185
    .local v0, "disp":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 186
    .local v1, "layoutRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 188
    return-object v1
.end method

.method private getDownHeadUpDisplay()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    .line 653
    return-void
.end method

.method private isAllDialogClosed()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1316
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 1317
    .local v1, "isSettingDialogOpened":Z
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 1318
    .local v0, "isAutoReviewOpened":Z
    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->isCapturingModeSelectorOpened()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v3

    .line 1321
    :cond_1
    return v2

    .end local v0    # "isAutoReviewOpened":Z
    .end local v1    # "isSettingDialogOpened":Z
    :cond_2
    move v1, v3

    .line 1316
    goto :goto_0

    .restart local v1    # "isSettingDialogOpened":Z
    :cond_3
    move v0, v3

    .line 1317
    goto :goto_1
.end method

.method public static final isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p0, "rectA"    # Landroid/graphics/Rect;
    .param p1, "rectB"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v4, 0x42c80000

    .line 338
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 339
    .local v0, "aspectA":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 341
    .local v1, "aspectB":F
    mul-float v2, v0, v4

    float-to-int v2, v2

    mul-float v3, v1, v4

    float-to-int v3, v3

    if-ne v2, v3, :cond_0

    .line 342
    const/4 v2, 0x1

    .line 345
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadSettingsFromSharedPreferencesAndDevice()V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method private varargs onViewFinderStateChanged(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "currentState"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 755
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 823
    :goto_0
    :pswitch_0
    return-void

    .line 765
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 766
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->resume()V

    goto :goto_0

    .line 771
    :pswitch_2
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    .line 773
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    .line 775
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToIdleView()V

    goto :goto_0

    .line 779
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToZoomingView(Z)V

    goto :goto_0

    .line 783
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToZoomingView(Z)V

    goto :goto_0

    .line 790
    :pswitch_5
    aget-object v0, p2, v2

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    .line 792
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToDialogView(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;)V

    .line 794
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToRecoverSystemUi(Landroid/view/View;)V

    goto :goto_0

    .line 798
    :pswitch_6
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToDimSystemUi()V

    .line 799
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToVideoRecordingView()V

    goto :goto_0

    .line 803
    :pswitch_7
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 804
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToPauseView()V

    .line 805
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->pause()V

    goto :goto_0

    .line 809
    :pswitch_8
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToIdleView()V

    goto :goto_0

    .line 814
    :pswitch_9
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 815
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    .line 817
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->release()V

    .line 820
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getDownHeadUpDisplay()V

    goto :goto_0

    .line 755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .end packed-switch
.end method

.method private onZoomChanged(I)V
    .locals 4
    .param p1, "currentZoom"    # I

    .prologue
    .line 1074
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->getLatestCachedParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1080
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    const/4 v0, 0x0

    .line 1081
    .local v0, "maxZoom":I
    if-eqz v1, :cond_1

    .line 1082
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    .line 1087
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->onZoomChanged(II)V

    .line 1090
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1091
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method private resizeEvfScope(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 370
    const-string v1, "ViewFinderVisuals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeSurfaceView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 375
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARATION_SUCCEEDED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mTargetSurfaceWidth:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mTargetSurfaceHeight:I

    if-eq v1, p2, :cond_0

    .line 388
    :cond_2
    iput p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mTargetSurfaceWidth:I

    .line 389
    iput p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mTargetSurfaceHeight:I

    .line 391
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 395
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 396
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 397
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 399
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setEarlyThumbnailView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1364
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1365
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setEarlyThumbnailView(Landroid/view/View;)V

    .line 1367
    :cond_0
    return-void
.end method

.method private setupAutoReview()V
    .locals 3

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-nez v0, :cond_0

    .line 1539
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f030000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .line 1541
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    .line 1542
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->addLazyInflatedUiComponentFullScreen(Landroid/view/View;)V

    .line 1543
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1545
    :cond_0
    return-void
.end method

.method private setupCaptureArea()V
    .locals 2

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->clearCaptureButton()V

    .line 539
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeCaptureButtonToCaptureMode()V

    .line 542
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupTouchCapture()V

    .line 547
    return-void
.end method

.method private setupCapturingModeSelectorButton(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V
    .locals 5
    .param p1, "capturingMode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .prologue
    const v4, 0x7f0a0287

    const v3, 0x7f02000c

    .line 577
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v0

    .line 578
    .local v0, "button":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;
    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 583
    :cond_0
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v2, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;-><init>(Ljava/lang/String;II)V

    .line 611
    .local v1, "capturingModeAttr":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setCurrentCapturingMode(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;)V

    goto :goto_0

    .line 592
    .end local v1    # "capturingModeAttr":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    :cond_1
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->HIGH_FRAME_RATE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v2, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->HIGH_FRAME_RATE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02000d

    const v4, 0x7f0a0288

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;-><init>(Ljava/lang/String;II)V

    .restart local v1    # "capturingModeAttr":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    goto :goto_1

    .line 605
    .end local v1    # "capturingModeAttr":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    :cond_2
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;-><init>(Ljava/lang/String;II)V

    .restart local v1    # "capturingModeAttr":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    goto :goto_1
.end method

.method private setupHeadUpDisplay()V
    .locals 4

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->loadSettingsFromSharedPreferencesAndDevice()V

    .line 474
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupCapturingModeSelector()V

    .line 479
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 483
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    .line 485
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviewOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 488
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCamcordButtonListener:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 491
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCamcordButtonListener:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CamcordButtonListener;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 494
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCaptureButtonListener:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CaptureButtonListener;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 497
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 498
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 501
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V

    .line 506
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupCaptureArea()V

    .line 509
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupCapturingModeSelectorButton(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V

    .line 511
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupSettingUi()V

    .line 513
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupSuperVideoRelatedUi()V

    .line 516
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupAutoReview()V

    .line 519
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToIdleView()V

    .line 522
    iget v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCurrentOrientation:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setOrientation(I)V

    .line 524
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 526
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hideThumbnail()V

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method private setupSettingUi()V
    .locals 6

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    if-nez v0, :cond_0

    .line 1276
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const v1, 0x7f0e005d

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const v5, 0x7f0e0059

    invoke-virtual {v1, v5}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 1283
    .local v2, "dialogStack":Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    check-cast v1, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mOnChangedModeSettingListener:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    .line 1291
    .end local v2    # "dialogStack":Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->setup()V

    .line 1292
    return-void
.end method

.method private setupSuperVideoRelatedUi()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method private showCameraNotAvailableError()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;->isCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraDisabledMessage()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessage()V

    goto :goto_0
.end method

.method private showStorageDialogOption()V
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->openSaveDestinationSettingDialog()V

    .line 1341
    return-void
.end method

.method private showStorageExplanatoryDialog()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 1495
    new-instance v12, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$StorageExplanatoryDialogListener;

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mPref:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    invoke-direct {v12, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$StorageExplanatoryDialogListener;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;)V

    .line 1497
    .local v12, "listener":Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$StorageExplanatoryDialogListener;
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    if-nez v0, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 1503
    .local v11, "inflater":Landroid/view/LayoutInflater;
    if-eqz v11, :cond_0

    .line 1508
    const v0, 0x7f030019

    invoke-virtual {v11, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1512
    .local v1, "explanatoryView":Landroid/view/View;
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    if-ne v0, v3, :cond_2

    .line 1513
    const v2, 0x7f0a0289

    .line 1517
    .local v2, "titleResID":I
    :goto_1
    const v0, 0x7f0e0027

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 1518
    .local v9, "checkBox":Landroid/widget/CheckBox;
    const v0, 0x7f0e0028

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1519
    .local v10, "footer":Landroid/widget/TextView;
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;

    const v3, 0x7f0a0084

    invoke-direct {v0, v12, v10, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$CheckBoxListener;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/widget/TextView;I)V

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1522
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x7f0a0170

    const v5, 0x7f0a0171

    new-instance v6, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$DialogOkListener;

    invoke-direct {v6, p0, v7}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$DialogOkListener;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$1;)V

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancelCustomView(Landroid/view/View;IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStorageExplanatoryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1532
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStorageExplanatoryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStorageExplanatoryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v12}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1515
    .end local v2    # "titleResID":I
    .end local v9    # "checkBox":Landroid/widget/CheckBox;
    .end local v10    # "footer":Landroid/widget/TextView;
    :cond_2
    const v2, 0x7f0a02a8

    .restart local v2    # "titleResID":I
    goto :goto_1
.end method

.method private startEarlyThumbnailInsertAnimation(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 1370
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1371
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(I)V

    .line 1373
    :cond_0
    return-void
.end method

.method private updateUiComponent(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;)V
    .locals 2
    .param p1, "kind"    # Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    .prologue
    .line 1332
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToDialogView(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;)V

    .line 1333
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    if-ne p1, v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->updateMenuItems(Z)V

    .line 1336
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAndShowStorageExplanatoryDialog()V
    .locals 3

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isCurrentStorageExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mPref:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    const-string v1, "4K2K_EXPLANATORY_DISABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1488
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->showStorageExplanatoryDialog()V

    .line 1491
    :cond_0
    return-void
.end method

.method public closeReviewWindow()V
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->hide()V

    .line 1575
    :cond_0
    return-void
.end method

.method public getFinderRectFromPreviewSize(Landroid/content/Context;II)Landroid/graphics/Rect;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getViewFinderRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 409
    .local v2, "displayWidth":I
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getViewFinderRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 412
    .local v0, "displayHeight":I
    int-to-float v9, p2

    int-to-float v10, p3

    div-float v7, v9, v10

    .line 413
    .local v7, "previewRatio":F
    int-to-float v9, v2

    int-to-float v10, v0

    div-float v1, v9, v10

    .line 418
    .local v1, "displayRatio":F
    cmpl-float v9, v7, v1

    if-lez v9, :cond_0

    .line 419
    move v4, v2

    .line 420
    .local v4, "finderWidth":I
    int-to-float v9, v4

    div-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    .line 428
    .local v3, "finderHeight":I
    :goto_0
    sget-object v9, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    iget-object v10, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-static {v10}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 441
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "ViewFinderVisuals.getFinderREctFromPreviewSize():[UnExpectedState]"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 422
    .end local v3    # "finderHeight":I
    .end local v4    # "finderWidth":I
    :cond_0
    move v3, v0

    .line 423
    .restart local v3    # "finderHeight":I
    int-to-float v9, v3

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v4, v9

    .restart local v4    # "finderWidth":I
    goto :goto_0

    .line 432
    :pswitch_0
    sub-int v9, v2, v4

    div-int/lit8 v5, v9, 0x2

    .line 446
    .local v5, "finderX":I
    :goto_1
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 448
    sub-int v6, v0, v3

    .line 455
    .local v6, "finderY":I
    :goto_2
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v5, v4

    add-int v10, v6, v3

    invoke-direct {v8, v5, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 457
    .local v8, "result":Landroid/graphics/Rect;
    return-object v8

    .line 436
    .end local v5    # "finderX":I
    .end local v6    # "finderY":I
    .end local v8    # "result":Landroid/graphics/Rect;
    :pswitch_1
    const/4 v5, 0x0

    .line 437
    .restart local v5    # "finderX":I
    goto :goto_1

    .line 451
    :cond_1
    sub-int v9, v0, v3

    div-int/lit8 v6, v9, 0x2

    .restart local v6    # "finderY":I
    goto :goto_2

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGpsAcquiredListener()Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;
    .locals 0

    .prologue
    .line 223
    return-object p0
.end method

.method public getLayoutOrientationChangedListener()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;
    .locals 0

    .prologue
    .line 218
    return-object p0
.end method

.method public getRequestId(Z)I
    .locals 2
    .param p1, "isLoadingIconRequired"    # Z

    .prologue
    .line 1345
    const/4 v0, -0x1

    .line 1346
    .local v0, "requestId":I
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1347
    if-eqz p1, :cond_1

    .line 1348
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createContentFrame()I

    move-result v0

    .line 1354
    :cond_0
    :goto_0
    return v0

    .line 1350
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result v0

    goto :goto_0
.end method

.method public onCloseCapturingModeSelector()V
    .locals 5

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToDimSystemUi()V

    .line 1113
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_HIDDEN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1117
    :cond_0
    return-void
.end method

.method public onCloseStorageDialog()V
    .locals 5

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToDimSystemUi()V

    .line 1615
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_HIDDEN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1619
    :cond_0
    return-void
.end method

.method public onDeleted(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "result"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1579
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController()V

    .line 1580
    return-void
.end method

.method public onModeFinish()V
    .locals 3

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->closeCapturingModeSelector()V

    .line 1144
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_HIDDEN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1146
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    .line 1147
    return-void
.end method

.method public onModeSelect(Ljava/lang/String;)V
    .locals 5
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1124
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->closeCapturingModeSelector()V

    .line 1126
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    move-result-object v0

    .line 1129
    .local v0, "capturingMode":Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupCapturingModeSelectorButton(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V

    .line 1131
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->changeCapturingMode(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V

    .line 1132
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_PARAMETER_CHANGED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1133
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_HIDDEN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1135
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->updateShortcutItems()V

    .line 1136
    return-void
.end method

.method public onOpenCapturingModeSelector()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1099
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0, v4}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->closeDialogs(Z)V

    .line 1100
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToRecoverSystemUi()V

    .line 1102
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_DISPLAYED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1104
    return-void
.end method

.method public onOpenStorageDialog()V
    .locals 5

    .prologue
    .line 1600
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->closeCurrentDisplayingUiComponent()V

    .line 1601
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToRecoverSystemUi()V

    .line 1605
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_DISPLAYED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1609
    :cond_0
    return-void
.end method

.method public onReviewWindowClose()V
    .locals 5

    .prologue
    .line 1591
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_HIDDEN:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1595
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToDimSystemUi()V

    .line 1596
    return-void
.end method

.method public onReviewWindowOpen()V
    .locals 5

    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestToRecoverSystemUi()V

    .line 1585
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_UI_COMPONENT_DISPLAYED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1587
    return-void
.end method

.method public varargs onStateChanged(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "currentState"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->onViewFinderStateChanged(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p3, "capturingMode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .prologue
    const/4 v6, 0x0

    .line 1549
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoAutoReview:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->EDIT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    if-ne v0, v1, :cond_2

    .line 1550
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->HIGH_FRAME_RATE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {p3, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1551
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iget-object v1, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mimeType:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->launchEditorHighFrameRate(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iget-object v1, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mimeType:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->launchEditor(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 1559
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mimeType:Ljava/lang/String;

    new-instance v4, Landroid/graphics/Rect;

    iget v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->width:I

    iget v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->height:I

    invoke-direct {v4, v6, v6, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->orientation:I

    move-object v2, p1

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->open(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->closeReviewWindow()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 633
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->pause()V

    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mRetryCount:I

    .line 636
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->clearShortcutTray(Landroid/content/Context;)V

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->closeReviewWindow()V

    .line 641
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->tearDownBlankScreen()V

    .line 642
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 648
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->release()V

    .line 649
    return-void
.end method

.method public requestSetupHeadUpDisplay()V
    .locals 4

    .prologue
    .line 1296
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->requestSetupHeadUpDisplay()V

    .line 1298
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->isBalloonTipsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->show()V

    .line 1302
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setupHeadUpDisplay()V

    .line 1303
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToIdleView()V

    .line 1304
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 1305
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->resume()V

    goto :goto_0
.end method

.method public varargs sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "updateEvent"    # Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 957
    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 959
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->requestSetupHeadUpDisplay()V

    goto :goto_0

    .line 966
    :pswitch_1
    aget-object v5, p2, v7

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 967
    .local v4, "width":I
    aget-object v5, p2, v7

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 968
    .local v1, "height":I
    invoke-direct {p0, v4, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->resizeEvfScope(II)V

    goto :goto_0

    .line 974
    .end local v1    # "height":I
    .end local v4    # "width":I
    :pswitch_2
    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 975
    .local v0, "currentZoom":I
    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->onZoomChanged(I)V

    goto :goto_0

    .line 979
    .end local v0    # "currentZoom":I
    :pswitch_3
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->changeToPauseView()V

    goto :goto_0

    .line 983
    :pswitch_4
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showBlankScreen()V

    goto :goto_0

    .line 987
    :pswitch_5
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    invoke-direct {p0, v5}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->updateUiComponent(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;)V

    goto :goto_0

    .line 991
    :pswitch_6
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->closeCurrentDisplayingUiComponent()V

    goto :goto_0

    .line 995
    :pswitch_7
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 996
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_0

    .line 1000
    :pswitch_8
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v6

    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v5, p2, v8

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContent(ILandroid/net/Uri;)V

    goto :goto_0

    .line 1009
    :pswitch_9
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v6

    aget-object v5, p2, v8

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6, v5}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 1012
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v6

    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v5, 0x2

    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6, v7, v5}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    goto/16 :goto_0

    .line 1020
    :pswitch_a
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v6

    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateRecordingTime(I)V

    .line 1024
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->restartAnimation()V

    goto/16 :goto_0

    .line 1029
    :pswitch_b
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    goto/16 :goto_0

    .line 1035
    :pswitch_c
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    goto/16 :goto_0

    .line 1042
    :pswitch_d
    aget-object v5, p2, v7

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->setEarlyThumbnailView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1048
    :pswitch_e
    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1050
    .local v3, "requestId":I
    array-length v5, p2

    if-le v5, v8, :cond_1

    .line 1051
    aget-object v2, p2, v8

    check-cast v2, Landroid/view/animation/Animation$AnimationListener;

    .line 1052
    .local v2, "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->startEarlyThumbnailInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 1054
    .end local v2    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_1
    invoke-direct {p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->startEarlyThumbnailInsertAnimation(I)V

    goto/16 :goto_0

    .line 1060
    .end local v3    # "requestId":I
    :pswitch_f
    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->showProgress(I)V

    goto/16 :goto_0

    .line 1064
    :pswitch_10
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->startHideThumbnail()V

    goto/16 :goto_0

    .line 1068
    :pswitch_11
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->showStorageDialogOption()V

    goto/16 :goto_0

    .line 957
    nop

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
    .end packed-switch
.end method

.method public setCameraDevice(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;)V
    .locals 0
    .param p1, "cameraDevice"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDevice;

    .line 209
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    .line 232
    iput p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mCurrentOrientation:I

    .line 235
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mHeadUpDisplay:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->setSensorOrientation(I)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setOrientation(I)V

    .line 245
    :cond_1
    return-void
.end method

.method public setStateMachine(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;)V
    .locals 1
    .param p1, "stateMachine"    # Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    .prologue
    .line 193
    if-eqz p1, :cond_1

    .line 195
    invoke-interface {p1, p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->addOnStateChangedListener(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;)V

    .line 203
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    .line 204
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    invoke-interface {v0, p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->removeOnStateChangedListener(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$OnStateChangedListener;)V

    goto :goto_0
.end method

.method public setSurfaceCallbacks(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1626
    iput-boolean p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mEnabledSurfaceCallback:Z

    .line 1627
    return-void
.end method

.method public setupTouchCapture()V
    .locals 3

    .prologue
    .line 550
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .line 552
    .local v0, "touchCapture":Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$TouchCapture:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 564
    :goto_0
    return-void

    .line 554
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;

    new-instance v2, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;

    invoke-direct {v2, p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;)V

    goto :goto_0

    .line 558
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;

    new-instance v2, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;

    invoke-direct {v2, p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonymobile/android/addoncamera/supervideo/view/CaptureArea$CaptureAreaStateListener;)V

    goto :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showBlankScreen()V
    .locals 1

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showBlankScreen()V

    .line 1623
    return-void
.end method

.method public showProgress(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1359
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->showProgress(I)V

    .line 1361
    :cond_0
    return-void
.end method

.method public startEarlyThumbnailInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1379
    :cond_0
    return-void
.end method

.method public startHideThumbnail()V
    .locals 4

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 1386
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const v3, 0x7f040008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1390
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$3;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;)V

    .line 1409
    .local v1, "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1412
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1413
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mEnabledSurfaceCallback:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    .line 265
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mEnabledSurfaceCallback:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    .line 255
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 463
    return-void
.end method
