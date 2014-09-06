.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;",
        ">;",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

.field public static final enum PINCH:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

.field public static final enum VOLUME_KEY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    const-string v1, "PINCH"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;->PINCH:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    .line 74
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    const-string v1, "VOLUME_KEY"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;->VOLUME_KEY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;->PINCH:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;->VOLUME_KEY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ZoomType;

    return-object v0
.end method
