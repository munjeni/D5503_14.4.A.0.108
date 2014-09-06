.class public Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
.super Ljava/lang/Object;
.source "BaseViewFinderLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

.field private mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

.field private mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mCurrentOrientation:I

.field private mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

.field private mHeadUpDisplay:Landroid/view/ViewGroup;

.field private mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

.field private mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

.field private mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

.field private mPreInflatedHeadUpDisplay:Landroid/view/View;

.field private mPreview:Landroid/view/View;

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

.field private mRootView:Landroid/view/ViewGroup;

.field private mViewFinderRect:Landroid/graphics/Rect;

.field private mWindowCover:Landroid/view/View;

.field private mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 67
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 77
    const/4 v3, 0x2

    iput v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    .line 80
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 82
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    .line 85
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 88
    new-instance v3, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    .line 90
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 95
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/sonyericsson/cameracommon/R$layout;->preview_container_layout:I

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 98
    .local v2, "previewContainerLayout":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 102
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    .line 108
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method private inflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 447
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 448
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 451
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    .line 458
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, "container":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 460
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 461
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 462
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 464
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 467
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container_fullscreen:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 469
    return-void

    .line 454
    .end local v0    # "container":Landroid/widget/FrameLayout;
    :cond_0
    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->viewfinder_layout:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private releaseBalloonTips()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->releaseBalloonTips()V

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    .line 399
    :cond_0
    return-void
.end method

.method private releaseHeadUpDesplay()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 345
    return-void
.end method

.method private setupBalloonTips()V
    .locals 6

    .prologue
    .line 304
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v4, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_for_mode_selector_base:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    .line 307
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v4, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 309
    .local v2, "paddingbottom":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$dimen;->capturing_mode_selector_button_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 311
    .local v1, "modeSelectorHeight":I
    div-int/lit8 v3, v1, 0x2

    add-int v0, v2, v3

    .line 313
    .local v0, "distanceToModeSelector":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->setupBalloonTips(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;IZ)V

    .line 314
    return-void
.end method

.method private setupCaptureButtonGroup()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->capture_button_group:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    .line 216
    return-void
.end method

.method private setupCapturingModeButton()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->mode_selector_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    .line 264
    return-void
.end method

.method private setupContentsView()V
    .locals 4

    .prologue
    .line 232
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isDeviceInSecurityLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .line 238
    .local v0, "securityLevel":Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 242
    :cond_0
    new-instance v1, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 245
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    .line 247
    return-void

    .line 235
    .end local v0    # "securityLevel":Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NORMAL:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .restart local v0    # "securityLevel":Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    goto :goto_0
.end method

.method private setupRecordingIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_progress_indicator:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v2, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    .line 301
    :cond_0
    return-void
.end method

.method private setupSettingIndicators()V
    .locals 3

    .prologue
    .line 268
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->geo_tag_indicator:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 272
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->low_memory_indicator:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 274
    return-void
.end method

.method private setupZoombar()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->zoombar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setSensorOrientation(I)V

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->initZoom()V

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    return-void
.end method


# virtual methods
.method public addLazyInflatedUiComponent(Landroid/view/View;)V
    .locals 1
    .param p1, "component"    # Landroid/view/View;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 533
    return-void
.end method

.method public addLazyInflatedUiComponentFullScreen(Landroid/view/View;)V
    .locals 1
    .param p1, "component"    # Landroid/view/View;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 537
    return-void
.end method

