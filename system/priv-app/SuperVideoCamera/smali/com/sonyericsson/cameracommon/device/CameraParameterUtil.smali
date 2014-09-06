.class public Lcom/sonyericsson/cameracommon/device/CameraParameterUtil;
.super Ljava/lang/Object;
.source "CameraParameterUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/cameracommon/device/CameraParameterUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/device/CameraParameterUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreviewMasFps(Landroid/hardware/Camera$Parameters;)I
    .locals 6
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "max":I
    if-eqz p0, :cond_0

    .line 30
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 31
    .local v0, "fpsRange":[I
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 32
    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 34
    .end local v0    # "fpsRange":[I
    :cond_0
    return v1

    .line 30
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
