.class public Lcom/sonymobile/china/collage/free/model/RotationGestureListener;
.super Ljava/lang/Object;
.source "RotationGestureListener.java"

# interfaces
.implements Lcom/sonymobile/china/collage/utils/RotationGestureDetector$OnRotationGestureListener;


# static fields
.field private static final ALIGNMENT_SNAP_ANGLE:F = 2.0f

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAngle:F

.field private final mLayer:Lcom/sonymobile/china/collage/free/model/Layer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/collage/free/model/Layer;)V
    .locals 1
    .param p1, "layer"    # Lcom/sonymobile/china/collage/free/model/Layer;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mLayer:Lcom/sonymobile/china/collage/free/model/Layer;

    .line 42
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/free/model/Layer;->getRotationAngle()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    .line 43
    return-void
.end method


# virtual methods
.method public onRotate(Lcom/sonymobile/china/collage/utils/RotationGestureDetector;)V
    .locals 9
    .param p1, "detector"    # Lcom/sonymobile/china/collage/utils/RotationGestureDetector;

    .prologue
    const/high16 v8, 0x43870000

    const/high16 v7, 0x43340000

    const/high16 v6, 0x42b40000

    const/4 v5, 0x0

    const/high16 v4, 0x40000000

    .line 48
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/utils/RotationGestureDetector;->getDeltaAngle()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 49
    .local v0, "angle":F
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    .line 50
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    const/high16 v3, 0x43b40000

    rem-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    .line 51
    iget v1, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    .line 53
    .local v1, "resultAngle":F
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 54
    const/4 v1, 0x0

    .line 68
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mLayer:Lcom/sonymobile/china/collage/free/model/Layer;

    invoke-virtual {v2, v1}, Lcom/sonymobile/china/collage/free/model/Layer;->setRotationAngle(F)V

    .line 69
    return-void

    .line 55
    :cond_1
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 56
    const/high16 v1, 0x42b40000

    goto :goto_0

    .line 57
    :cond_2
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 58
    const/high16 v1, 0x43340000

    goto :goto_0

    .line 59
    :cond_3
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    sub-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    .line 60
    const/high16 v1, 0x43870000

    goto :goto_0

    .line 61
    :cond_4
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_5

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    add-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 62
    const/high16 v1, -0x3d4c0000

    goto :goto_0

    .line 63
    :cond_5
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_6

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    add-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    .line 64
    const/high16 v1, -0x3ccc0000

    goto :goto_0

    .line 65
    :cond_6
    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sonymobile/china/collage/free/model/RotationGestureListener;->mAngle:F

    add-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 66
    const/high16 v1, -0x3c790000

    goto :goto_0
.end method
