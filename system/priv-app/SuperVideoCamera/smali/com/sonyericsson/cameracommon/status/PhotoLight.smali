.class public Lcom/sonyericsson/cameracommon/status/PhotoLight;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "PhotoLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue",
        "<",
        "Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;

.field public static final KEY:Ljava/lang/String; = "photo_light"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;->OFF:Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/PhotoLight;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;)V
    .locals 0
    .param p1, "val"    # Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;

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
    const-string v0, "photo_light"

    return-object v0
.end method
