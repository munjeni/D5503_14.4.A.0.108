.class public Lcom/sonymobile/superstamina/gateway/WakelockHandler;
.super Ljava/lang/Object;
.source "WakelockHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-WakelockHandler"


# instance fields
.field private mListener:Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;

.field private mPowerMgrSvc:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/gateway/NativeConnector;)V
    .locals 1
    .param p1, "nativeConnector"    # Lcom/sonymobile/superstamina/gateway/NativeConnector;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/sonymobile/superstamina/gateway/WakelockHandler$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/gateway/WakelockHandler$1;-><init>(Lcom/sonymobile/superstamina/gateway/WakelockHandler;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/WakelockHandler;->mListener:Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;

    .line 42
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService;

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/WakelockHandler;->mPowerMgrSvc:Lcom/android/server/power/PowerManagerService;

    .line 43
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/WakelockHandler;->mListener:Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;

    invoke-virtual {p1, v0}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->addListener(Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/gateway/WakelockHandler;)Lcom/android/server/power/PowerManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/WakelockHandler;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/WakelockHandler;->mPowerMgrSvc:Lcom/android/server/power/PowerManagerService;

    return-object v0
.end method
