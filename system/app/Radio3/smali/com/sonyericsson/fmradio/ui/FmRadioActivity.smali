.class public Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.super Landroid/app/Activity;
.source "FmRadioActivity.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;
.implements Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;,
        Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;,
        Lcom/sonyericsson/fmradio/ui/FmRadioActivity$PhfMissingDialog;,
        Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;,
        Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;,
        Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;,
        Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;
    }
.end annotation


# static fields
.field private static final ANALYTICS_APPVERSION_CUSTOM_VAR_IDX:I = 0x3

.field private static final ANALYTICS_BUILD_CUSTOM_VAR_IDX:I = 0x2

.field private static final ANALYTICS_MODEL_CUSTOM_VAR_IDX:I = 0x1

.field private static final ANALYTICS_NBRFAVORITES_CUSTOM_VAR_IDX:I = 0x4

.field private static final ANALYTICS_SAMPLE_RATE_CUSTOM_VAR_IDX:I = 0x5

.field private static final KEY_POWER_STATE:Ljava/lang/String; = "keyPowerState"

.field private static final TAG:Ljava/lang/String; = "FMRadioActivity"

.field private static sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;


# instance fields
.field private appStart:Z

.field private isPowerOn:Z

.field private final mAddVisualizerAndRadioUi:Ljava/lang/Runnable;

.field private mBaseLayout:Landroid/widget/FrameLayout;

.field private mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

.field private mFavoritesButton:Landroid/widget/ImageButton;

.field protected mFbAvailable:Z

.field private mFragmentTransactionAllowed:Z

.field private mFrequencyContainer:Landroid/view/View;

.field private mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

.field private mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

.field private mGaHelper:Lcom/sonymobile/gahelper/GaHelper;

.field private mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

.field private mNextStationButton:Landroid/widget/ImageButton;

.field private mOnPaused:Z

.field private mOutputIndicator:Landroid/widget/ImageView;

.field private mPositionTimer:Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;

.field private mPowerOffLayer:Landroid/view/View;

.field private mPrevStationButton:Landroid/widget/ImageButton;

.field private mRadioView:Landroid/view/View;

.field mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

.field private mScaleControllerListener:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

.field private mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

.field private mStartupAndScanProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;

.field private mStereoIndicator:Landroid/widget/TextView;

.field private mThemeSelectDialog:Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;

.field private mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

.field mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

.field private mUiIsOn:Z

.field private mUserInitiatedStart:Z

.field private mVisualizerAdded:Z

.field private mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

.field private triggerAccessibilityEventIfAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    .line 133
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->isPowerOn:Z

    .line 135
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->triggerAccessibilityEventIfAvailable:Z

    .line 137
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->appStart:Z

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerAdded:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .line 157
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOnPaused:Z

    .line 260
    new-instance v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mAddVisualizerAndRadioUi:Ljava/lang/Runnable;

    .line 1471
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .param p1, "x1"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOnPaused:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/service/Tuner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .param p1, "x1"    # Lcom/sonyericsson/fmradio/service/Tuner;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->initTuner(Lcom/sonyericsson/fmradio/service/Tuner;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .param p1, "x1"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateRdsInfo(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .param p1, "x1"    # Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPositionTimer:Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addVisualizer()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addRadioUI(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .param p1, "x1"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addBackgroundDim(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->triggerTouchEvent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateOutputIndicator()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->isPowerOn:Z

    return v0
.end method

