.class public Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;
.super Ljava/lang/Object;
.source "ScaleAlphaRenderer.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/animation/Renderer;
.implements Lcom/sonymobile/movablepanes/util/Recyclable;


# static fields
.field private static final mRecycleStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentRect:Landroid/graphics/Rect;

.field private mDuration:I

.field private mEndAlpha:I

.field private mEndScale:F

.field private mIterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mStartAlpha:I

.field private mStartScale:F

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mRecycleStack:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mCurrentRect:Landroid/graphics/Rect;

    .line 53
    return-void
.end method

.method private drawView(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 7
    .param p1, "snapshot"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "progress"    # F

    .prologue
    .line 96
    iget v4, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mStartAlpha:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mEndAlpha:I

    iget v6, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mStartAlpha:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 97
    .local v0, "alpha":I
    iget v4, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mStartScale:F

    iget v5, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mEndScale:F

    iget v6, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mStartScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p4

    add-float v3, v4, v5

    .line 99
    .local v3, "scale":F
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 100
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    .line 101
    .local v1, "centerX":F
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 102
    .local v2, "centerY":F
    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 103
    iget-object v4, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v4, p3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 107
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 108
    return-void
.end method

.method public static obtain()Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;

    invoke-direct {v0}, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "targetRect"    # Landroid/graphics/Rect;
    .param p4, "now"    # J

    .prologue
    .line 79
    iget-wide v1, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mStartTime:J

    sub-long v1, p4, v1

    long-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mDuration:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 80
    .local v0, "progress":F
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v2}, Lcom/sonymobile/movablepanes/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mIterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 82
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->drawView(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 84
    iget-object v1, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    iget-wide v1, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mStartTime:J

    iget v3, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    cmp-long v1, p4, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "targetRect"    # Landroid/graphics/Rect;
    .param p4, "now"    # J

    .prologue
    .line 91
    invoke-static {p1}, Lcom/sonymobile/movablepanes/util/ViewSnapshot;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "snapshot":Landroid/graphics/Bitmap;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v0

    return v0
.end method

.method public getCurrentRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 118
    return-void
.end method

.method public offset(IIJ)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "now"    # J

    .prologue
    .line 122
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mRecycleStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 126
    return-void
.end method

.method public setProperties(ILandroid/view/animation/Interpolator;IIFF)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "startAlpha"    # I
    .param p4, "endAlpha"    # I
    .param p5, "startScale"    # F
    .param p6, "endScale"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mDuration:I

    .line 70
    iput-object p2, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mIterpolator:Landroid/view/animation/Interpolator;

    .line 71
    iput p3, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mStartAlpha:I

    .line 72
    iput p4, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mEndAlpha:I

    .line 73
    iput p5, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mStartScale:F

    .line 74
    iput p6, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mEndScale:F

    .line 75
    return-void
.end method

.method public start(Landroid/graphics/Rect;IIJ)V
    .locals 1
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I
    .param p4, "now"    # J

    .prologue
    .line 112
    iput-wide p4, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mStartTime:J

    .line 113
    iget-object v0, p0, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->mCurrentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    return-void
.end method
