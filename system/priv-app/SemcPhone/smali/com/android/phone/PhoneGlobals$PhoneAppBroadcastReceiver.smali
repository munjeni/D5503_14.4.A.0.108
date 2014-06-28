.class Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 1914
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "x1"    # Lcom/android/phone/PhoneGlobals$1;

    .prologue
    .line 1914
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x2

    const/16 v4, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1917
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1918
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1919
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1921
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1922
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-boolean v1, v1, Lcom/android/phone/PhoneGlobals;->mIsRFPowerBackoffEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;
    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->access$1100(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1923
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;
    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->access$1100(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->enable(Z)V

    .line 2068
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1919
    goto :goto_0

    .line 1925
    :cond_2
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1926
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetState:I

    .line 1928
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneApp"

    const-string v2, "mReceiver: HEADSET_STATE_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_3
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_4

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget v3, v3, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->updateBluetoothIndication(Z)V

    goto :goto_1

    .line 1931
    :cond_5
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1932
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetAudioState:I

    .line 1935
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_6

    const-string v1, "PhoneApp"

    const-string v2, "mReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    :cond_6
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_7

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget v3, v3, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetAudioState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget v1, v1, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetAudioState:I

    if-eq v1, v4, :cond_0

    .line 1939
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->updateBluetoothIndication(Z)V

    goto/16 :goto_1

    .line 1941
    :cond_8
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1942
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "PhoneApp"

    const-string v1, "mReceiver: ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_9
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_a

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_a
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_b
    const-string v0, "DISCONNECTED"

    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1951
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1952
    const-string v1, "roamingOn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1956
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1958
    :cond_c
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1960
    :cond_d
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1962
    :cond_e
    const-string v0, "CONNECTED"

    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1966
    :cond_f
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1967
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_10

    const-string v2, "PhoneApp"

    const-string v3, "mReceiver: ACTION_HEADSET_PLUG"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_10
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_11

    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_11
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_12

    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_12
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v3, "state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_13

    :goto_2
    # setter for: Lcom/android/phone/PhoneGlobals;->mIsHeadsetPlugged:Z
    invoke-static {v2, v0}, Lcom/android/phone/PhoneGlobals;->access$1202(Lcom/android/phone/PhoneGlobals;Z)Z

    .line 1971
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_13
    move v0, v1

    .line 1970
    goto :goto_2

    .line 1972
    :cond_14
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1973
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_15

    const-string v0, "PhoneApp"

    const-string v1, "mReceiver: ACTION_BATTERY_LOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_15
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendBatteryLow()V

    goto/16 :goto_1

    .line 1975
    :cond_16
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1976
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1977
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1978
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->updateNationalDataRoaming()V
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$1300(Lcom/android/phone/PhoneGlobals;)V

    .line 1982
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->upgradePreferredModeIfNeeded()V
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$1400(Lcom/android/phone/PhoneGlobals;)V

    .line 1984
    :cond_17
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1992
    :cond_18
    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1993
    const-string v0, "phoneName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1994
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Radio technology switched. Now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is active."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->initForNewRadioTechnology()V
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$1500(Lcom/android/phone/PhoneGlobals;)V

    goto/16 :goto_1

    .line 1996
    :cond_19
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1997
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/phone/PhoneGlobals;->access$1600(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1998
    :cond_1a
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1999
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v5, :cond_1b

    .line 2000
    const-string v0, "PhoneApp"

    const-string v2, "Emergency Callback Mode arrived in PhoneApp."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    const-string v0, "phoneinECMState"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2003
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 2007
    :cond_1b
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! Emergency Callback Mode not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phones"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2010
    :cond_1c
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2011
    const-string v0, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/PhoneGlobals;->mDockState:I

    .line 2013
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOCK_EVENT -> mDockState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PhoneGlobals;->mDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2015
    :cond_1e
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2016
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2019
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2020
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcInCallScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcInCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_1

    .line 2025
    :cond_1f
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2026
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2029
    sget v2, Lcom/android/phone/PhoneGlobals;->mDockState:I

    if-nez v2, :cond_20

    .line 2031
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2036
    :goto_3
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcInCallScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcInCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_1

    .line 2033
    :cond_20
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_3

    .line 2041
    :cond_21
    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2042
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v3, "ttyPreferredMode"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneGlobals;->access$802(Lcom/android/phone/PhoneGlobals;I)I

    .line 2045
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2046
    const-string v3, "ttyEnabled"

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->access$800(Lcom/android/phone/PhoneGlobals;)I

    move-result v4

    if-eqz v4, :cond_24

    :goto_4
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2047
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2049
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_22

    const-string v0, "PhoneApp"

    const-string v2, "mReceiver: TTY_PREFERRED_MODE_CHANGE_ACTION"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_22
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_23

    const-string v0, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$800(Lcom/android/phone/PhoneGlobals;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_23
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_24
    move v0, v1

    .line 2046
    goto :goto_4

    .line 2052
    :cond_25
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2053
    const-string v0, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2055
    if-nez v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_1

    .line 2058
    :cond_26
    const-string v0, "com.android.phone.intent.ACTION_DATA_TRAFFIC_SWITCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2059
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2060
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/phone/DataTrafficSwitchDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2061
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2062
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2063
    :cond_27
    const-string v0, "com.android.phone.ACTION_CLEAR_ANSWERING_MACHINE_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2064
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/am/ClearAmNotificationService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2065
    const-string v1, "com.android.phone.intent.ACTION_CLEAR_AM_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2066
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1
.end method
