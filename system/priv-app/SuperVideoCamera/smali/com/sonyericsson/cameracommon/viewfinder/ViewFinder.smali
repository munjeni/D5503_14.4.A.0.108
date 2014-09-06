.class public abstract Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;
.implements Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;
.implements Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;
.implements Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeFinishListener;
.implements Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;,
        Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

.field private mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

.field private mIsRequestedLaterSetup:Z

.field private mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

.field private mPreInflatedHeadUpDispay:Landroid/view/View;

.field private mTargetPreviewRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "visibilityContoller"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 281
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 282
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    .line 283
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 287
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isSetupNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupCapturingModeSelectorLater()V

    return-void
.end method

.method private isAcquired()Z
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGpsAcquired()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isNetworkAcquired()Z

    move-result v2

    or-int v0, v1, v2

    .line 197
    .local v0, "isAcquired":Z
    return v0
.end method

.method private isGeoTagEnabled()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isGeoTagEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isSetupNeeded()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x1

    .line 511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupCapturingModeSelectorLater()V
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupCapturingModeSelector()V

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 519
    return-void
.end method

.method private setupHeadUpDisplay()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDispay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDispay:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setPreInflatedHeadUpDisplay(Landroid/view/View;)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDispay:Landroid/view/View;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(I)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V

    .line 326
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->updateIndicatorState()V

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 337
    :cond_2
    return-void
.end method

.method private updateIndicatorState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isGeoTagEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isAcquiring()Z

    move-result v0

    .line 347
    .local v0, "acquiring":Z
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    .line 348
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    .line 353
    .end local v0    # "acquiring":Z
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->updateLowMemoryIndicator()V

    .line 354
    return-void

    .restart local v0    # "acquiring":Z
    :cond_1
    move v1, v2

    .line 348
    goto :goto_0

    .line 351
    .end local v0    # "acquiring":Z
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    goto :goto_1
.end method

.method private updateLowMemoryIndicator()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->hasEnoughFreeSpace()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 362
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .locals 2
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;->apply(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 178
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    if-ne p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isGeoTagEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isAcquired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    goto :goto_0
.end method

.method public closeCapturingModeSelector()V
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->close()V

    .line 398
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setListenerOfUiComponentContainer(Landroid/view/View$OnTouchListener;)V

    .line 401
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onCloseCapturingModeSelector()V

    .line 403
    :cond_0
    return-void
.end method

.method protected computePreviewRect(Landroid/app/Activity;II)Landroid/graphics/Rect;
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 128
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 140
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "Preview size is not set."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    :goto_0
    return-object v0

    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/app/Activity;F)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method protected disableAccessibilityTalkBack()V
    .locals 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 556
    return-void
.end method

.method protected getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    return-object v0
.end method

.method protected getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    return-object v0
.end method

.method protected invalidatePreviewSize()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    .line 115
    return-void
.end method

.method public isCapturingModeSelectorOpened()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-nez v0, :cond_0

    .line 531
    const/4 v0, 0x0

    .line 533
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->isOpened()Z

    move-result v0

    goto :goto_0
.end method

.method public isHeadUpDesplayReady()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDesplayReady()Z

    move-result v0

    return v0
.end method

.method protected isInvalidatedPreviewSize()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRequestingPreviewSizeChange()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isInvalidatedPreviewSize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAcquired(ZZ)V
    .locals 2
    .param p1, "gps"    # Z
    .param p2, "net"    # Z

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAvailableSizeUpdated(J)V
    .locals 2
    .param p1, "available"    # J

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->hasEnoughFreeSpace()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 435
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCaptureDone()V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->clearTouched()V

    goto :goto_0
.end method

.method public onClickCapturingModeButton(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;)V
    .locals 2
    .param p1, "view"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isSetupNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupCapturingModeSelectorLater()V

    .line 545
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getCurrentCapturingMode()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    move-result-object v0

    .line 546
    .local v0, "mode":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->openCapturingModeSelector(Ljava/lang/String;)V

    .line 549
    :cond_1
    return-void
