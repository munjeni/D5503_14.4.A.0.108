.class public Lcom/android/settings/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;
    }
.end annotation


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field private mColoredRegions:I

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field mLastLeftDiv:I

.field mLastRegion:I

.field mLastRightDiv:I

.field private mLeftColor:I

.field mLineWidth:I

.field private mMiddleColor:I

.field private mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mRightColor:I

.field private mShowIndicator:Z

.field private mShowingGreen:Z

.field private mThemeColor:I

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, -0xff6634

    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v2, p0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    .line 34
    iput v2, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    .line 35
    const v0, -0x777778

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    .line 37
    iput-boolean v1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    .line 41
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 69
    invoke-static {p1, v2}, Lcom/sonymobile/settings/util/ColorReplacer;->getThemeColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mThemeColor:I

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    return-void

    :cond_0
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method private pickColor(II)I
    .locals 1
    .param p1, "color"    # I
    .param p2, "region"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 183
    const/4 p1, -0x1

    .line 188
    .end local p1    # "color":I
    :cond_0
    :goto_0
    return p1

    .line 185
    .restart local p1    # "color":I
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 186
    const p1, -0xaaaaab

    goto :goto_0
.end method

.method private updateIndicator()V
    .locals 10

    .prologue
    const v3, 0xffffff

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .line 124
    .local v8, "off":I
    if-gez v8, :cond_0

    const/4 v8, 0x0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 127
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    if-nez v0, :cond_1

    .line 139
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v0, :cond_2

    .line 131
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 137
    :goto_1
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v2, v8, 0x2

    int-to-float v4, v2

    const v5, 0xa0a0a0

    const v6, -0x5f5f60

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 134
    :cond_2
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->mThemeColor:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/android/settings/applications/LinearColorBar;->mThemeColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 170
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 193
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 197
    .local v17, "width":I
    const/4 v10, 0x0

    .line 199
    .local v10, "left":I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mRedRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v14, v10, v1

    .line 200
    .local v14, "right":I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v15, v14, v1

    .line 201
    .local v15, "right2":I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mGreenRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v16, v15, v1

    .line 204
    .local v16, "right3":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v1, :cond_7

    .line 205
    move v8, v15

    .line 206
    .local v8, "indicatorLeft":I
    move/from16 v9, v16

    .line 212
    .local v9, "indicatorRight":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    if-ne v1, v8, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingRight:I

    if-eq v1, v9, :cond_2

    .line 213
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 215
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    if-eqz v1, :cond_1

    if-ge v8, v9, :cond_1

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->top:I

    .line 217
    .local v13, "midTopY":I
    const/4 v12, 0x0

    .line 218
    .local v12, "midBottomY":I
    const/16 v18, 0x2

    .line 219
    .local v18, "xoff":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    const/4 v3, 0x0

    const/high16 v4, -0x40000000

    int-to-float v5, v13

    const/high16 v6, -0x40000000

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    int-to-float v3, v13

    int-to-float v4, v9

    const/4 v5, 0x0

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 228
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000

    add-float v11, v1, v2

    .line 229
    .local v11, "lineOffset":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x40000000

    add-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x40000000

    add-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v8

    add-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v8

    add-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v9

    sub-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v9

    sub-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 238
    .end local v11    # "lineOffset":F
    .end local v12    # "midBottomY":I
    .end local v13    # "midTopY":I
    .end local v18    # "xoff":I
    :cond_1
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    .line 239
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingRight:I

    .line 242
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 247
    :cond_3
    if-ge v10, v14, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mThemeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 252
    sub-int v1, v14, v10

    sub-int v17, v17, v1

    .line 253
    move v10, v14

    .line 256
    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/applications/LinearColorBar;->mLastLeftDiv:I

    .line 257
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/applications/LinearColorBar;->mLastRightDiv:I

    .line 259
    move v14, v15

    .line 261
    if-ge v10, v14, :cond_5

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mThemeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 266
    sub-int v1, v14, v10

    sub-int v17, v17, v1

    .line 267
    move v10, v14

    .line 271
    :cond_5
    add-int v14, v10, v17

    .line 272
    if-ge v10, v14, :cond_6

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 278
    :cond_6
    return-void

    .line 208
    .end local v8    # "indicatorLeft":I
    .end local v9    # "indicatorRight":I
    :cond_7
    move v8, v14

    .line 209
    .restart local v8    # "indicatorLeft":I
    move v9, v15

    .restart local v9    # "indicatorRight":I
    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 145
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 152
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v0, v1

    .line 153
    .local v0, "x":I
    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastLeftDiv:I

    if-ge v0, v1, :cond_1

    .line 154
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    .line 160
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 155
    :cond_1
    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRightDiv:I

    if-ge v0, v1, :cond_2

    .line 156
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    goto :goto_1

    .line 158
    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    invoke-interface {v0, v1}, Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;->onRegionTapped(I)V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    .line 178
    :cond_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setColoredRegions(I)V
    .locals 0
    .param p1, "regions"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 91
    return-void
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "red"    # I
    .param p2, "yellow"    # I
    .param p3, "green"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    .line 102
    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    .line 103
    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    .line 104
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 106
    return-void
.end method

.method public setOnRegionTappedListener(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eq p1, v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    .line 84
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 86
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "yellow"    # F
    .param p3, "green"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mRedRatio:F

    .line 95
    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->mYellowRatio:F

    .line 96
    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->mGreenRatio:F

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 98
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0
    .param p1, "showIndicator"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    .line 110
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 112
    return-void
.end method

.method public setShowingGreen(Z)V
    .locals 1
    .param p1, "showingGreen"    # Z

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eq v0, p1, :cond_0

    .line 116
    iput-boolean p1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    .line 117
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 120
    :cond_0
    return-void
.end method
