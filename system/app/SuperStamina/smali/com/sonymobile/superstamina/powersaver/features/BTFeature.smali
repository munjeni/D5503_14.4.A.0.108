.class public Lcom/sonymobile/superstamina/powersaver/features/BTFeature;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "BTFeature.java"


# static fields
.field private static final SAVED_STATE_OFF:I = 0x0

.field private static final SAVED_STATE_ON:I = 0x1


# instance fields
.field private mBT:Landroid/bluetooth/BluetoothAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-string v0, "BT"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 23
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/BTFeature$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/powersaver/features/BTFeature$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/BTFeature;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BTFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BTFeature;->mBT:Landroid/bluetooth/BluetoothAdapter;

    .line 39
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BTFeature;->mBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 45
    return-void
.end method

.method protected restoreSetting(I)V
    .locals 1
    .param p1, "savedState"    # I

    .prologue
    .line 54
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BTFeature;->mBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BTFeature;->mBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BTFeature;->mBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startListening()V
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BTFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method protected stopListening()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BTFeature;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    return-void
.end method
