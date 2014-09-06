.class public Lcom/sonyericsson/cameracommon/utility/RotationUtil;
.super Ljava/lang/Object;
.source "RotationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAngle(I)F
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 22
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 23
    const/high16 v0, -0x3d4c0000

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
