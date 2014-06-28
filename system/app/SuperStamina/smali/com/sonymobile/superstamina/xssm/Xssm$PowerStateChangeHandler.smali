.class Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;
.super Landroid/os/Handler;
.source "Xssm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/Xssm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerStateChangeHandler"
.end annotation


# instance fields
.field private mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/xssm/Xssm;Landroid/os/PowerManager$WakeLock;Lcom/sonymobile/superstamina/xssm/PowerState;)V
    .locals 0
    .param p1, "xssm"    # Lcom/sonymobile/superstamina/xssm/Xssm;
    .param p2, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p3, "powerState"    # Lcom/sonymobile/superstamina/xssm/PowerState;

    .prologue
    .line 392
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 393
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    .line 394
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 395
    iput-object p3, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;->mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

    .line 396
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    # getter for: Lcom/sonymobile/superstamina/xssm/Xssm;->mXssmNoProcessSync:Z
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$600(Lcom/sonymobile/superstamina/xssm/Xssm;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/xssm/Xssm;->getService()Lcom/sonymobile/superstamina/XperiaPowerService;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContextWrapper;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 409
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;->mXssm:Lcom/sonymobile/superstamina/xssm/Xssm;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;->mPowerState:Lcom/sonymobile/superstamina/xssm/PowerState;

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/Xssm$PowerStateChangeHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    # invokes: Lcom/sonymobile/superstamina/xssm/Xssm;->sendPowerStateChange(Lcom/sonymobile/superstamina/xssm/PowerState;Landroid/os/PowerManager$WakeLock;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/superstamina/xssm/Xssm;->access$700(Lcom/sonymobile/superstamina/xssm/Xssm;Lcom/sonymobile/superstamina/xssm/PowerState;Landroid/os/PowerManager$WakeLock;)V

    .line 410
    return-void
.end method
