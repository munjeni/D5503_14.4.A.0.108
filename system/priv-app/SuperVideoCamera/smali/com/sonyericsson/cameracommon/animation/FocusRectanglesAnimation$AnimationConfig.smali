.class Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
.super Ljava/lang/Object;
.source "FocusRectanglesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationConfig"
.end annotation


# instance fields
.field public final mDuration:I

.field public final mFromHeight:I

.field public final mFromWidth:I

.field public final mToHeight:I

.field public final mToWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widthId"    # I
    .param p3, "heightId"    # I
    .param p4, "factorId"    # I
    .param p5, "durationId"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 45
    .local v0, "factor":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    .line 47
    iget v2, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    .line 48
    iget v2, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mDuration:I

    .line 51
    return-void
.end method
