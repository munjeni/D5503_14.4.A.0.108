.class public Lcom/sonyericsson/fmradio/ui/scale/ScaleController;
.super Ljava/lang/Object;
.source "ScaleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;,
        Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;
    }
.end annotation


# static fields
.field private static final SCROLL_FRICTION:F = 3.0f

.field private static final SPRING_DAMPING_RATIO_MOVE:F = 1.0f

.field private static final SPRING_DAMPING_RATIO_SNAP:F = 0.5f

.field private static final SPRING_STIFFNESS_MOVE:F = 200.0f

.field private static final SPRING_STIFFNESS_SNAP:F = 100.0f

.field private static final STATION_START_LEVEL:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentFavorites:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRadioStations:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation
.end field

.field private mExactMin:I

.field private mFavoriteTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

.field private mFavoritesOffset:I

.field private mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

.field private mFmBand:Lcom/stericsson/hardware/fm/FmBand;

.field private mFrequenciesPerPixel:F

.field private mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

.field private mFrequencyTextsOffset:I

.field private mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

.field private mOnPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

.field private mPreviousFrequency:I

.field private mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

.field private mScaleControllerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

.field private mScaleLayout:Landroid/view/ViewGroup;

.field private mSelectableFrequencyWidth:I

.field private mStationTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

.field private mStationsOffset:I

.field private mStationsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

