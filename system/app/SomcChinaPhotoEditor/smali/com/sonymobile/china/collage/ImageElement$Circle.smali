.class public Lcom/sonymobile/china/collage/ImageElement$Circle;
.super Ljava/lang/Object;
.source "ImageElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/ImageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Circle"
.end annotation


# instance fields
.field public final mCenterX:F

.field public final mCenterY:F

.field public final mRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p1, p0, Lcom/sonymobile/china/collage/ImageElement$Circle;->mCenterX:F

    .line 215
    iput p2, p0, Lcom/sonymobile/china/collage/ImageElement$Circle;->mCenterY:F

    .line 216
    iput p3, p0, Lcom/sonymobile/china/collage/ImageElement$Circle;->mRadius:F

    .line 217
    return-void
.end method
