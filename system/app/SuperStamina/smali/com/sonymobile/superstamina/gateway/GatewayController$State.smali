.class final enum Lcom/sonymobile/superstamina/gateway/GatewayController$State;
.super Ljava/lang/Enum;
.source "GatewayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/gateway/GatewayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/superstamina/gateway/GatewayController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum APN_MISSING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum BT_CONNECTED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum DOCKING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum FLIGHT_MODE:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum GPS_ACTIVE:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum HEADSET_PLUGGED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum NO_SIM:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum PLUGGED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum RESTRICT_BACKGROUND_DATA:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum SCREEN_ON:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum STREAMING_MUSIC:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum WIFI_CONNECTED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum WIFI_DIRECT:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

.field public static final enum WIFI_TETHERING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "SCREEN_ON"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->SCREEN_ON:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "STREAMING_MUSIC"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->STREAMING_MUSIC:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "PLUGGED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->PLUGGED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "GPS_ACTIVE"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->GPS_ACTIVE:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "WIFI_TETHERING"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_TETHERING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "DOCKING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->DOCKING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    .line 120
    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "APN_MISSING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->APN_MISSING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "FLIGHT_MODE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->FLIGHT_MODE:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "NO_SIM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->NO_SIM:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "WIFI_CONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_CONNECTED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "BT_CONNECTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->BT_CONNECTED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "HEADSET_PLUGGED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->HEADSET_PLUGGED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    .line 121
    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "WIFI_DIRECT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_DIRECT:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    new-instance v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    const-string v1, "RESTRICT_BACKGROUND_DATA"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/gateway/GatewayController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->RESTRICT_BACKGROUND_DATA:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    .line 118
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    sget-object v1, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->SCREEN_ON:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->STREAMING_MUSIC:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->PLUGGED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->GPS_ACTIVE:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_TETHERING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->DOCKING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->APN_MISSING:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->FLIGHT_MODE:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->NO_SIM:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_CONNECTED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->BT_CONNECTED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->HEADSET_PLUGGED:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->WIFI_DIRECT:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->RESTRICT_BACKGROUND_DATA:Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->$VALUES:[Lcom/sonymobile/superstamina/gateway/GatewayController$State;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/superstamina/gateway/GatewayController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/superstamina/gateway/GatewayController$State;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/sonymobile/superstamina/gateway/GatewayController$State;->$VALUES:[Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/superstamina/gateway/GatewayController$State;

    return-object v0
.end method