.end method

.method protected abstract onCloseCapturingModeSelector()V
.end method

.method public onDestinationToSaveChanged()V
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController()V

    goto :goto_0
.end method

.method public onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 3
    .param p1, "changed"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 455
    const/4 v0, 0x2

    .line 456
    .local v0, "orientation":I
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 462
    const/4 v0, 0x2

    .line 465
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    .line 466
    return-void

    .line 458
    :pswitch_0
    const/4 v0, 0x1

    .line 459
    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLost()V
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    goto :goto_0
.end method

.method protected abstract onOpenCapturingModeSelector()V
.end method

.method public onShutterDone()V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->clearTouched()V

    .line 274
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    goto :goto_0
.end method

.method public onStorageStateChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    :cond_0
    return-void
.end method

.method public onZoomChanged(II)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->zoom(II)I

    goto :goto_0
.end method

.method public onZoomChanged(III)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "max"    # I
    .param p3, "maxSr"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(III)I

    goto :goto_0
.end method

.method public openCapturingModeSelector(Ljava/lang/String;)V
    .locals 1
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0, p1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->open(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onOpenCapturingModeSelector()V

    .line 446
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->hide()V

    .line 448
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->stopBalloonTipsCounter()V

    .line 450
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->pause()V

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->closeCapturingModeSelector()V

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->releaseCapturingModeSelector()V

    .line 77
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->release()V

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->releaseCapturingModeSelector()V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->removeOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 94
    :cond_1
    return-void
.end method

.method public releaseCapturingModeSelector()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->release()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    .line 526
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 527
    return-void
.end method

.method public requestSetupHeadUpDisplay()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupHeadUpDisplay()V

    .line 207
    return-void
.end method

.method protected requestToDimSystemUi()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToDimSystemUi()V

    .line 160
    return-void
.end method

.method protected requestToRecoverSystemUi()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRecoverSystemUi()V

    .line 156
    return-void
.end method

.method protected requestToRemoveSystemUi()V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRemoveSystemUi()V

    .line 152
    return-void
.end method

.method public requestUpdateSurfaceSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 211
    int-to-float v4, p1

    int-to-float v5, p2

    div-float v0, v4, v5

    .line 212
    .local v0, "aspectRatio":F
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v4, v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/app/Activity;F)Landroid/graphics/Rect;

    move-result-object v1

    .line 213
    .local v1, "newTarget":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    .line 214
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 230
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v4, v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/app/Activity;F)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v3

    .line 224
    .local v3, "preview":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 226
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 227
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLeft(I)V

    .line 228
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setTop(I)V

    .line 229
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideContentsViewController()V

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController()V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupBlankScreen()V

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->initZoom()V

    .line 70
    :cond_0
    return-void
.end method

.method protected setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(I)V

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDesplayReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setUiOrientation(I)V

    .line 475
    :cond_0
    return-void
.end method

.method public setPreInflatedHeadUpDisplay(Landroid/view/View;)V
    .locals 0
    .param p1, "headUpDisplay"    # Landroid/view/View;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDispay:Landroid/view/View;

    .line 202
    return-void
.end method

.method protected setup(Landroid/view/View;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;->setup(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;Z)V

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->attachToWindow(Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupRotatableToast(Landroid/app/Activity;)V

    .line 300
    return-void
.end method

.method public setupCapturingModeSelector()V
    .locals 3

    .prologue
    .line 479
    new-instance v0, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerFront()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0, p0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setOnModeSelectListener(Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeSelectListener;)V

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0, p0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setOnModeFinishListener(Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeFinishListener;)V

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setUiOrientation(I)V

    .line 485
    return-void
.end method

.method public startSetupCapturingModeSelectorTask()V
    .locals 3

    .prologue
    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 495
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method
