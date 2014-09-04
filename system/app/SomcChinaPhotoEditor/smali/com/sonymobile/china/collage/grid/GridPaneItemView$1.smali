.class Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GridPaneItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/grid/GridPaneItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScale:F

.field final synthetic this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)V
    .locals 1

    .prologue
    .line 409
    iput-object p1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 410
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F
    invoke-static {v0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$000(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->mScale:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x40000000

    const/high16 v4, 0x3f800000

    .line 414
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mFlagForScreenshot:Z
    invoke-static {v0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$100(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    iget v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->mScale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->mScale:F

    .line 416
    iget v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->mScale:F

    const/high16 v1, 0x40400000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->mScale:F

    .line 417
    iget v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->mScale:F

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F
    invoke-static {v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$000(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->mScale:F

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F
    invoke-static {v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$000(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, -0x40af9db22d0e5604L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->mScale:F

    # setter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F
    invoke-static {v0, v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$002(Lcom/sonymobile/china/collage/grid/GridPaneItemView;F)F

    .line 419
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaneDataCallback:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;
    invoke-static {v0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$300(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F
    invoke-static {v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$000(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;
    invoke-static {v2}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$200(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)Lcom/sonymobile/china/collage/ImageElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;->onScale(FI)V

    .line 422
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget v1, v1, Lcom/sonymobile/china/collage/grid/PaneItemView;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget-object v2, v2, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F
    invoke-static {v3}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$000(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v1, v4

    div-float/2addr v1, v5

    iput v1, v0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    .line 423
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget v1, v1, Lcom/sonymobile/china/collage/grid/PaneItemView;->mHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget-object v2, v2, Lcom/sonymobile/china/collage/grid/PaneItemView;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mScaleFactor:F
    invoke-static {v3}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$000(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v1, v4

    div-float/2addr v1, v5

    iput v1, v0, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    .line 424
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPaneDataCallback:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;
    invoke-static {v0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$300(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget v1, v1, Lcom/sonymobile/china/collage/grid/PaneItemView;->mLeft:F

    iget-object v2, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    iget v2, v2, Lcom/sonymobile/china/collage/grid/PaneItemView;->mTop:F

    iget-object v3, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    # getter for: Lcom/sonymobile/china/collage/grid/GridPaneItemView;->mPosInfo:Lcom/sonymobile/china/collage/ImageElement;
    invoke-static {v3}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->access$200(Lcom/sonymobile/china/collage/grid/GridPaneItemView;)Lcom/sonymobile/china/collage/ImageElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;->onMove(FFIZ)V

    .line 425
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/GridPaneItemView$1;->this$0:Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->invalidate()V

    .line 428
    :cond_1
    return v6
.end method