.field private mTotalScaleWidth:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/stericsson/hardware/fm/FmBand;ILcom/sonyericsson/fmradio/util/FrequencyFormatter;)V
    .locals 10
    .param p1, "scaleLayout"    # Landroid/view/ViewGroup;
    .param p2, "fmBand"    # Lcom/stericsson/hardware/fm/FmBand;
    .param p3, "initialFrequency"    # I
    .param p4, "frequencyFormatter"    # Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    .line 176
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentFavorites:Ljava/util/SortedMap;

    .line 179
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentRadioStations:Ljava/util/SortedMap;

    .line 181
    new-instance v8, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;

    invoke-direct {v8, p0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;-><init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    .line 189
    new-instance v8, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;

    invoke-direct {v8, p0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;-><init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoriteTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    .line 211
    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 212
    iput-object p4, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    .line 214
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 216
    .local v5, "resources":Landroid/content/res/Resources;
    const/high16 v8, 0x7f090000

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    .line 218
    iget v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_0

    .line 221
    iget v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    .line 223
    :cond_0
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v8}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    .line 224
    iget v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    div-int/lit8 v7, v8, 0x2

    .line 225
    .local v7, "selectableCenter":I
    int-to-float v8, v7

    iget v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 226
    .local v2, "delta":I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v8}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v8

    sub-int/2addr v8, v2

    iput v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    .line 228
    new-instance v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;

    invoke-direct {v1, v5}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;-><init>(Landroid/content/res/Resources;)V

    .line 229
    .local v1, "backgroundResources":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;
    const v8, 0x7f090001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 230
    .local v3, "gapWidth":I
    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->getDrawableWidth()I

    move-result v8

    invoke-direct {p0, v8, v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->createBackgroundModel(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    .local v0, "backgroundModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;>;"
    const v8, 0x7f0c0013

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    .line 235
    new-instance v6, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    invoke-direct {v6, v0, v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;-><init>(Ljava/util/ArrayList;Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;)V

    .line 237
    .local v6, "scaleBackgroundAdapter":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setAdapter(Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;)V

    .line 238
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 241
    new-instance v8, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    invoke-direct {v8}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    .line 242
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    const/high16 v9, 0x40400000

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->setFriction(F)V

    .line 243
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setDynamics(Lcom/sonyericsson/fmradio/ui/widget/Dynamics;)V

    .line 245
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v8}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v9}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v9}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v9

    div-int/2addr v8, v9

    add-int/lit8 v4, v8, 0x1

    .line 247
    .local v4, "nbrSelectableFrequencies":I
    iget v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v3

    iput v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    .line 250
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleLayout:Landroid/view/ViewGroup;

    .line 254
    const v8, 0x7f0c0014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    .line 256
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-direct {p0, v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->setupFrequencyTextsView(Lcom/sonyericsson/fmradio/ui/widget/StairView;)V

    .line 259
    const v8, 0x7f0c0011

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    .line 260
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iget v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setWrap(I)V

    .line 261
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setOnTapListener(Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;)V

    .line 264
    const v8, 0x7f0c0017

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    .line 265
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iget v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setWrap(I)V

    .line 266
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    const v9, 0x7f090002

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setStairHeight(I)V

    .line 268
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoriteTapListener:Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setOnTapListener(Lcom/sonyericsson/fmradio/ui/widget/StairView$OnTapListener;)V

    .line 270
    new-instance v8, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;

    invoke-direct {v8, p0, p2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;-><init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;Lcom/stericsson/hardware/fm/FmBand;)V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mOnPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    .line 319
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mOnPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->addOnPositionChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;)V

    .line 321
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    new-instance v9, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    invoke-direct {v9, p0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;-><init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)V

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setOnLayoutChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;)V

    .line 347
    sget-object v8, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->NONE:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    invoke-virtual {p0, p3, v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->moveScaleToFrequency(ILcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;)V

    .line 349
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsOffset:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsOffset:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->offsetToScale(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mOnPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsOffset:I

    return v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesOffset:I

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesOffset:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    return-object v0
.end method

.method private createBackgroundModel(II)Ljava/util/ArrayList;
    .locals 13
    .param p1, "drawableWidth"    # I
    .param p2, "gapWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v0, "backgroundModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;>;"
    iget v10, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    div-int/lit8 v9, v10, 0x2

    .line 609
    .local v9, "selectableCenter":I
    int-to-float v10, v9

    iget v11, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 610
    .local v1, "delta":I
    iget-object v10, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v10}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v10

    add-int v2, v10, v1

    .line 612
    .local v2, "exactMax":I
    neg-int v10, p1

    div-int/lit8 v7, v10, 0x2

    .line 614
    .local v7, "positionOffset":I
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    .line 615
    .local v3, "frequency":I
    rem-int/lit8 v10, v3, 0x64

    if-eqz v10, :cond_0

    .line 617
    rem-int/lit8 v10, v3, 0x64

    rsub-int/lit8 v10, v10, 0x64

    add-int/2addr v3, v10

    .line 620
    :cond_0
    const/4 v8, 0x0

    .line 621
    .local v8, "scalePosition":I
    const/4 v4, 0x0

    .line 622
    .local v4, "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    :goto_0
    if-gt v3, v2, :cond_5

    .line 623
    iget v10, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    sub-int v10, v3, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int v6, v10, v7

    .line 627
    .local v6, "position":I
    if-ge v6, v8, :cond_1

    .line 628
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Scale background graphics overlaps"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 632
    :cond_1
    if-le v6, v8, :cond_2

    .line 633
    new-instance v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    .end local v4    # "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    sub-int v10, v6, v8

    invoke-direct {v4, v12, v10}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;-><init>(II)V

    .line 635
    .restart local v4    # "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget v10, v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->width:I

    add-int/2addr v8, v10

    .line 640
    :cond_2
    rem-int/lit16 v10, v3, 0x3e8

    if-nez v10, :cond_3

    .line 641
    new-instance v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    .end local v4    # "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    const/4 v10, 0x2

    invoke-direct {v4, v10, p1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;-><init>(II)V

    .line 650
    .restart local v4    # "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget v10, v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->width:I

    add-int/2addr v8, v10

    .line 622
    add-int/lit8 v3, v3, 0x64

    goto :goto_0

    .line 643
    :cond_3
    rem-int/lit16 v10, v3, 0x1f4

    if-nez v10, :cond_4

    .line 644
    new-instance v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    .end local v4    # "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    const/4 v10, 0x1

    invoke-direct {v4, v10, p1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;-><init>(II)V

    .restart local v4    # "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    goto :goto_1

    .line 647
    :cond_4
    new-instance v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    .end local v4    # "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    const/4 v10, 0x0

    invoke-direct {v4, v10, p1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;-><init>(II)V

    .restart local v4    # "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    goto :goto_1

    .line 655
    .end local v6    # "position":I
    :cond_5
    iget-object v10, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v10}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v10

    iget-object v11, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v11}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v11}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v11

    div-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x1

    .line 657
    .local v5, "nbrSelectableFrequencies":I
    new-instance v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    .end local v4    # "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    iget v10, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    mul-int/2addr v10, v5

    add-int/2addr v10, p2

    sub-int/2addr v10, v8

    invoke-direct {v4, v12, v10}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;-><init>(II)V

    .line 659
    .restart local v4    # "item":Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    return-object v0
.end method

.method private static favoritesChanged(Ljava/util/SortedMap;Ljava/util/SortedMap;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "newMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    .local p1, "oldMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    const/4 v10, 0x1

    .line 475
    invoke-interface {p0}, Ljava/util/SortedMap;->size()I

    move-result v1

    .line 476
    .local v1, "nbrNew":I
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v2

    .line 477
    .local v2, "nbrOld":I
    if-eq v1, v2, :cond_0

    move v9, v10

    .line 498
    :goto_0
    return v9

    .line 481
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    move v9, v10

    .line 482
    goto :goto_0

    .line 485
    :cond_1
    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 486
    .local v5, "newVals":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v8

    .line 487
    .local v8, "oldVals":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 488
    .local v4, "newFavs":[Ljava/lang/Object;
    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 490
    .local v7, "oldFavs":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 491
    aget-object v9, v4, v0

    check-cast v9, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v9}, Lcom/sonyericsson/fmradio/station/Favorite;->getColor()I

    move-result v3

    .line 492
    .local v3, "newColor":I
    aget-object v9, v7, v0

    check-cast v9, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v9}, Lcom/sonyericsson/fmradio/station/Favorite;->getColor()I

    move-result v6

    .line 493
    .local v6, "oldColor":I
    if-eq v3, v6, :cond_2

    move v9, v10

    .line 494
    goto :goto_0

    .line 490
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    .end local v3    # "newColor":I
    .end local v6    # "oldColor":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private offsetToScale(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "scaleRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 353
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 354
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private setupFrequencyTextsView(Lcom/sonyericsson/fmradio/ui/widget/StairView;)V
    .locals 9
    .param p1, "frequencyTextsView"    # Lcom/sonyericsson/fmradio/ui/widget/StairView;

    .prologue
    const/4 v4, 0x0

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 365
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setWrap(I)V

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v0}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v7

    .line 368
    .local v7, "frequency":I
    rem-int/lit16 v0, v7, 0x3e8

    if-eqz v0, :cond_0

    .line 371
    rem-int/lit16 v0, v7, 0x3e8

    rsub-int v0, v0, 0x3e8

    add-int/2addr v7, v0

    .line 374
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v0}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v0

    if-gt v7, v0, :cond_1

    .line 375
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    sub-int v0, v7, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 376
    .local v2, "position":I
    const v0, 0x7f03000b

    invoke-virtual {v8, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 378
    .local v1, "child":Landroid/widget/TextView;
    div-int/lit16 v0, v7, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const/high16 v3, -0x80000000

    const/4 v6, 0x0

    move-object v0, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->addChildView(Landroid/view/View;IIIZLjava/lang/String;)V

    .line 382
    add-int/lit16 v7, v7, 0x3e8

    .line 383
    goto :goto_0

    .line 384
    .end local v1    # "child":Landroid/widget/TextView;
    .end local v2    # "position":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addScaleControllerListener(Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;)V
    .locals 1
    .param p1, "scaleControllerListener"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    return-void
.end method

.method getFrequencyForTest()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I

    return v0
.end method

.method public moveScaleToFrequency(ILcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;)V
    .locals 6
    .param p1, "frequency"    # I
    .param p2, "animationType"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    .prologue
    .line 546
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->isTouchIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 547
    :cond_0
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I

    .line 575
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v0, v3, v4

    .line 554
    .local v0, "modTarget":I
    sget-object v3, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->NONE:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    if-ne p2, v3, :cond_2

    .line 555
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->stopFling()V

    .line 556
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setPosition(I)V

    goto :goto_0

    .line 558
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getPosition()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 562
    .local v2, "scalesFromTargetToPosition":F
    sget-object v3, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->DOWN:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    if-ne p2, v3, :cond_3

    .line 564
    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 572
    .local v1, "multiplier":I
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    const/high16 v4, 0x43480000

    const/high16 v5, 0x3f800000

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->setSpring(FF)V

    .line 573
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget v4, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->animateToPosition(I)V

    goto :goto_0

    .line 565
    .end local v1    # "multiplier":I
    :cond_3
    sget-object v3, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->UP:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    if-ne p2, v3, :cond_4

    .line 567
    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v3

    float-to-int v1, v3

    .restart local v1    # "multiplier":I
    goto :goto_1

    .line 569
    .end local v1    # "multiplier":I
    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .restart local v1    # "multiplier":I
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mOnPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->removeOnPositionChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;)V

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setOnLayoutChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;)V

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setAdapter(Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;)V

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 528
    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 532
    return-void
