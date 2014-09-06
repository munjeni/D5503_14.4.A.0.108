.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;
.super Ljava/lang/Enum;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

.field public static final enum CREATIVE_EFFECT:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

.field public static final enum FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

.field public static final enum FRONT_CAMERA:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

.field public static final enum MANUAL_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

.field public static final enum MANUAL_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

.field public static final enum PANORAMA:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

.field public static final enum SUPERIOR_AUTO_CAMERAUI:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

.field public static final enum SUPERIOR_AUTO_FASTCAPTURING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

.field public static final enum TIMESHIFT_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

.field public static final enum TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    const-string v1, "SUPERIOR_AUTO_CAMERAUI"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->SUPERIOR_AUTO_CAMERAUI:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 13
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    const-string v1, "MANUAL_PHOTO"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->MANUAL_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 14
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    const-string v1, "MANUAL_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->MANUAL_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 15
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    const-string v1, "FRONT_CAMERA"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->FRONT_CAMERA:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 16
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    const-string v1, "SUPERIOR_AUTO_FASTCAPTURING"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->SUPERIOR_AUTO_FASTCAPTURING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 17
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    const-string v1, "PANORAMA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->PANORAMA:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 18
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    const-string v1, "TIMESHIFT_BURST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->TIMESHIFT_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 19
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    const-string v1, "FOUR_K_VIDEO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    const-string v1, "TIMESHIFT_VIDEO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 21
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    const-string v1, "CREATIVE_EFFECT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->CREATIVE_EFFECT:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .line 11
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->SUPERIOR_AUTO_CAMERAUI:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->MANUAL_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->MANUAL_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->FRONT_CAMERA:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->SUPERIOR_AUTO_FASTCAPTURING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->PANORAMA:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->TIMESHIFT_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->CREATIVE_EFFECT:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    return-object v0
.end method
