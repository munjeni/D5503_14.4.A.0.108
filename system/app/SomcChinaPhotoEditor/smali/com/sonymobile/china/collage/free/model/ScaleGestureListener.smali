.class public Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ScaleGestureListener.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final MAX_SCALE_FACTOR:F = 7.0f

.field public static final MIN_SCALE_FACTOR:F = 0.2f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLayer:Lcom/sonymobile/china/collage/free/model/Layer;

.field private mScaleFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/collage/free/model/Layer;)V
    .locals 1
    .param p1, "layer"    # Lcom/sonymobile/china/collage/free/model/Layer;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;->mLayer:Lcom/sonymobile/china/collage/free/model/Layer;

    .line 42
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;->mLayer:Lcom/sonymobile/china/collage/free/model/Layer;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/free/model/Layer;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;->mScaleFactor:F

    .line 43
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 47
    iget v0, p0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;->mScaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;->mScaleFactor:F

    .line 48
    const v0, 0x3e4ccccd

    iget v1, p0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;->mScaleFactor:F

    const/high16 v2, 0x40e00000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;->mScaleFactor:F

    .line 49
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;->mLayer:Lcom/sonymobile/china/collage/free/model/Layer;

    iget v1, p0, Lcom/sonymobile/china/collage/free/model/ScaleGestureListener;->mScaleFactor:F

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/collage/free/model/Layer;->setScaleFactor(F)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method
