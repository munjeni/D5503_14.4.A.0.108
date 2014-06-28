.class Lcom/android/phone/SomcTransmitPowerManager$StateInfo;
.super Ljava/lang/Object;
.source "SomcTransmitPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcTransmitPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateInfo"
.end annotation


# instance fields
.field private batteryLevel:I

.field private isPsensorOn:Z

.field private isRFPowerBackoffTriggerOn:Z

.field private isWifiP2pConnected:Z

.field private wifiApState:I

.field private wifiP2pDiscoveryState:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->wifiApState:I

    .line 77
    iput v1, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->batteryLevel:I

    .line 79
    iput-boolean v1, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isRFPowerBackoffTriggerOn:Z

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->wifiP2pDiscoveryState:I

    .line 83
    iput-boolean v1, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isWifiP2pConnected:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isPsensorOn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SomcTransmitPowerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/SomcTransmitPowerManager$1;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTransmitPowerManager$StateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->wifiApState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->batteryLevel:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTransmitPowerManager$StateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->batteryLevel:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTransmitPowerManager$StateInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isRFPowerBackoffTriggerOn:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTransmitPowerManager$StateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->wifiP2pDiscoveryState:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTransmitPowerManager$StateInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isWifiP2pConnected:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTransmitPowerManager$StateInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isPsensorOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isPowerControlRequired()Z

    move-result v0

    return v0
.end method

.method private isPowerControlRequired()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->wifiApState:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->wifiP2pDiscoveryState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isWifiP2pConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isPsensorOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isRFPowerBackoffTriggerOn:Z

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