.method private addBackgroundDim(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 3
    .param p1, "currentTheme"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .prologue
    .line 1329
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Animal:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1340
    .local v0, "backgroundColor":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1341
    return-void

    .line 1332
    .end local v0    # "backgroundColor":I
    :cond_0
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Gate:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1333
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "backgroundColor":I
    goto :goto_0

    .line 1334
    .end local v0    # "backgroundColor":I
    :cond_1
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Balloon:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1335
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "backgroundColor":I
    goto :goto_0

    .line 1338
    .end local v0    # "backgroundColor":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "backgroundColor":I
    goto :goto_0
.end method

.method private addRadioUI(Z)V
    .locals 4
    .param p1, "background"    # Z

    .prologue
    const/4 v3, -0x1

    .line 1398
    if-eqz p1, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1404
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1411
    :goto_1
    return-void

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1
.end method

.method private addVisualizer()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1359
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerAdded:Z

    if-eqz v1, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    if-nez v1, :cond_2

    .line 1365
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "FMRadioActivity"

    aput-object v2, v1, v7

    const-string v2, "Create UXSurfaceView"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 1367
    new-instance v1, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    invoke-direct {v1, p0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    .line 1368
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->start(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    .line 1369
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 1372
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 1373
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "FMRadioActivity"

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UXSurfaceView, indexOfChild: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 1377
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 1378
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1380
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 1384
    :cond_3
    iput-boolean v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerAdded:Z

    .line 1387
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-eqz v1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1389
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1390
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1391
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/Tuner;->getState()Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateVisualizerState(Lcom/sonyericsson/fmradio/service/Tuner$TunerState;)V

    goto/16 :goto_0
.end method

.method private cancelLikeAvailableCheck()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->cancel()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .line 338
    :cond_0
    return-void
.end method

.method private connectToFmService()V
    .locals 3

    .prologue
    .line 482
    sget-object v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-nez v1, :cond_0

    .line 483
    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmService;->setFeedbackProvider(Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;)V

    .line 485
    invoke-static {p0}, Lcom/sonyericsson/fmradio/ui/MockUtil;->setupFmService(Landroid/content/Context;)V

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "user-initiated-start"

    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUserInitiatedStart:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUserInitiatedStart:Z

    .line 491
    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    invoke-direct {v1, p0, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    .line 492
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->bind(Landroid/content/Intent;I)Z

    .line 497
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 495
    :cond_0
    sget-object v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->initTuner(Lcom/sonyericsson/fmradio/service/Tuner;)V

    goto :goto_0
.end method

.method private dialogIsDisplayed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 782
    iget-boolean v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFragmentTransactionAllowed:Z

    if-eqz v4, :cond_1

    .line 783
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 784
    .local v2, "fragMan":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 785
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const/4 v0, 0x0

    .line 787
    .local v0, "commit":Z
    invoke-virtual {v2, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 788
    .local v1, "frag":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 789
    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 790
    const/4 v0, 0x1

    .line 793
    :cond_0
    if-eqz v0, :cond_1

    .line 794
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 795
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 798
    .end local v0    # "commit":Z
    .end local v1    # "frag":Landroid/app/Fragment;
    .end local v2    # "fragMan":Landroid/app/FragmentManager;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method private dismissPhfMissingDialog()V
    .locals 1

    .prologue
    .line 760
    const-string v0, "phf_missing_dialog"

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissDialog(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method private dismissSelectRegionDialog()V
    .locals 1

    .prologue
    .line 774
    const-string v0, "select_region_dialog"

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissDialog(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method private dismissStartupAndScanProgressDialog()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupAndScanProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupAndScanProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupAndScanProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;

    .line 750
    :cond_0
    return-void
.end method

.method private hideVisualizer()V
    .locals 3

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Off:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1349
    :cond_0
    return-void
.end method

.method private initTuner(Lcom/sonyericsson/fmradio/service/Tuner;)V
    .locals 2
    .param p1, "tuner"    # Lcom/sonyericsson/fmradio/service/Tuner;

    .prologue
    const/4 v1, 0x0

    .line 518
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/fmradio/service/Tuner;->addSignalQualityListener(Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;)V

    .line 522
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onTunerAvailable()V

    .line 524
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 525
    return-void
.end method

.method private initUi()V
    .locals 5

    .prologue
    .line 209
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    .line 210
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    .line 213
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPowerOffLayer:Landroid/view/View;

    .line 214
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const v3, 0x7f0c001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStereoIndicator:Landroid/widget/TextView;

    .line 215
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyContainer:Landroid/view/View;

    .line 216
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const v3, 0x7f0c001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    .line 217
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const v3, 0x7f0c0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevStationButton:Landroid/widget/ImageButton;

    .line 218
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextStationButton:Landroid/widget/ImageButton;

    .line 219
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    .line 220
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    .local v0, "freq":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const v3, 0x7f0c0010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 224
    .local v1, "text":Landroid/widget/TextView;
    new-instance v2, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    invoke-direct {v2, p0, v0, v1}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    .line 225
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setButtonListeners()V

    .line 226
    return-void
.end method

.method private onTunerAvailable()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 531
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/Tuner;->getFmBand()Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v0

    .line 533
    .local v0, "fmBand":Lcom/stericsson/hardware/fm/FmBand;
    new-instance v2, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-direct {v2, v0}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;-><init>(Lcom/stericsson/hardware/fm/FmBand;)V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 534
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-virtual {v2, v0, v3}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->updateWidth(Lcom/stericsson/hardware/fm/FmBand;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;)V

    .line 536
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    const v3, 0x7f0c000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 537
    .local v1, "scaleView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->getFrequency()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;-><init>(Landroid/view/ViewGroup;Lcom/stericsson/hardware/fm/FmBand;ILcom/sonyericsson/fmradio/util/FrequencyFormatter;)V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .line 541
    new-instance v2, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;

    invoke-direct {v2, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleControllerListener:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    .line 568
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleControllerListener:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->addScaleControllerListener(Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;)V

    .line 570
    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerAdded:Z

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 574
    :cond_0
    return-void
.end method

.method private onTunerUnavailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleControllerListener:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->removeScaleControllerListener(Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;)V

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->onDestroy()V

    .line 584
    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/fmradio/service/Tuner;->removeSignalQualityListener(Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;)V

    .line 590
    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setFrequency(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setInfo(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    return-void
.end method

.method private registerForMediaButtonEvents()V
    .locals 3

    .prologue
    .line 466
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 467
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    .local v1, "mediaButtonResponder":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 469
    return-void
.end method

.method private removeVisualizer()V
    .locals 2

    .prologue
    .line 1414
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerAdded:Z

    if-nez v0, :cond_0

    .line 1427
    :goto_0
    return-void

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    if-eqz v0, :cond_1

    .line 1421
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    invoke-virtual {v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->onPause()V

    .line 1422
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    .line 1426
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerAdded:Z

    goto :goto_0
.end method

.method private setButtonListeners()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevStationButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$3;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextStationButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$4;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$5;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    return-void
.end method

.method public static setTuner(Lcom/sonyericsson/fmradio/service/Tuner;)V
    .locals 0
    .param p0, "tuner"    # Lcom/sonyericsson/fmradio/service/Tuner;

    .prologue
    .line 1228
    sput-object p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    .line 1229
    return-void
.end method

.method private setUiOff()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 698
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPowerOffLayer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevStationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 705
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextStationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 706
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 709
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStereoIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 714
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->hideVisualizer()V

    .line 715
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 716
    return-void
.end method

.method private setUiOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 719
    iput-boolean v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    .line 721
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPowerOffLayer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevStationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextStationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 728
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStereoIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 732
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateOutputIndicator()V

    .line 733
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->unhideVisualizer()V

    .line 736
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 737
    return-void
.end method

.method private setupAnalytics()V
    .locals 4

    .prologue
    .line 378
    new-instance v0, Lcom/sonymobile/gahelper/GaHelper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/gahelper/GaHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    invoke-virtual {v0}, Lcom/sonymobile/gahelper/GaHelper;->readAndSetGaEnabled()V

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    invoke-virtual {v0}, Lcom/sonymobile/gahelper/GaHelper;->enableDetailedExceptionTrackingEasyTracker()V

    .line 382
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 384
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 388
    return-void
.end method

.method private showPhfMissingDialog()V
    .locals 3

    .prologue
    .line 753
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFragmentTransactionAllowed:Z

    if-eqz v1, :cond_0

    const-string v1, "phf_missing_dialog"

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dialogIsDisplayed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    invoke-static {}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$PhfMissingDialog;->newInstance()Lcom/sonyericsson/fmradio/ui/FmRadioActivity$PhfMissingDialog;

    move-result-object v0

    .line 755
    .local v0, "dialog":Lcom/sonyericsson/fmradio/ui/FmRadioActivity$PhfMissingDialog;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "phf_missing_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 757
    .end local v0    # "dialog":Lcom/sonyericsson/fmradio/ui/FmRadioActivity$PhfMissingDialog;
    :cond_0
    return-void
.end method

.method private showSelectRegionDialog(Z)V
    .locals 3
    .param p1, "cancelable"    # Z

    .prologue
    .line 764
    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFragmentTransactionAllowed:Z

    if-eqz v2, :cond_0

    const-string v2, "select_region_dialog"

    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dialogIsDisplayed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 765
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/Tuner;->loadRegion()I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;->newInstance(I)Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;

    move-result-object v0

    .line 766
    .local v0, "dialog":Landroid/app/DialogFragment;
    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 767
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 768
    .local v1, "fragMan":Landroid/app/FragmentManager;
    const-string v2, "select_region_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 769
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 771
    .end local v0    # "dialog":Landroid/app/DialogFragment;
    .end local v1    # "fragMan":Landroid/app/FragmentManager;
    :cond_0
    return-void
.end method

.method private showStartupAndScanProgressDialog()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupAndScanProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;

    if-nez v0, :cond_0

    .line 741
    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;->show(Landroid/app/Activity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;
    invoke-static {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;->access$1400(Landroid/app/Activity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupAndScanProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;

    .line 743
    :cond_0
    return-void
.end method

.method private simCardUnavailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 693
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 694
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private triggerTouchEvent(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    if-eqz v1, :cond_0

    .line 1462
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1463
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1464
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->handleTouchEvent(II)V

    .line 1466
    .end local v0    # "loc":[I
    :cond_0
    return-void
.end method

.method private unhideVisualizer()V
    .locals 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Off:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addBackgroundDim(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    .line 1356
    :cond_0
    return-void
.end method

.method private unregisterForMediaButtonEvents()V
    .locals 3

    .prologue
    .line 475
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 477
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .local v1, "mediaButtonResponder":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 479
    return-void
.end method

.method private updateOutputIndicator()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/Tuner;->isSpeakerAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    const v1, 0x7f05000a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRdsInfo(I)V
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    const/4 v0, 0x0

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-nez v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/fmradio/service/Tuner;->isFavorite(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/fmradio/service/Tuner;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStereoIndicatorText(Z)V
    .locals 2
    .param p1, "stereo"    # Z

    .prologue
    .line 231
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStereoIndicator:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string v0, "STEREO"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void

    .line 231
    :cond_0
    const-string v0, "MONO"

    goto :goto_0
.end method

.method private updateVisualizerState(Lcom/sonyericsson/fmradio/service/Tuner$TunerState;)V
    .locals 5
    .param p1, "state"    # Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .prologue
    const/4 v4, 0x0

    .line 1430
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Pause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 1431
    .local v1, "uxState":Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-eqz v2, :cond_0

    .line 1432
    sget-object v2, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->$SwitchMap$com$sonyericsson$fmradio$service$Tuner$TunerState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1448
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1450
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1451
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1452
    return-void

    .line 1434
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Play:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 1435
    goto :goto_0

    .line 1437
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Seek:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 1438
    goto :goto_0

    .line 1441
    :pswitch_2
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Pause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    goto :goto_0

    .line 1445
    :cond_0
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Pause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    goto :goto_0

    .line 1432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setupAnalytics()V

    .line 189
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->initUi()V

    .line 191
    if-nez p1, :cond_0

    .line 192
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUserInitiatedStart:Z

    .line 195
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 197
    new-instance v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    .line 199
    new-instance v0, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;

    invoke-direct {v0}, Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPositionTimer:Lcom/sonyericsson/fmradio/ui/TrackPositionTimer;

    .line 201
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFragmentTransactionAllowed:Z

    .line 203
    if-eqz p1, :cond_1

    .line 204
    const-string v0, "keyPowerState"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->isPowerOn:Z

    .line 206
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 862
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 863
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 864
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 365
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 367
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissStartupAndScanProgressDialog()V

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 370
    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRadioView:Landroid/view/View;

    .line 371
    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mBaseLayout:Landroid/widget/FrameLayout;

    .line 373
    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    .line 375
    return-void
.end method

.method public onNotifyUXThemeChanged(Lcom/sonyericsson/musicvisualizer/UXMusicData;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 8
    .param p1, "musicData"    # Lcom/sonyericsson/musicvisualizer/UXMusicData;
    .param p2, "theme"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 1266
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FMRadioActivity"

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyUXThemeChanged: theme = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 1268
    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mCurrentTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .line 1270
    sget-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;->Off:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1271
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->removeVisualizer()V

    .line 1272
    invoke-direct {p0, v6}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addRadioUI(Z)V

    .line 1275
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "visualizer_changed"

    const-string v2, "Off"

    const-string v3, ""

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerAdded:Z

    if-nez v0, :cond_2

    .line 1280
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addVisualizer()V

    .line 1281
    invoke-direct {p0, v3}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addRadioUI(Z)V

    .line 1285
    :cond_2
    invoke-direct {p0, p2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->addBackgroundDim(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    .line 1288
    sget-object v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->$SwitchMap$com$sonyericsson$musicvisualizer$MusicVisualizerDefinition$UXTheme:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1302
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "visualizer_changed"

    const-string v2, "Unknown"

    const-string v3, ""

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1308
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1309
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1314
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1315
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1319
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/Tuner;->getState()Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateVisualizerState(Lcom/sonyericsson/fmradio/service/Tuner$TunerState;)V

    goto :goto_0

    .line 1290
    :pswitch_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "visualizer_changed"

    const-string v2, "Gate"

    const-string v3, ""

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 1293
    :pswitch_1
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "visualizer_changed"

    const-string v2, "Glow"

    const-string v3, ""

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 1296
    :pswitch_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "visualizer_changed"

    const-string v2, "Animal"

    const-string v3, ""

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 1299
    :pswitch_3
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "visualizer_changed"

    const-string v2, "Balloon"

    const-string v3, ""

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 1288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 869
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-nez v2, :cond_1

    move v1, v0

    .line 926
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 873
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 926
    goto :goto_0

    .line 875
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/Tuner;->searchForStations()V

    goto :goto_0

    .line 878
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/Tuner;->setForcedMonoPlayback(Z)V

    .line 881
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v2, "force_mono"

    const-string v3, "force_mono"

    const-string v4, ""

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 884
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/fmradio/service/Tuner;->setForcedMonoPlayback(Z)V

    .line 887
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v2, "allow_stereo"

    const-string v3, "allow_stereo"

    const-string v4, ""

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 891
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/Tuner;->toggleSpeakerAudio()V

    .line 892
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateOutputIndicator()V

    goto :goto_0

    .line 895
    :pswitch_5
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/Tuner;->togglePower()V

    .line 896
    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->isPowerOn:Z

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->isPowerOn:Z

    .line 897
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->isPowerOn:Z

    if-eqz v0, :cond_0

    .line 898
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->triggerAccessibilityEventIfAvailable:Z

    goto :goto_0

    .line 902
    :pswitch_6
    invoke-static {p0}, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->launchTrackId(Landroid/content/Context;)V

    goto :goto_0

    .line 905
    :pswitch_7
    invoke-static {p0}, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->launchLike(Landroid/content/Context;)V

    goto :goto_0

    .line 908
    :pswitch_8
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showFavoriteListDialog()V

    goto :goto_0

    .line 911
    :pswitch_9
    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showSelectRegionDialog(Z)V

    goto :goto_0

    .line 921
    :pswitch_a
    new-instance v0, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;

    invoke-direct {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mThemeSelectDialog:Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;

    .line 922
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mThemeSelectDialog:Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;

    invoke-virtual {v0, p0, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->initialize(Landroid/content/Context;Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog$UXThemeSelectDialogListener;)V

    .line 923
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mThemeSelectDialog:Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioVisualizerThemeSelectDialog;->show()V

    goto :goto_0

    .line 873
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0026
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOnPaused:Z

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->removeMessages()V

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissPhfMissingDialog()V

    .line 305
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissSelectRegionDialog()V

    .line 307
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->removeVisualizer()V

    .line 308
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->cancelLikeAvailableCheck()V

    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 310
    return-void
.end method

.method public onPlayingInStereo(Z)V
    .locals 0
    .param p1, "inStereo"    # Z

    .prologue
    .line 1218
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateStereoIndicatorText(Z)V

    .line 1219
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v9, 0x7f0c002b

    const v8, 0x7f0c0027

    const v7, 0x7f0c0028

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 802
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-eqz v3, :cond_1

    .line 810
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->isForcedMonoPlayback()Z

    move-result v1

    .line 811
    .local v1, "isMono":Z
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->isSpeakerAudio()Z

    move-result v2

    .line 812
    .local v2, "isSpeaker":Z
    const v3, 0x7f0c002d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_2

    move v3, v4

    :goto_0
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 813
    const v3, 0x7f0c002d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 814
    const v3, 0x7f0c002e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 815
    const v3, 0x7f0c002e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 816
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v2, :cond_3

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 817
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 818
    const v3, 0x7f0c002c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 819
    const v3, 0x7f0c002c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 820
    const v3, 0x7f0c002a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 821
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {p0}, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->trackIdAvailable(Landroid/content/Context;)Z

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 822
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 823
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFbAvailable:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 824
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 825
    const v3, 0x7f0c0026

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v6}, Lcom/sonyericsson/fmradio/service/Tuner;->getFavorites()Ljava/util/SortedMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move v5, v4

    :cond_0
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 827
    const v3, 0x7f0c002f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 828
    const v3, 0x7f0c0030

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 830
    .end local v1    # "isMono":Z
    .end local v2    # "isSpeaker":Z
    :cond_1
    const v3, 0x7f0c0029

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 832
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->cancelLikeAvailableCheck()V

    .line 833
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 834
    .local v0, "fbLike":Landroid/view/MenuItem;
    new-instance v3, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    new-instance v5, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;

    invoke-direct {v5, p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/view/MenuItem;)V

    invoke-direct {v3, p0, v5}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;-><init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;)V

    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .line 851
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->start()V

    .line 857
    return v4

    .end local v0    # "fbLike":Landroid/view/MenuItem;
    .restart local v1    # "isMono":Z
    .restart local v2    # "isSpeaker":Z
    :cond_2
    move v3, v5

    .line 812
    goto/16 :goto_0

    :cond_3
    move v3, v5

    .line 816
    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOnPaused:Z

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFragmentTransactionAllowed:Z

    .line 291
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mAddVisualizerAndRadioUi:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 294
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFragmentTransactionAllowed:Z

    .line 315
    const-string v0, "keyPowerState"

    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->isPowerOn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 317
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 0
    .param p1, "signalStrength"    # I

    .prologue
    .line 1214
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 248
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setUiOff()V

    .line 249
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showStartupAndScanProgressDialog()V

    .line 251
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->connectToFmService()V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    invoke-virtual {v0}, Lcom/sonymobile/gahelper/GaHelper;->subscribeGaSettingChanges()V

    .line 256
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 257
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "/main"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFragmentTransactionAllowed:Z

    .line 346
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onTunerUnavailable()V

    .line 348
    sget-object v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->unbind()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    .line 356
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    invoke-virtual {v0}, Lcom/sonymobile/gahelper/GaHelper;->unsubscribeGaSettingChanges()V

    .line 361
    :cond_1
    return-void
.end method

.method reloadNewFmBand(I)V
    .locals 3
    .param p1, "region"    # I

    .prologue
    .line 1235
    invoke-static {p1}, Lcom/sonyericsson/fmradio/service/FmParams;->createFmBandForRegion(I)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v0

    .line 1236
    .local v0, "band":Lcom/stericsson/hardware/fm/FmBand;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/fmradio/service/Tuner;->saveRegion(I)V

    .line 1237
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/fmradio/service/Tuner;->changeFmBand(Lcom/stericsson/hardware/fm/FmBand;)V

    .line 1238
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/Tuner;->reset()V

    .line 1241
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    if-eqz v1, :cond_0

    .line 1242
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;->removeMessages()V

    .line 1244
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->removeVisualizer()V

    .line 1247
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onTunerUnavailable()V

    .line 1248
    sget-object v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-nez v1, :cond_1

    .line 1249
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;->unbind()V

    .line 1250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    .line 1254
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->initUi()V

    .line 1257
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->connectToFmService()V

    .line 1260
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mAddVisualizerAndRadioUi:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1261
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1262
    return-void
.end method

.method protected showFavoriteDetailsDialog(Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;Z)V
    .locals 3
    .param p1, "fi"    # Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    .param p2, "editMode"    # Z

    .prologue
    .line 456
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFragmentTransactionAllowed:Z

    if-eqz v1, :cond_0

    .line 457
    invoke-static {p1, p2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;->newInstance(Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;Z)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;

    move-result-object v0

    .line 458
    .local v0, "df":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 460
    .end local v0    # "df":Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method

.method protected showFavoriteListDialog()V
    .locals 3

    .prologue
    .line 444
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFragmentTransactionAllowed:Z

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/Tuner;->getFavorites()Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-static {v1, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;->newInstance(Ljava/util/SortedMap;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 451
    .local v0, "df":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 453
    .end local v0    # "df":Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "unused"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v7, 0x0

    .line 600
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->getState()Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    move-result-object v2

    .line 601
    .local v2, "state":Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "FMRadioActivity"

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update: Tuner state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 603
    sget-object v3, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->$SwitchMap$com$sonyericsson$fmradio$service$Tuner$TunerState:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 656
    :cond_0
    :goto_0
    sget-object v3, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    if-eq v2, v3, :cond_1

    .line 657
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->getFrequency()I

    move-result v0

    .line 659
    .local v0, "frequency":I
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    sget-object v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->CLOSEST:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    invoke-virtual {v3, v0, v4}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->moveScaleToFrequency(ILcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;)V

    .line 660
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v4}, Lcom/sonyericsson/fmradio/service/Tuner;->getStations()Ljava/util/SortedMap;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/service/Tuner;->getFavorites()Ljava/util/SortedMap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->updateStationsAndFavorites(Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    .line 663
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setFrequency(Ljava/lang/String;)V

    .line 664
    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateRdsInfo(I)V

    .line 667
    .end local v0    # "frequency":I
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->isPhfMissing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 668
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showPhfMissingDialog()V

    .line 669
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->unregisterForMediaButtonEvents()V

    .line 689
    :goto_1
    return-void

    .line 606
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setUiOff()V

    .line 607
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissStartupAndScanProgressDialog()V

    .line 608
    iget-boolean v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerAdded:Z

    if-eqz v3, :cond_0

    .line 609
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    sget-object v4, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Pause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 611
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v3, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 618
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setUiOn()V

    .line 619
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissStartupAndScanProgressDialog()V

    .line 620
    iget-boolean v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerAdded:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUXSurfaceView:Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;

    invoke-virtual {v3}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceView;->getPlayState()Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Play:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    if-eq v3, v4, :cond_2

    .line 622
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    sget-object v4, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Play:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 624
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mVisualizerHandler:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$VisualizerHandler;

    invoke-virtual {v3, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 627
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 629
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    iget-boolean v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->isPowerOn:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->triggerAccessibilityEventIfAvailable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->appStart:Z

    if-nez v3, :cond_3

    .line 632
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyDisplay:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->accessibilitySayCurrentFrequency(Ljava/lang/String;)V

    .line 633
    iput-boolean v7, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->triggerAccessibilityEventIfAvailable:Z

    goto/16 :goto_0

    .line 634
    :cond_3
    iget-boolean v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->appStart:Z

    if-eqz v3, :cond_0

    .line 636
    iput-boolean v7, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->appStart:Z

    goto/16 :goto_0

    .line 641
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setUiOn()V

    .line 642
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showStartupAndScanProgressDialog()V

    .line 643
    invoke-virtual {p0, v7}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onSignalStrengthChanged(I)V

    goto/16 :goto_0

    .line 647
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setUiOff()V

    .line 648
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showStartupAndScanProgressDialog()V

    goto/16 :goto_0

    .line 651
    :pswitch_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Received update from destroyed Tuner"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 671
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissPhfMissingDialog()V

    .line 673
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->loadRegion()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupAndScanProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;

    if-nez v3, :cond_5

    const-string v3, "select_region_dialog"

    invoke-direct {p0, v3}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dialogIsDisplayed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 676
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->simCardUnavailable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 684
    invoke-direct {p0, v7}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showSelectRegionDialog(Z)V

    .line 687
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->registerForMediaButtonEvents()V

    goto/16 :goto_1

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
