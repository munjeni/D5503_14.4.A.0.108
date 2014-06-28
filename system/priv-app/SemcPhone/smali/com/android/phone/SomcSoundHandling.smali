.class public Lcom/android/phone/SomcSoundHandling;
.super Ljava/lang/Object;
.source "SomcSoundHandling.java"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/phone/SomcSoundHandling$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcSoundHandling$1;-><init>(Lcom/android/phone/SomcSoundHandling;)V

    iput-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 68
    iput-object p1, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 71
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcSoundHandling;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcSoundHandling;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/SomcSoundHandling;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcSoundHandling;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/SomcSoundHandling;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcSoundHandling;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/phone/SomcSoundHandling;->log(Ljava/lang/String;)V

    return-void
.end method

.method private connectBluetoothAudio()V
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "connectBluetoothAudio"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSoundHandling;->log(Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    .line 132
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "wants audio!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSoundHandling;->log(Ljava/lang/String;)V

    .line 146
    :cond_1
    return-void
.end method

.method private disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 153
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "SomcSoundHandling"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method


# virtual methods
.method public closeHandsFree()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 206
    :cond_0
    return-void
.end method

.method public isBluetoothAudioConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 124
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    goto :goto_0
.end method

.method public isBluetoothAvailable()Z
    .locals 5

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "isConnected":Z
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 93
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 94
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    .line 96
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_0

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SomcSoundHandling;->log(Ljava/lang/String;)V

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SomcSoundHandling;->log(Ljava/lang/String;)V

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - isConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SomcSoundHandling;->log(Ljava/lang/String;)V

    .line 104
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_1

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SomcSoundHandling;->log(Ljava/lang/String;)V

    .line 107
    :cond_1
    return v2
.end method

.method public isMicMuted()Z
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerOn()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 212
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 216
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 217
    const/4 v2, 0x1

    .line 220
    :cond_0
    return v2
.end method

.method public setSound(I)V
    .locals 6
    .param p1, "sound"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 177
    if-ne v4, p1, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/android/phone/SomcSoundHandling;->disconnectBluetoothAudio()V

    .line 180
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v3, 0x2

    if-ne v3, p1, :cond_2

    .line 183
    invoke-direct {p0}, Lcom/android/phone/SomcSoundHandling;->disconnectBluetoothAudio()V

    .line 184
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 185
    :cond_2
    const/4 v3, 0x3

    if-ne v3, p1, :cond_0

    .line 187
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 191
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 192
    .local v2, "isAudioOn":Z
    if-nez v2, :cond_0

    .line 194
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 195
    invoke-direct {p0}, Lcom/android/phone/SomcSoundHandling;->connectBluetoothAudio()V

    goto :goto_0
.end method

.method public toggleSoundPhoneSpeaker()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    goto :goto_0
.end method
