.class Lcom/android/phone/SomcRFPowerBackoffPSensorListener$1;
.super Landroid/os/UEventObserver;
.source "SomcRFPowerBackoffPSensorListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcRFPowerBackoffPSensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcRFPowerBackoffPSensorListener;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcRFPowerBackoffPSensorListener;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/SomcRFPowerBackoffPSensorListener$1;->this$0:Lcom/android/phone/SomcRFPowerBackoffPSensorListener;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 50
    if-nez p1, :cond_1

    .line 51
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SomcRFPowerBackoffPSensorListener"

    const-string v3, "UEventObserver.UEvent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v2, "/devices/virtual/switch/ad7146"

    const-string v3, "DEVPATH"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string v2, "1"

    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 68
    .local v1, "pSensorStatus":Z
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_2

    .line 69
    const-string v2, "SomcRFPowerBackoffPSensorListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P-sensor Status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonymobile.phone.intent.action.P_SENSOR_STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "pSensorIntent":Landroid/content/Intent;
    const-string v2, "P_SENSOR_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    iget-object v2, p0, Lcom/android/phone/SomcRFPowerBackoffPSensorListener$1;->this$0:Lcom/android/phone/SomcRFPowerBackoffPSensorListener;

    # getter for: Lcom/android/phone/SomcRFPowerBackoffPSensorListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/SomcRFPowerBackoffPSensorListener;->access$000(Lcom/android/phone/SomcRFPowerBackoffPSensorListener;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
