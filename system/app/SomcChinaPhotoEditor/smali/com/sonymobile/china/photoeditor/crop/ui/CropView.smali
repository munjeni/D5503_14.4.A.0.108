.class public Lcom/sonymobile/china/photoeditor/crop/ui/CropView;
.super Lcom/sonymobile/china/photoeditor/crop/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/ui/CropView$DetectFaceTask;,
        Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;,
        Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;,
        Lcom/sonymobile/china/photoeditor/crop/ui/CropView$FaceHighlightView;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x4e2

.field private static final ANIMATION_TRIGGER:I = 0x40

.field private static final COLOR_FACE_OUTLINE:I = -0x1000000

.field private static final COLOR_OUTLINE:I = -0xff7501

.field private static final FACE_EYE_RATIO:F = 2.0f

.field private static final FACE_PIXEL_COUNT:I = 0x1d4c0

.field private static final MAX_FACE_COUNT:I = 0x3

.field private static final MAX_SELECTION_RATIO:F = 0.8f

.field private static final MIN_SELECTION_LENGTH:F = 16.0f

.field private static final MIN_SELECTION_RATIO:F = 0.4f

.field private static final MOVE_BLOCK:I = 0x10

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_RIGHT:I = 0x4

.field private static final MOVE_TOP:I = 0x2

.field private static final MSG_UPDATE_FACES:I = 0x1

.field private static final OUTLINE_WIDTH:F = 3.0f

.field private static final SELECTION_RATIO:F = 0.6f

.field private static final SIZE_UNKNOWN:I = -0x1

.field private static final TOUCH_TOLERANCE:I = 0x1e

.field public static final UNSPECIFIED:F = -1.0f


# instance fields
.field private mActivity:Lcom/sonymobile/china/photoeditor/crop/GalleryActivity;

.field private mAnimation:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;

.field private mAspectRatio:F

.field private mFaceDetectionView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$FaceHighlightView;

.field private mFacePaint:Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

.field private mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

.field private mImageHeight:I

.field private mImageRotation:I

.field private mImageView:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

.field private mImageWidth:I

.field private mMainHandler:Landroid/os/Handler;

.field private mPaint:Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

.field private mSpotlightRatioX:F

