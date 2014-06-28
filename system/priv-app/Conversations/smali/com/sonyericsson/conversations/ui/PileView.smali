.class public Lcom/sonyericsson/conversations/ui/PileView;
.super Lcom/sonyericsson/conversations/ui/SafeGridView;
.source "PileView.java"


# static fields
.field private static final COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final COLLAPSE_TRANSLATION_DURATION:I = 0x118

.field private static final COLLAPSE_TRANSLATION_OFFSET:I = 0x0

.field private static final EXPANSION_COMMON_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final EXPANSION_SCALING_DURATION:I = 0x15e

.field private static final EXPANSION_SCALING_OFFSET:I = 0x0

.field private static final EXPANSION_TRANSLATION_DURATION:I = 0x118

.field private static final EXPANSION_TRANSLATION_OFFSET:I = 0x0

.field private static final EXPANSION_TRANSLATION_OFFSET_INTERVAL:I = 0x32

.field private static final EXPANSION_TRANSLATION_OFFSET_MAX_INTERVAL:I = 0xfa

.field private static final EXPANSION_TRANSLATION_OFFSET_MINIMUM_CHILDREN:I = 0x3

.field private static final POSTCOLLAPSE_FADEOUT_DURATION:J = 0x12cL

.field private static final POSTCOLLAPSE_TRANSLATION_DURATION:I = 0x96

.field private static final POSTCOLLAPSE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final PREEXPANSION_COMMON_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final PREEXPANSION_SCALING_DURATION:I = 0x73

.field private static final PREEXPANSION_SCALING_FACTOR:F = 0.88f

.field private static final PREEXPANSION_SCALING_OFFSET:I = 0x14

.field private static final PREEXPANSION_TRANSLATION_DURATION:I = 0x96

.field public static final RELATIVE_HEIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/sonyericsson/conversations/ui/PileView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final RELATIVE_HEIGHT_COLLAPSED:F = 0.0f

.field public static final RELATIVE_HEIGHT_EXPANDED:F = 1.0f

.field private static final SHOW_HIDE_DURATION:I = 0x258

.field public static final STATE_COLLAPSED:I = 0x0

.field public static final STATE_COLLAPSING:I = 0x28

.field public static final STATE_EXPANDED:I = 0x1e

.field public static final STATE_EXPANDING:I = 0x14

.field public static final STATE_POSTCOLLAPSE_COMPLETE:I = 0x46

.field public static final STATE_POSTCOLLAPSE_FADING:I = 0x3c

.field public static final STATE_PREEXPANSION:I = 0xa

.field public static final STATE_RUNNING_POSTCOLLAPSE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "PileView"

.field private static sWindowAbsTop:F


