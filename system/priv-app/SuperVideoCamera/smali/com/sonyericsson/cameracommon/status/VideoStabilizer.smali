.class public Lcom/sonyericsson/cameracommon/status/VideoStabilizer;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "VideoStabilizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue",
        "<",
        "Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;

.field public static final KEY:Ljava/lang/String; = "video_stabilizer"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;->OFF:Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/VideoStabilizer;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;)V
    .locals 0
    .param p1, "val"    # Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "video_stabilizer"

    return-object v0
.end method
