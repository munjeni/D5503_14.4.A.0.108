.class public Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SnapshotLinearLayout.java"


# static fields
.field private static final SNAPSHOT_RELATIVE_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SNAPSHOT_RELATIV_OFFSET_ABOVE:F = -1.0f

.field private static final SNAPSHOT_RELATIV_OFFSET_NONE:F


# instance fields
.field private mBitmapSnapshot:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mSnapshotRelativeOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;

    const-class v1, Ljava/lang/Float;

    const-string v2, "snapshotRelativeOffset"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->SNAPSHOT_RELATIVE_OFFSET:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mPaint:Landroid/graphics/Paint;

    .line 42
    return-void
.end method

.method private updateLayoutParamHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 111
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 114
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 102
    const/high16 v2, 0x437f0000

    const/high16 v3, 0x3f800000

    iget v4, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mSnapshotRelativeOffset:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 103
    .local v0, "snapshotAlpha":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    iget v2, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mSnapshotRelativeOffset:F

    iget-object v3, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 105
    .local v1, "snapshotOffset":F
    iget-object v2, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    .end local v0    # "snapshotAlpha":I
    .end local v1    # "snapshotOffset":F
    :cond_0
    return-void
.end method

.method public getSlideSnapshotUpAnimator()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->SNAPSHOT_RELATIVE_OFFSET:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000
    .end array-data
.end method

.method public getSnapshotRelativeOffset()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mSnapshotRelativeOffset:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 96
    return-void
.end method

.method public removeSnapshot()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    .line 72
    :cond_0
    return-void
.end method

.method public setHeightMatchParent()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->updateLayoutParamHeight(I)V

    .line 79
    return-void
.end method

.method public setHeightWrapContent()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->updateLayoutParamHeight(I)V

    .line 86
    return-void
.end method

.method public setSnapshotRelativeOffset(F)V
    .locals 0
    .param p1, "snapshotRelativeOffset"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mSnapshotRelativeOffset:F

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 47
    return-void
.end method

.method public storeCurrentContentAsSnapshot()V
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->removeSnapshot()V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    .line 60
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->mBitmapSnapshot:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 62
    :cond_0
    return-void
.end method