# instance fields
.field private COLLAPSED_POS_LOCATION:[[I

.field private COLLAPSED_POS_ROTATIONS:[I

.field private mActualMeasureSpecH:I

.field private mActualMeasureSpecW:I

.field private mBitmapSnapshot:Landroid/graphics/Bitmap;

.field private mCollapsedBounds:[I

.field private mDisableHideAnimation:Z

.field private mExpansionListener:Lcom/sonyericsson/conversations/ui/PileViewListener;

.field private mHasDrawnBefore:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPaint:Landroid/graphics/Paint;

.field private final mPostCollapsingTranslationParams:[F

.field private final mPreExpansionTranslationParams:[F

.field private mPreexpandingInProgress:Z

.field private mRelativeHeight:F

.field private mShowing:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/sonyericsson/conversations/ui/PileView;

    const-class v1, Ljava/lang/Float;

    const-string v2, "relativeHeight"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/ui/PileView;->RELATIVE_HEIGHT:Landroid/util/Property;

    .line 66
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/PileView;->PREEXPANSION_COMMON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 83
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/PileView;->EXPANSION_COMMON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 90
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 95
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/PileView;->POSTCOLLAPSE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 186
    const/high16 v0, -0x40800000

    sput v0, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/SafeGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-array v0, v5, [F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v4

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreExpansionTranslationParams:[F

    .line 111
    new-array v0, v5, [F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v4

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPostCollapsingTranslationParams:[F

    .line 120
    iput v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mState:I

    .line 122
    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/PileView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 124
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreexpandingInProgress:Z

    .line 137
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mHasDrawnBefore:Z

    .line 139
    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/PileView;->mExpansionListener:Lcom/sonyericsson/conversations/ui/PileViewListener;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mRelativeHeight:F

    .line 190
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->init()V

    .line 191
    return-void
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 5
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 899
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 903
    .local v2, "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 904
    .local v1, "myMSw":I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 906
    .local v0, "myMSh":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 907
    invoke-virtual {p0, p1, p2, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 908
    return-void
.end method

.method private addOffScreenChildrenOnTop(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/PileViewItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/PileViewItem;>;"
    const/high16 v13, 0x40000000

    const/4 v12, -0x2

    const/high16 v11, 0x40000000

    .line 612
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v8

    sub-int v2, v7, v8

    .line 613
    .local v2, "itemsBelowScreen":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int v0, v7, v8

    .line 617
    .local v0, "firstOffScreenIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 618
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    add-int v8, v0, v1

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/ui/PileViewItem;

    .line 620
    .local v3, "offScreenChild":Lcom/sonyericsson/conversations/ui/PileViewItem;
    if-eqz v3, :cond_0

    .line 621
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d003e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v7, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/view/View;->measure(II)V

    .line 629
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 633
    .local v4, "p":Landroid/widget/AbsListView$LayoutParams;
    const/4 v7, -0x1

    invoke-virtual {p0, v3, v7, v4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 635
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    int-to-float v8, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40c00000

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 639
    .local v5, "xPos":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 640
    .local v6, "yPos":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 645
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    .end local v4    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v5    # "xPos":I
    .end local v6    # "yPos":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v3    # "offScreenChild":Lcom/sonyericsson/conversations/ui/PileViewItem;
    :cond_1
    return-void
.end method

.method private calculateDistanceForCollapse([FLcom/sonyericsson/conversations/ui/PileViewItem;)[F
    .locals 11
    .param p1, "collapsedPosition"    # [F
    .param p2, "child"    # Lcom/sonyericsson/conversations/ui/PileViewItem;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1058
    new-array v3, v10, [I

    .line 1059
    .local v3, "expandedPosition":[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1062
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPostCollapsingTranslationParams:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPostCollapsingTranslationParams:[F

    aget v4, v7, v8

    .line 1064
    .local v4, "preExpansionAnimationOffsetX":F
    :goto_0
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPostCollapsingTranslationParams:[F

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPostCollapsingTranslationParams:[F

    aget v5, v6, v9

    .line 1066
    .local v5, "preExpansionAnimationOffsetY":F
    :goto_1
    aget v0, p1, v8

    .line 1068
    .local v0, "collChildPosX":F
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    aget v1, v6, v8

    .line 1071
    .local v1, "collapseAdjustment":I
    const/4 v6, 0x3

    new-array v2, v6, [F

    aget v6, v3, v8

    int-to-float v6, v6

    add-float/2addr v6, v4

    sub-float/2addr v6, v0

    int-to-float v7, v1

    sub-float/2addr v6, v7

    aput v6, v2, v8

    aget v6, v3, v9

    int-to-float v6, v6

    add-float/2addr v6, v5

    aget v7, p1, v9

    sub-float/2addr v6, v7

    neg-float v6, v6

    aput v6, v2, v9

    aget v6, p1, v10

    aput v6, v2, v10

    .line 1075
    .local v2, "diff":[F
    return-object v2

    .end local v0    # "collChildPosX":F
    .end local v1    # "collapseAdjustment":I
    .end local v2    # "diff":[F
    .end local v4    # "preExpansionAnimationOffsetX":F
    .end local v5    # "preExpansionAnimationOffsetY":F
    :cond_0
    move v4, v6

    .line 1062
    goto :goto_0

    .restart local v4    # "preExpansionAnimationOffsetX":F
    :cond_1
    move v5, v6

    .line 1064
    goto :goto_1
.end method

.method private createItemCollapseAnimation([F)Landroid/view/animation/AnimationSet;
    .locals 6
    .param p1, "diff"    # [F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1040
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    aget v2, p1, v2

    neg-float v2, v2

    aget v3, p1, v4

    invoke-direct {v1, v5, v2, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1041
    .local v1, "translate":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x118

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1042
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1044
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1045
    .local v0, "itemSet":Landroid/view/animation/AnimationSet;
    sget-object v2, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1048
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1049
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    .line 1050
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1051
    return-object v0
.end method

.method private createItemExpansionAnimation([FLcom/sonyericsson/conversations/ui/PileViewItem;)Landroid/view/animation/AnimationSet;
    .locals 15
    .param p1, "collapsedPosition"    # [F
    .param p2, "child"    # Lcom/sonyericsson/conversations/ui/PileViewItem;

    .prologue
    .line 993
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreExpansionTranslationParams:[F

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreExpansionTranslationParams:[F

    const/4 v12, 0x0

    aget v7, v11, v12

    .line 995
    .local v7, "preExpansionAnimationOffsetX":F
    :goto_0
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreExpansionTranslationParams:[F

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreExpansionTranslationParams:[F

    const/4 v12, 0x1

    aget v8, v11, v12

    .line 999
    .local v8, "preExpansionAnimationOffsetY":F
    :goto_1
    const/4 v11, 0x2

    new-array v5, v11, [I

    .line 1000
    .local v5, "expandedPosition":[I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1005
    const/4 v11, 0x0

    aget v2, p1, v11

    .line 1006
    .local v2, "collChildPosX":F
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    const/4 v12, 0x0

    aget v3, v11, v12

    .line 1008
    .local v3, "collapseAdjustment":I
    const/4 v11, 0x3

    new-array v4, v11, [F

    const/4 v11, 0x0

    add-float v12, v2, v7

    const/4 v13, 0x0

    aget v13, v5, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    int-to-float v13, v3

    add-float/2addr v12, v13

    aput v12, v4, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, p1, v12

    add-float/2addr v12, v8

    const/4 v13, 0x1

    aget v13, v5, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    aput v12, v4, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    aget v12, p1, v12

    aput v12, v4, v11

    .line 1015
    .local v4, "diff":[F
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    aget v11, v4, v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v4, v13

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1016
    .local v10, "translate":Landroid/view/animation/Animation;
    const-wide/16 v11, 0x118

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1017
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    const/4 v12, 0x3

    if-lt v11, v12, :cond_0

    .line 1018
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1019
    .local v1, "childIndex":I
    mul-int/lit8 v11, v1, 0x32

    const/16 v12, 0xfa

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v11, v11, 0x0

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1024
    .end local v1    # "childIndex":I
    :cond_0
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v11, 0x3f6147ae

    const/high16 v12, 0x3f800000

    const v13, 0x3f6147ae

    const/high16 v14, 0x3f800000

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 1026
    .local v9, "scale":Landroid/view/animation/Animation;
    const-wide/16 v11, 0x15e

    invoke-virtual {v9, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1027
    const-wide/16 v11, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1031
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x1

    invoke-direct {v6, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1032
    .local v6, "itemSet":Landroid/view/animation/AnimationSet;
    sget-object v11, Lcom/sonyericsson/conversations/ui/PileView;->EXPANSION_COMMON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1033
    invoke-virtual {v6, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1034
    invoke-virtual {v6, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1036
    return-object v6

    .line 993
    .end local v2    # "collChildPosX":F
    .end local v3    # "collapseAdjustment":I
    .end local v4    # "diff":[F
    .end local v5    # "expandedPosition":[I
    .end local v6    # "itemSet":Landroid/view/animation/AnimationSet;
    .end local v7    # "preExpansionAnimationOffsetX":F
    .end local v8    # "preExpansionAnimationOffsetY":F
    .end local v9    # "scale":Landroid/view/animation/Animation;
    .end local v10    # "translate":Landroid/view/animation/Animation;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 995
    .restart local v7    # "preExpansionAnimationOffsetX":F
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method private createPostCollapseAnimation([F)Landroid/view/animation/AnimationSet;
    .locals 8
    .param p1, "start"    # [F

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 946
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPostCollapsingTranslationParams:[F

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPostCollapsingTranslationParams:[F

    .line 950
    .local v0, "postCollapsingParams":[F
    :goto_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 951
    .local v1, "tuck":Landroid/view/animation/AnimationSet;
    sget-object v3, Lcom/sonyericsson/conversations/ui/PileView;->POSTCOLLAPSE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 952
    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 953
    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 955
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    aget v3, p1, v5

    neg-float v3, v3

    aget v4, p1, v5

    neg-float v4, v4

    aget v5, v0, v5

    add-float/2addr v4, v5

    aget v5, p1, v7

    sget v6, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    add-float/2addr v5, v6

    aget v6, p1, v7

    aget v7, v0, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 958
    .local v2, "tuckTranslate":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 960
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 961
    const-wide/16 v3, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    .line 962
    return-object v1

    .line 946
    .end local v0    # "postCollapsingParams":[F
    .end local v1    # "tuck":Landroid/view/animation/AnimationSet;
    .end local v2    # "tuckTranslate":Landroid/view/animation/Animation;
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private createPreExpansionAnimation(I)Landroid/view/animation/AnimationSet;
    .locals 11
    .param p1, "i"    # I

    .prologue
    const/high16 v10, 0x3f800000

    const v9, 0x3f6147ae

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 966
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 967
    .local v0, "preExpansionAnimationSet":Landroid/view/animation/AnimationSet;
    sget-object v3, Lcom/sonyericsson/conversations/ui/PileView;->PREEXPANSION_COMMON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 968
    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    .line 969
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 972
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    aget v3, v3, v6

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    aget v4, v4, v6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreExpansionTranslationParams:[F

    aget v5, v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    aget v5, v5, v8

    int-to-float v5, v5

    sget v6, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    aget v6, v6, v8

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreExpansionTranslationParams:[F

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    sub-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 976
    .local v2, "preExpansionTranslation":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 979
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v10, v9, v10, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 981
    .local v1, "preExpansionScaling":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x73

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 982
    const-wide/16 v3, 0x14

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 984
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 985
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 987
    return-object v0
.end method

.method private determinePileViewItemOrdering(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/PileViewItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/PileViewItem;>;"
    const/4 v7, 0x1

    .line 651
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 652
    .local v2, "allViewsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 654
    .local v1, "adapterCount":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v8

    rem-int v3, v1, v8

    .line 655
    .local v3, "countDiff":I
    if-nez v3, :cond_1

    move v6, v7

    .line 657
    .local v6, "straightOrder":Z
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 659
    .local v0, "actualCollapsedCount":I
    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 662
    :cond_0
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_1
    sub-int v7, v2, v0

    if-lt v4, v7, :cond_3

    .line 663
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/ui/PileViewItem;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 662
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 655
    .end local v0    # "actualCollapsedCount":I
    .end local v4    # "i":I
    .end local v6    # "straightOrder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 670
    .restart local v0    # "actualCollapsedCount":I
    .restart local v6    # "straightOrder":Z
    :cond_2
    add-int/lit8 v5, v2, -0x1

    .line 671
    .local v5, "lastVisibleIndex":I
    if-ne v3, v7, :cond_4

    .line 672
    sub-int v7, v5, v3

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/ui/PileViewItem;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 673
    sub-int v7, v5, v3

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/ui/PileViewItem;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 674
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/ui/PileViewItem;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 681
    .end local v5    # "lastVisibleIndex":I
    :cond_3
    :goto_2
    return-void

    .line 675
    .restart local v5    # "lastVisibleIndex":I
    :cond_4
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    .line 676
    sub-int v7, v5, v3

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/ui/PileViewItem;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 677
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/ui/PileViewItem;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 678
    sub-int v7, v5, v3

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/ui/PileViewItem;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    goto :goto_2
.end method

.method private getAllVisiblePileViewItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/PileViewItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v2, "visibleViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/PileViewItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 603
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/PileViewItem;

    .line 604
    .local v0, "child":Lcom/sonyericsson/conversations/ui/PileViewItem;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    .end local v0    # "child":Lcom/sonyericsson/conversations/ui/PileViewItem;
    :cond_0
    return-object v2
.end method

.method private getCollapseListener(Lcom/sonyericsson/conversations/ui/PileViewItem;ZLandroid/view/animation/AnimationSet;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .param p1, "child"    # Lcom/sonyericsson/conversations/ui/PileViewItem;
    .param p2, "thisIsTheFirstChild"    # Z
    .param p3, "tuck"    # Landroid/view/animation/AnimationSet;

    .prologue
    .line 542
    new-instance v0, Lcom/sonyericsson/conversations/ui/PileView$6;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/sonyericsson/conversations/ui/PileView$6;-><init>(Lcom/sonyericsson/conversations/ui/PileView;Lcom/sonyericsson/conversations/ui/PileViewItem;Landroid/view/animation/AnimationSet;Z)V

    return-object v0
.end method

.method private getCollapsedPositionCount()I
    .locals 1

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionsRel()[[F

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method private getCollapsedPositionsAbs(I)[[F
    .locals 7
    .param p1, "yOffset"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 921
    new-array v0, v6, [[F

    new-array v1, v6, [F

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_LOCATION:[[I

    aget-object v2, v2, v3

    aget v2, v2, v3

    int-to-float v2, v2

    aput v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_LOCATION:[[I

    aget-object v2, v2, v3

    aget v2, v2, v4

    add-int/2addr v2, p1

    int-to-float v2, v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_ROTATIONS:[I

    aget v2, v2, v3

    int-to-float v2, v2

    aput v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [F

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_LOCATION:[[I

    aget-object v2, v2, v4

    aget v2, v2, v3

    int-to-float v2, v2

    aput v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_LOCATION:[[I

    aget-object v2, v2, v4

    aget v2, v2, v4

    add-int/2addr v2, p1

    int-to-float v2, v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_ROTATIONS:[I

    aget v2, v2, v4

    int-to-float v2, v2

    aput v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [F

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_LOCATION:[[I

    aget-object v2, v2, v5

    aget v2, v2, v3

    int-to-float v2, v2

    aput v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_LOCATION:[[I

    aget-object v2, v2, v5

    aget v2, v2, v4

    add-int/2addr v2, p1

    int-to-float v2, v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_ROTATIONS:[I

    aget v2, v2, v5

    int-to-float v2, v2

    aput v2, v1, v5

    aput-object v1, v0, v5

    return-object v0
.end method

.method private getCollapsedPositionsRel()[[F
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionsAbs(I)[[F

    move-result-object v0

    return-object v0
.end method

.method private getExpandingListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 2

    .prologue
    .line 438
    move-object v0, p0

    .line 439
    .local v0, "me":Lcom/sonyericsson/conversations/ui/PileView;
    new-instance v1, Lcom/sonyericsson/conversations/ui/PileView$3;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/conversations/ui/PileView$3;-><init>(Lcom/sonyericsson/conversations/ui/PileView;Lcom/sonyericsson/conversations/ui/PileView;)V

    return-object v1
.end method

.method private getFadeListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 509
    new-instance v0, Lcom/sonyericsson/conversations/ui/PileView$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/PileView$4;-><init>(Lcom/sonyericsson/conversations/ui/PileView;)V

    return-object v0
.end method

.method private getPreExpansionListener(Ljava/lang/Runnable;)Landroid/view/animation/Animation$AnimationListener;
    .locals 2
    .param p1, "launchExpansion"    # Ljava/lang/Runnable;

    .prologue
    .line 375
    move-object v0, p0

    .line 377
    .local v0, "me":Lcom/sonyericsson/conversations/ui/PileView;
    new-instance v1, Lcom/sonyericsson/conversations/ui/PileView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/sonyericsson/conversations/ui/PileView$1;-><init>(Lcom/sonyericsson/conversations/ui/PileView;Lcom/sonyericsson/conversations/ui/PileView;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method private getTuckListener(Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 2
    .param p1, "fade"    # Landroid/view/animation/AlphaAnimation;

    .prologue
    .line 523
    move-object v0, p0

    .line 525
    .local v0, "me":Lcom/sonyericsson/conversations/ui/PileView;
    new-instance v1, Lcom/sonyericsson/conversations/ui/PileView$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/sonyericsson/conversations/ui/PileView$5;-><init>(Lcom/sonyericsson/conversations/ui/PileView;Lcom/sonyericsson/conversations/ui/PileView;Landroid/view/animation/AlphaAnimation;)V

    return-object v1
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPaint:Landroid/graphics/Paint;

    .line 196
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 198
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_ROTATIONS:[I

    .line 199
    const/4 v1, 0x3

    new-array v1, v1, [[I

    new-array v2, v6, [I

    const v3, 0x7f0d004c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d004d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [I

    const v3, 0x7f0d004e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d004f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [I

    const v3, 0x7f0d0050

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f0d0051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v2, v5

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/PileView;->COLLAPSED_POS_LOCATION:[[I

    .line 213
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 214
    return-void
.end method

.method private layoutChildrenCollapsed()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    .line 317
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 319
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 320
    .local v5, "nbrOfPileItems":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v6

    .line 321
    .local v6, "nbrOfPositions":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 322
    .local v7, "nbrOfViewsToGet":I
    sub-int v3, v5, v7

    .line 323
    .local v3, "firstViewToGet":I
    rem-int v2, v3, v6

    .line 327
    .local v2, "firstPositionToUse":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    if-ne v5, v11, :cond_1

    :goto_0
    invoke-virtual {v10, v11}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setDeleteButtonEnabled(Z)V

    .line 344
    new-array v9, v7, [Landroid/view/View;

    .line 346
    .local v9, "views":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 348
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    add-int v11, v3, v4

    invoke-interface {v10, v11, v13, v13}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 349
    .local v1, "currentChild":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 350
    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/conversations/ui/PileView;->addAndMeasureChild(Landroid/view/View;I)V

    move-object v10, v1

    .line 351
    check-cast v10, Lcom/sonyericsson/conversations/ui/PileViewItem;

    add-int v11, v2, v4

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v12

    rem-int/2addr v11, v12

    invoke-direct {p0, v10, v11}, Lcom/sonyericsson/conversations/ui/PileView;->positionCollapsedChild(Lcom/sonyericsson/conversations/ui/PileViewItem;I)V

    .line 353
    add-int v10, v3, v4

    rem-int v0, v10, v7

    .line 354
    .local v0, "childPos":I
    aput-object v1, v9, v0

    .line 346
    .end local v0    # "childPos":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 327
    .end local v1    # "currentChild":Landroid/view/View;
    .end local v4    # "i":I
    .end local v9    # "views":[Landroid/view/View;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 358
    .restart local v4    # "i":I
    .restart local v9    # "views":[Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    :goto_2
    array-length v10, v9

    if-ge v4, v10, :cond_4

    .line 359
    aget-object v8, v9, v4

    .line 361
    .local v8, "view":Landroid/view/View;
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreExpansionTranslationParams:[F

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    if-eqz v10, :cond_3

    .line 362
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/PileView;->createPreExpansionAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 358
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 366
    .end local v8    # "view":Landroid/view/View;
    :cond_4
    array-length v10, v9

    add-int/lit8 v4, v10, -0x1

    :goto_3
    if-ltz v4, :cond_6

    .line 367
    aget-object v8, v9, v4

    .line 368
    .restart local v8    # "view":Landroid/view/View;
    if-eqz v8, :cond_5

    .line 369
    aget-object v10, v9, v4

    invoke-virtual {v10}, Landroid/view/View;->bringToFront()V

    .line 366
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 372
    .end local v8    # "view":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private layoutChildrenCollapsing()V
    .locals 14

    .prologue
    .line 555
    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    sget v13, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    float-to-int v13, v13

    sub-int/2addr v12, v13

    :goto_0
    invoke-direct {p0, v12}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionsAbs(I)[[F

    move-result-object v4

    .line 559
    .local v4, "collapsedPositions":[[F
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getAllVisiblePileViewItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 560
    .local v0, "allViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/PileViewItem;>;"
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/PileView;->addOffScreenChildrenOnTop(Ljava/util/ArrayList;)V

    .line 562
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/PileView;->determinePileViewItemOrdering(Ljava/util/ArrayList;)V

    .line 564
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v8

    .line 566
    .local v8, "nbrOfItemsAboveScreen":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_4

    .line 567
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/PileViewItem;

    .line 569
    .local v1, "child":Lcom/sonyericsson/conversations/ui/PileViewItem;
    add-int v12, v7, v8

    array-length v13, v4

    rem-int/2addr v12, v13

    aget-object v3, v4, v12

    .line 571
    .local v3, "collapsedPosition":[F
    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/conversations/ui/PileView;->calculateDistanceForCollapse([FLcom/sonyericsson/conversations/ui/PileViewItem;)[F

    move-result-object v5

    .line 574
    .local v5, "diff":[F
    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/ui/PileView;->createItemCollapseAnimation([F)Landroid/view/animation/AnimationSet;

    move-result-object v2

    .line 575
    .local v2, "collapse":Landroid/view/animation/AnimationSet;
    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/ui/PileView;->createPostCollapseAnimation([F)Landroid/view/animation/AnimationSet;

    move-result-object v11

    .line 578
    .local v11, "tuck":Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v7, v12, :cond_2

    const/4 v10, 0x1

    .line 579
    .local v10, "thisIsTheLastChild":Z
    :goto_2
    if-nez v7, :cond_3

    const/4 v9, 0x1

    .line 581
    .local v9, "thisIsTheFirstChild":Z
    :goto_3
    if-eqz v10, :cond_0

    .line 582
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f800000

    const/4 v13, 0x0

    invoke-direct {v6, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 584
    .local v6, "fade":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v12, 0x12c

    invoke-virtual {v6, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 585
    const-wide/16 v12, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 586
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 587
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getFadeListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 589
    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/ui/PileView;->getTuckListener(Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 592
    .end local v6    # "fade":Landroid/view/animation/AlphaAnimation;
    :cond_0
    invoke-direct {p0, v1, v9, v11}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapseListener(Lcom/sonyericsson/conversations/ui/PileViewItem;ZLandroid/view/animation/AnimationSet;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 595
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 566
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 555
    .end local v0    # "allViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/PileViewItem;>;"
    .end local v1    # "child":Lcom/sonyericsson/conversations/ui/PileViewItem;
    .end local v2    # "collapse":Landroid/view/animation/AnimationSet;
    .end local v3    # "collapsedPosition":[F
    .end local v4    # "collapsedPositions":[[F
    .end local v5    # "diff":[F
    .end local v7    # "i":I
    .end local v8    # "nbrOfItemsAboveScreen":I
    .end local v9    # "thisIsTheFirstChild":Z
    .end local v10    # "thisIsTheLastChild":Z
    .end local v11    # "tuck":Landroid/view/animation/AnimationSet;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_0

    .line 578
    .restart local v0    # "allViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/ui/PileViewItem;>;"
    .restart local v1    # "child":Lcom/sonyericsson/conversations/ui/PileViewItem;
    .restart local v2    # "collapse":Landroid/view/animation/AnimationSet;
    .restart local v3    # "collapsedPosition":[F
    .restart local v4    # "collapsedPositions":[[F
    .restart local v5    # "diff":[F
    .restart local v7    # "i":I
    .restart local v8    # "nbrOfItemsAboveScreen":I
    .restart local v11    # "tuck":Landroid/view/animation/AnimationSet;
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 579
    .restart local v10    # "thisIsTheLastChild":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 597
    .end local v1    # "child":Lcom/sonyericsson/conversations/ui/PileViewItem;
    .end local v2    # "collapse":Landroid/view/animation/AnimationSet;
    .end local v3    # "collapsedPosition":[F
    .end local v5    # "diff":[F
    .end local v10    # "thisIsTheLastChild":Z
    .end local v11    # "tuck":Landroid/view/animation/AnimationSet;
    :cond_4
    return-void
.end method

.method private layoutChildrenExpanded()V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setDeleteButtonEnabled(Z)V

    .line 505
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 506
    return-void
.end method

.method private layoutChildrenExpanding()V
    .locals 10

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 461
    .local v2, "childCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    .local v4, "expansionAnimationArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 467
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    :goto_0
    invoke-direct {p0, v8}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionsAbs(I)[[F

    move-result-object v3

    .line 469
    .local v3, "collapsedPositions":[[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 472
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/PileViewItem;

    .line 473
    .local v1, "child":Lcom/sonyericsson/conversations/ui/PileViewItem;
    if-eqz v1, :cond_0

    .line 474
    array-length v8, v3

    rem-int v8, v5, v8

    aget-object v8, v3, v8

    invoke-direct {p0, v8, v1}, Lcom/sonyericsson/conversations/ui/PileView;->createItemExpansionAnimation([FLcom/sonyericsson/conversations/ui/PileViewItem;)Landroid/view/animation/AnimationSet;

    move-result-object v6

    .line 476
    .local v6, "itemSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 469
    .end local v6    # "itemSet":Landroid/view/animation/AnimationSet;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 467
    .end local v1    # "child":Lcom/sonyericsson/conversations/ui/PileViewItem;
    .end local v3    # "collapsedPositions":[[F
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_0

    .line 481
    .restart local v3    # "collapsedPositions":[[F
    .restart local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 482
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 484
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_3

    .line 485
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getExpandingListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 489
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 490
    .local v7, "preExpansionAnimation":Landroid/view/animation/Animation;
    if-eqz v7, :cond_4

    .line 491
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 493
    :cond_4
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/PileViewItem;

    .line 494
    .restart local v1    # "child":Lcom/sonyericsson/conversations/ui/PileViewItem;
    if-eqz v1, :cond_5

    .line 495
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 481
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 499
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v1    # "child":Lcom/sonyericsson/conversations/ui/PileViewItem;
    .end local v7    # "preExpansionAnimation":Landroid/view/animation/Animation;
    :cond_6
    return-void
.end method

.method private layoutChildrenPreExpansion()V
    .locals 6

    .prologue
    .line 389
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreexpandingInProgress:Z

    if-eqz v4, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreexpandingInProgress:Z

    .line 395
    new-instance v2, Lcom/sonyericsson/conversations/ui/PileView$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/PileView$2;-><init>(Lcom/sonyericsson/conversations/ui/PileView;)V

    .line 402
    .local v2, "launchExpansion":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreExpansionTranslationParams:[F

    if-nez v4, :cond_2

    .line 403
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 406
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 408
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 409
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    .line 410
    .local v3, "preExpansionAnimation":Landroid/view/animation/Animation;
    if-nez v3, :cond_3

    .line 415
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->createPreExpansionAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    .line 416
    const-string v4, "PileView"

    const-string v5, "pre-expansion animation was not prepared as it was expected to. Trying to recover"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_3
    if-eqz v3, :cond_5

    .line 422
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_4

    .line 424
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/PileView;->getPreExpansionListener(Ljava/lang/Runnable;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 427
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 429
    :cond_5
    const-string v4, "PileView"

    const-string v5, "Unable to recover. Skipping to expanded state."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v4, 0x1e

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    goto :goto_0
.end method

.method private positionCollapsedChild(Lcom/sonyericsson/conversations/ui/PileViewItem;I)V
    .locals 6
    .param p1, "currentChild"    # Lcom/sonyericsson/conversations/ui/PileViewItem;
    .param p2, "pos"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 913
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionsRel()[[F

    move-result-object v1

    aget-object v0, v1, p2

    .line 914
    .local v0, "relativePosition":[F
    aget v1, v0, v3

    float-to-int v1, v1

    aget v2, v0, v5

    float-to-int v2, v2

    aget v3, v0, v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    aget v4, v0, v5

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 918
    return-void
.end method


# virtual methods
.method public cloneCollapsedBounds(Lcom/sonyericsson/conversations/ui/PileView;)V
    .locals 6
    .param p1, "masterPile"    # Lcom/sonyericsson/conversations/ui/PileView;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 826
    if-eqz p1, :cond_0

    .line 827
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 830
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 831
    const/4 v1, 0x4

    new-array v1, v1, [I

    aget v2, v0, v3

    aput v2, v1, v3

    aget v2, v0, v4

    aput v2, v1, v4

    aget v2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v5

    const/4 v2, 0x3

    aget v3, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v1, v2

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    .line 837
    .end local v0    # "location":[I
    :cond_0
    return-void

    .line 827
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected collapse()V
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    .line 234
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1159
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1160
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000

    iget v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->mRelativeHeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1162
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1164
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mState:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 749
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->draw(Landroid/graphics/Canvas;)V

    .line 750
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mHasDrawnBefore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mExpansionListener:Lcom/sonyericsson/conversations/ui/PileViewListener;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mExpansionListener:Lcom/sonyericsson/conversations/ui/PileViewListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/conversations/ui/PileViewListener;->onPileDrawnForTheFirstTime(Lcom/sonyericsson/conversations/ui/PileView;)V

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mHasDrawnBefore:Z

    .line 754
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v4, 0x2

    .line 783
    iget v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mState:I

    if-nez v3, :cond_0

    .line 784
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 787
    .local v0, "childLocation":[I
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    .line 790
    .local v1, "myLocation":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 791
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 793
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 794
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 795
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "retVal":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 803
    .end local v0    # "childLocation":[I
    .end local v1    # "myLocation":[I
    :goto_0
    return v2

    .line 801
    .end local v2    # "retVal":Z
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .restart local v2    # "retVal":Z
    goto :goto_0

    .line 784
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 787
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected expand()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mPreExpansionTranslationParams:[F

    if-nez v0, :cond_0

    .line 222
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 5
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 758
    iget v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mState:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    .line 762
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v3

    div-int v2, p2, v3

    .line 763
    .local v2, "row":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v3

    rem-int v0, p1, v3

    .line 765
    .local v0, "hu":I
    sub-int v3, p1, v0

    if-ge p2, v3, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v4

    rem-int v4, p2, v4

    sub-int v1, v3, v4

    .line 775
    .end local v0    # "hu":I
    .end local v2    # "row":I
    :goto_0
    return v1

    .line 770
    .restart local v0    # "hu":I
    .restart local v2    # "row":I
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v3

    mul-int/2addr v3, v2

    add-int/lit8 v4, v0, -0x1

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getCollapsedPositionCount()I

    move-result v4

    rem-int v4, p2, v4

    sub-int v1, v3, v4

    .local v1, "order":I
    goto :goto_0

    .end local v0    # "hu":I
    .end local v1    # "order":I
    .end local v2    # "row":I
    :cond_1
    move v1, p2

    .line 775
    goto :goto_0
.end method

.method public getHideAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 1101
    sget-object v0, Lcom/sonyericsson/conversations/ui/PileView;->RELATIVE_HEIGHT:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeHeight()F
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mRelativeHeight:F

    return v0
.end method

.method public getShowAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 1105
    sget-object v0, Lcom/sonyericsson/conversations/ui/PileView;->RELATIVE_HEIGHT:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mState:I

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mShowing:Z

    if-eqz v0, :cond_1

    .line 1083
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mDisableHideAnimation:Z

    if-nez v0, :cond_0

    .line 1084
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getHideAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1086
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mShowing:Z

    .line 1088
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mShowing:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 721
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mState:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 727
    :sswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->layoutChildrenCollapsed()V

    goto :goto_0

    .line 731
    :sswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->layoutChildrenPreExpansion()V

    goto :goto_0

    .line 735
    :sswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->layoutChildrenExpanding()V

    goto :goto_0

    .line 739
    :sswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->layoutChildrenExpanded()V

    goto :goto_0

    .line 743
    :sswitch_4
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileView;->layoutChildrenCollapsing()V

    goto :goto_0

    .line 721
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 305
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsListView;->onLayout(ZIIII)V

    .line 307
    sget v2, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    const/high16 v3, -0x40800000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "decor":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 310
    .local v1, "outRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 311
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sput v2, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    .line 313
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 292
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 294
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 295
    iput p1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mActualMeasureSpecW:I

    .line 296
    iput p2, p0, Lcom/sonyericsson/conversations/ui/PileView;->mActualMeasureSpecH:I

    .line 297
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 300
    :cond_0
    int-to-float v2, v0

    iget v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mRelativeHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 301
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 267
    iget v1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mState:I

    if-nez v1, :cond_3

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 270
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 272
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 273
    .local v0, "touchResult":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 279
    .end local v0    # "touchResult":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeSnapshot()V
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    .line 1142
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 42
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/PileView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/PileView;->layoutChildren()V

    .line 250
    return-void
.end method

.method public setDisableHideAnimation(Z)V
    .locals 0
    .param p1, "disableHideAnimation"    # Z

    .prologue
    .line 1131
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mDisableHideAnimation:Z

    .line 1132
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 243
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 244
    return-void
.end method

.method public setPileViewExpansionlistener(Lcom/sonyericsson/conversations/ui/PileViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/PileViewListener;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mExpansionListener:Lcom/sonyericsson/conversations/ui/PileViewListener;

    .line 811
    return-void
.end method

.method public setRelativeHeight(F)V
    .locals 0
    .param p1, "relativeHeight"    # F

    .prologue
    .line 1149
    iput p1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mRelativeHeight:F

    .line 1150
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1151
    return-void
.end method

.method public setState(I)V
    .locals 8
    .param p1, "newState"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 848
    iput p1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mState:I

    .line 849
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->mExpansionListener:Lcom/sonyericsson/conversations/ui/PileViewListener;

    if-eqz v2, :cond_0

    .line 850
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->mExpansionListener:Lcom/sonyericsson/conversations/ui/PileViewListener;

    invoke-interface {v2, p1}, Lcom/sonyericsson/conversations/ui/PileViewListener;->onPileViewStateSet(I)V

    .line 853
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 891
    :goto_0
    :sswitch_0
    return-void

    .line 855
    :sswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/PileView;->layoutChildren()V

    .line 856
    invoke-virtual {p0, v5}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0

    .line 864
    :sswitch_2
    iget v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->mActualMeasureSpecW:I

    iget v3, p0, Lcom/sonyericsson/conversations/ui/PileView;->mActualMeasureSpecH:I

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 865
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 870
    .local v0, "locationonscreen":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 872
    aget v2, v0, v5

    aget v3, v0, v7

    sget v4, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    aget v4, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 874
    invoke-virtual {p0, v7}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 875
    const/high16 v2, 0x3f800000

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/PileView;->setRelativeHeight(F)V

    goto :goto_0

    .line 881
    .end local v0    # "locationonscreen":[I
    :sswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/PileView;->layoutChildren()V

    goto :goto_0

    .line 885
    :sswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 887
    .local v1, "screenWidth":I
    invoke-virtual {p0, v5}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 888
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileView;->mCollapsedBounds:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    sget v3, Lcom/sonyericsson/conversations/ui/PileView;->sWindowAbsTop:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v5, v5, v1, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    .line 853
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
        0x14 -> :sswitch_2
        0x1e -> :sswitch_0
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch

    .line 865
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public show()V
    .locals 3

    .prologue
    .line 1094
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mShowing:Z

    if-nez v0, :cond_0

    .line 1095
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/PileView;->getShowAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mShowing:Z

    .line 1098
    :cond_0
    return-void
.end method

.method public storeCurrentContentAsSnapshot()V
    .locals 3

    .prologue
    .line 1119
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/PileView;->removeSnapshot()V

    .line 1121
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    .line 1122
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/PileView;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/PileView;->draw(Landroid/graphics/Canvas;)V

    .line 1124
    :cond_0
    return-void
.end method