.field private mSpotlightRatioY:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/GalleryActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/sonymobile/china/photoeditor/crop/GalleryActivity;

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x40400000

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;-><init>()V

    .line 94
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mAspectRatio:F

    .line 96
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mSpotlightRatioX:F

    .line 98
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mSpotlightRatioY:F

    .line 108
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;

    .line 110
    iput v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageWidth:I

    .line 112
    iput v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageHeight:I

    .line 116
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mPaint:Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    .line 118
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mFacePaint:Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    .line 123
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mActivity:Lcom/sonymobile/china/photoeditor/crop/GalleryActivity;

    .line 124
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-direct {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryContext;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageView:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    .line 125
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$FaceHighlightView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$FaceHighlightView;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;Lcom/sonymobile/china/photoeditor/crop/ui/CropView$1;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mFaceDetectionView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$FaceHighlightView;

    .line 126
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageView:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->addComponent(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V

    .line 129
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mFaceDetectionView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$FaceHighlightView;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->addComponent(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V

    .line 130
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->addComponent(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mPaint:Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    const v1, -0xff7501

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mPaint:Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->setLineWidth(F)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mFacePaint:Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mFacePaint:Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->setLineWidth(F)V

    .line 140
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$1;

    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/GalleryActivity;->getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$1;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mMainHandler:Landroid/os/Handler;

    .line 147
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mSpotlightRatioY:F

    return v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mPaint:Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)Lcom/sonymobile/china/photoeditor/crop/ui/CropView$FaceHighlightView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mFaceDetectionView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$FaceHighlightView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mFacePaint:Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)Lcom/sonymobile/china/photoeditor/crop/GalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mActivity:Lcom/sonymobile/china/photoeditor/crop/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mAspectRatio:F

    return v0
.end method

.method static synthetic access$900(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    .prologue
    .line 50
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mSpotlightRatioX:F

    return v0
.end method

.method private setImageViewPosition(IIF)Z
    .locals 6
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "scale"    # F

    .prologue
    .line 175
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageWidth:I

    sub-int v0, v4, p1

    .line 176
    .local v0, "inverseX":I
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageHeight:I

    sub-int v1, v4, p2

    .line 177
    .local v1, "inverseY":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageView:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    .line 178
    .local v3, "t":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageRotation:I

    .line 179
    .local v2, "rotation":I
    sparse-switch v2, :sswitch_data_0

    .line 189
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 181
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    .line 187
    :goto_0
    return v4

    .line 183
    :sswitch_1
    const/16 v4, 0x5a

    invoke-virtual {v3, p2, v0, p3, v4}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 185
    :sswitch_2
    const/16 v4, 0xb4

    invoke-virtual {v3, v0, v1, p3, v4}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 187
    :sswitch_3
    const/16 v4, 0x10e

    invoke-virtual {v3, v1, p1, p3, v4}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public detectFaces(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 794
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageRotation:I

    .line 795
    .local v4, "rotation":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 796
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 797
    .local v3, "height":I
    const-wide v8, 0x40fd4c0000000000L

    mul-int v10, v7, v3

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 801
    .local v5, "scale":F
    div-int/lit8 v8, v4, 0x5a

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    .line 802
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v6, v8, -0x2

    .line 803
    .local v6, "w":I
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 804
    .local v2, "h":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 805
    .local v1, "faceBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 806
    .local v0, "canvas":Landroid/graphics/Canvas;
    int-to-float v8, v4

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v2, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 807
    int-to-float v8, v6

    int-to-float v9, v7

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v3

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 808
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v13}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 820
    :goto_0
    new-instance v8, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$DetectFaceTask;

    invoke-direct {v8, p0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$DetectFaceTask;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$DetectFaceTask;->start()V

    .line 821
    return-void

    .line 810
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "faceBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "h":I
    .end local v6    # "w":I
    :cond_0
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v6, v8, -0x2

    .line 811
    .restart local v6    # "w":I
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 812
    .restart local v2    # "h":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 813
    .restart local v1    # "faceBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 814
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 815
    int-to-float v8, v4

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 816
    neg-int v8, v2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    neg-int v9, v6

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 817
    int-to-float v8, v6

    int-to-float v9, v3

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v7

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 818
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v13}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getCropRectangle()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 208
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 213
    :goto_0
    return-object v1

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;->access$100(Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v0

    .line 211
    .local v0, "rect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 213
    .local v1, "result":Landroid/graphics/RectF;
    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageWidth:I

    return v0
.end method

.method public initializeHighlightRectangle()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;->setInitRectangle()V

    .line 825
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;->setVisibility(I)V

    .line 826
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 160
    sub-int v1, p4, p2

    .line 161
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 163
    .local v0, "height":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mFaceDetectionView:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$FaceHighlightView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$FaceHighlightView;->layout(IIII)V

    .line 164
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;->layout(IIII)V

    .line 165
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageView:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->layout(IIII)V

    .line 166
    iget v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageHeight:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 167
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;->initialize()V

    .line 168
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mHighlightRectangle:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;->access$100(Lcom/sonymobile/china/photoeditor/crop/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;->parkNow(Landroid/graphics/RectF;)V

    .line 172
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageView:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->freeTextures()V

    .line 834
    return-void
.end method

.method public render(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;

    .line 196
    .local v0, "a":Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;->calculate(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->invalidate()V

    .line 198
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;->getCenterX()I

    move-result v1

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;->getCenterY()I

    move-result v2

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;->getScale()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->setImageViewPosition(IIF)Z

    .line 199
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLView;->render(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 200
    return-void
.end method

.method public renderBackground(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 204
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->clearBuffer()V

    .line 205
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageView:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->prepareTextures()V

    .line 830
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 150
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mAspectRatio:F

    .line 151
    return-void
.end method

.method public setDataModel(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;I)V
    .locals 1
    .param p1, "dataModel"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;
    .param p2, "rotation"    # I

    .prologue
    .line 779
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 780
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageWidth:I

    .line 781
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageHeight:I

    .line 787
    :goto_0
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageRotation:I

    .line 789
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageView:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->setModel(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;)V

    .line 790
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mAnimation:Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$AnimationController;->initialize()V

    .line 791
    return-void

    .line 783
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageWidth:I

    .line 784
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mImageHeight:I

    goto :goto_0
.end method

.method public setSpotlightRatio(FF)V
    .locals 0
    .param p1, "ratioX"    # F
    .param p2, "ratioY"    # F

    .prologue
    .line 154
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mSpotlightRatioX:F

    .line 155
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView;->mSpotlightRatioY:F

    .line 156
    return-void
.end method
