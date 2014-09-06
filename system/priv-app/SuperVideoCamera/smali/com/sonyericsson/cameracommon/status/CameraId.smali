.class public Lcom/sonyericsson/cameracommon/status/CameraId;
.super Lcom/sonyericsson/cameracommon/status/IntegerValue;
.source "CameraId.java"


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "camera_id"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "fps"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/IntegerValue;-><init>(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "camera_id"

    return-object v0
.end method
