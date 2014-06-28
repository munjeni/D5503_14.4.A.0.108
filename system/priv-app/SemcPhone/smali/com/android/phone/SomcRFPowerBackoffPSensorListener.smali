.class public final Lcom/android/phone/SomcRFPowerBackoffPSensorListener;
.super Ljava/lang/Object;
.source "SomcRFPowerBackoffPSensorListener.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPsensorEventObserver:Landroid/os/UEventObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/phone/SomcRFPowerBackoffPSensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcRFPowerBackoffPSensorListener$1;-><init>(Lcom/android/phone/SomcRFPowerBackoffPSensorListener;)V

    iput-object v0, p0, Lcom/android/phone/SomcRFPowerBackoffPSensorListener;->mPsensorEventObserver:Landroid/os/UEventObserver;

    .line 36
    iput-object p1, p0, Lcom/android/phone/SomcRFPowerBackoffPSensorListener;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/virtual/switch/ad7146/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/phone/SomcRFPowerBackoffPSensorListener;->mPsensorEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/ad7146"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcRFPowerBackoffPSensorListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcRFPowerBackoffPSensorListener;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/phone/SomcRFPowerBackoffPSensorListener;->mContext:Landroid/content/Context;

    return-object v0
.end method