.end method

.method public removeScaleControllerListener(Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;)V
    .locals 1
    .param p1, "scaleControllerListener"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method

.method protected tapMove(I)V
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    .line 583
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v2, p1}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I

    if-eq p1, v2, :cond_1

    .line 584
    sget-object v2, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->CLOSEST:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->moveScaleToFrequency(ILcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;)V

    .line 586
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    .line 587
    .local v1, "l":Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;
    invoke-interface {v1, p1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;->onFrequencyChanged(I)V

    goto :goto_0

    .line 589
    .end local v1    # "l":Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;
    :cond_0
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I

    .line 591
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public updateStationsAndFavorites(Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "newRadioStations":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .local p2, "newFavorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    if-nez p1, :cond_0

    .line 397
    new-instance p1, Ljava/util/TreeMap;

    .end local p1    # "newRadioStations":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/TreeMap;-><init>()V

    .line 399
    .restart local p1    # "newRadioStations":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    :cond_0
    if-nez p2, :cond_1

    .line 400
    new-instance p2, Ljava/util/TreeMap;

    .end local p2    # "newFavorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/TreeMap;-><init>()V

    .line 403
    .restart local p2    # "newFavorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentFavorites:Ljava/util/SortedMap;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->favoritesChanged(Ljava/util/SortedMap;Ljava/util/SortedMap;)Z

    move-result v17

    .line 406
    .local v17, "favoritesChanged":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentRadioStations:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v22, 0x1

    .line 409
    .local v22, "radioStationsChanged":Z
    :goto_0
    if-nez v17, :cond_4

    if-nez v22, :cond_4

    .line 471
    .end local p1    # "newRadioStations":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .end local p2    # "newFavorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_2
    return-void

    .line 406
    .end local v22    # "radioStationsChanged":Z
    .restart local p1    # "newRadioStations":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .restart local p2    # "newFavorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_3
    const/16 v22, 0x0

    goto :goto_0

    .line 412
    .restart local v22    # "radioStationsChanged":Z
    :cond_4
    if-eqz v17, :cond_5

    .end local p2    # "newFavorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentFavorites:Ljava/util/SortedMap;

    .line 413
    if-eqz v22, :cond_6

    .end local p1    # "newRadioStations":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentRadioStations:Ljava/util/SortedMap;

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    .line 417
    .local v20, "layoutInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentRadioStations:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 422
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 423
    .local v18, "frequency":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    sub-int v2, v18, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 425
    .local v4, "position":I
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 426
    .local v3, "child":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f02004f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 428
    .local v23, "stationDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " MHz"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 431
    .local v8, "clusterName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->addChildView(Landroid/view/View;IIIZLjava/lang/String;)V

    goto :goto_3

    .line 412
    .end local v3    # "child":Landroid/widget/ImageView;
    .end local v4    # "position":I
    .end local v8    # "clusterName":Ljava/lang/String;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .end local v18    # "frequency":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v23    # "stationDrawable":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "newRadioStations":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .restart local p2    # "newFavorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentFavorites:Ljava/util/SortedMap;

    move-object/from16 p2, v0

    goto/16 :goto_1

    .line 413
    .end local p2    # "newFavorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentRadioStations:Ljava/util/SortedMap;

    move-object/from16 p1, v0

    goto/16 :goto_2

    .line 438
    .end local p1    # "newRadioStations":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v20    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f020050

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 440
    .local v14, "favoriteBar":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    .line 441
    .local v5, "offset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f070001

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 446
    .local v6, "numEmptyRows":I
    new-instance v21, Ljava/util/TreeMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentFavorites:Ljava/util/SortedMap;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 448
    .local v21, "nm":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 449
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 450
    .restart local v18    # "frequency":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    sub-int v2, v18, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 451
    .restart local v4    # "position":I
    const v2, 0x7f03000a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 452
    .local v3, "child":Landroid/view/View;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v15

    .line 453
    .local v15, "favoriteName":Ljava/lang/String;
    move-object v8, v15

    .line 454
    .restart local v8    # "clusterName":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v15

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " MHz"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 458
    :cond_8
    const v2, 0x7f0c001d

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 459
    .local v16, "favoriteText":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/station/Favorite;->getColor()I

    move-result v11

    .line 462
    .local v11, "barColor":I
    const v2, 0x7f0c001c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 463
    .local v10, "bar":Landroid/widget/ImageView;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v11, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 464
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 466
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    const/4 v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->addChildView(Landroid/view/View;IIIZLjava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4
.end method