.method attachToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->preview_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getAllEventListener()Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getAllEventListener()Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->setActivity(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getAllEventListener()Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->enableTouchEvent()V

    .line 135
    return-void
.end method

.method public getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    return-object v0
.end method

.method public getAllEventListener()Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    return-object v0
.end method

.method public getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    return-object v0
.end method

.method public getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->capture_method_indicator_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    return-object v0
.end method

.method public getCenterContainer()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->center_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    return v0
.end method

.method public getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    return-object v0
.end method

.method public getLazyInflatedUiComponentContainerFront()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object v0
.end method

.method public getModeIndicatorContainer()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->mode_indicator_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    return-object v0
.end method

.method public getPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    return-object v0
.end method

.method public getPreviewContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPreviewOverlayContainer()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->preview_overlay_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPreviewRect(Landroid/app/Activity;II)Landroid/graphics/Rect;
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 318
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 334
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->TAG:Ljava/lang/String;

    const-string v2, "Preview size is not set."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 339
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

.method public getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSettingIndicatorContainer()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->setting_indicator_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getViewFinderRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    return-object v0
.end method

.method public hideBlankScreen()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :cond_0
    return-void
.end method

.method public hideContentsViewController()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    .line 357
    return-void
.end method

.method public hideIcons()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 544
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 545
    .local v0, "left":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 546
    .local v1, "right":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 547
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 548
    return-void
.end method

.method public hideLeftIconContainer()V
    .locals 3

    .prologue
    .line 563
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    return-void
.end method

.method public hideRightIconContainer()V
    .locals 3

    .prologue
    .line 573
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 574
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    return-void
.end method

.method public isHeadUpDesplayReady()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 352
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    :cond_2
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 404
    return-void
.end method

.method release()V
    .locals 0

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseContentsViewController()V

    .line 170
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseBalloonTips()V

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseUiComponentContainer()V

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseBlankScreen()V

    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseHeadUpDesplay()V

    .line 174
    return-void
.end method

.method public releaseBlankScreen()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    .line 428
    return-void
.end method

.method public releaseContentsViewController()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 391
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 392
    return-void
.end method

.method public releaseUiComponentContainer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 479
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 485
    return-void
.end method

.method public reloadContentsViewController()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-nez v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupContentsView()V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_0
.end method

.method requestToDimSystemUi()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    .line 501
    return-void
.end method

.method requestToRecoverSystemUi()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToRecoverSystemUi(Landroid/view/View;)V

    .line 505
    return-void
.end method

.method requestToRemoveSystemUi()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToRemoveSystemUi(Landroid/view/View;)V

    .line 497
    return-void
.end method

.method public setListenerOfUiComponentContainer(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 489
    return-void
.end method

.method setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setSensorOrientation(I)V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setSensorOrientation(I)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mBalloonTips:Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->setBalloonTipsOrientation(I)V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 198
    :cond_0
    return-void
.end method

.method public setPreInflatedHeadUpDisplay(Landroid/view/View;)V
    .locals 0
    .param p1, "headUpDisplay"    # Landroid/view/View;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    .line 473
    return-void
.end method

.method setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "isHeadUpDesplayReady":Z
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDesplayReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->TAG:Ljava/lang/String;

    const-string v2, "INFLATE LAYOUT IN COMMON"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->inflate()V

    .line 143
    const/4 v0, 0x1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V

    .line 149
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupCapturingModeButton()V

    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupCaptureButtonGroup()V

    .line 151
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupContentsView()V

    .line 152
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupSettingIndicators()V

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupZoombar()V

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupRecordingIndicator()V

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupBalloonTips()V

    .line 157
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V

    .line 161
    :cond_1
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(I)V

    .line 162
    return-void
.end method

.method public setupBlankScreen()V
    .locals 5

    .prologue
    .line 407
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-nez v3, :cond_0

    .line 408
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 409
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez v1, :cond_1

    .line 417
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .line 412
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    sget v3, Lcom/sonyericsson/cameracommon/R$layout;->camera_window_cover:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    .line 413
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 414
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 415
    .local v0, "coverParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public showBlankScreen()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public showContentsViewController()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    .line 385
    :cond_0
    return-void
.end method

.method public showIcons()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 551
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 552
    .local v0, "left":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 553
    .local v1, "right":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 554
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 555
    return-void
.end method

.method public showLeftIconContainer()V
    .locals 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 559
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 560
    return-void
.end method

.method public showRightIconContainer()V
    .locals 3

    .prologue
    .line 568
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 569
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 570
    return-void
.end method

.method public tearDownBlankScreen()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideBlankScreen()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    .line 424
    :cond_0
    return-void
.end method
