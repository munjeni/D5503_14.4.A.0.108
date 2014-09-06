.class public Lcom/sonyericsson/cameracommon/status/DeviceStatus;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue",
        "<",
        "Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

.field public static final KEY:Ljava/lang/String; = "device_status"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;->POWER_OFF:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/DeviceStatus;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;)V
    .locals 0
    .param p1, "val"    # Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "device_status"

    return-object v0
.end method
