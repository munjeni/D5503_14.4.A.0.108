.class public Lcom/sonyericsson/cameracommon/utility/ProductConfig;
.super Ljava/lang/Object;
.source "ProductConfig.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getMountAngle(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$bool;->is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static shouldReverseZoomDirection(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "landscape"    # Z

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    if-eqz p1, :cond_0

    .line 53
    const/4 v0, 0x1

    goto :goto_0
.end method
