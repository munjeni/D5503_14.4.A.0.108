.class public Lcom/sonymobile/settings/MPDNSupportActivity;
.super Landroid/app/Activity;
.source "MPDNSupportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/MPDNSupportActivity$2;,
        Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;
    }
.end annotation


# instance fields
.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mTetherIfaceList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbRegexs:[Ljava/lang/String;

.field private mWaitingForResult:Z

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    .line 125
    new-instance v0, Lcom/sonymobile/settings/MPDNSupportActivity$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/MPDNSupportActivity$1;-><init>(Lcom/sonymobile/settings/MPDNSupportActivity;)V

    iput-object v0, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/settings/MPDNSupportActivity;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/MPDNSupportActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 163
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 164
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 169
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 163
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 169
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private isTethered()Z
    .locals 7

    .prologue
    .line 173
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 175
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "tethered":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWifiRegexs:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sonymobile/settings/MPDNSupportActivity;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "wifiIface":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mUsbRegexs:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sonymobile/settings/MPDNSupportActivity;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "usbIface":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sonymobile/settings/MPDNSupportActivity;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "bluetoothIface":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    .line 182
    if-eqz v4, :cond_0

    .line 183
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    sget-object v6, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->WIFI:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    if-eqz v3, :cond_1

    .line 187
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    sget-object v6, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->USB:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 190
    :cond_1
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v5, :cond_3

    .line 191
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    sget-object v6, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->BLUETOOTH:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 194
    :cond_3
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    .line 195
    :cond_4
    const/4 v5, 0x1

    .line 198
    :goto_0
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setBluetoothTethering(Z)Z
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 235
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 237
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "tethered":[Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/sonymobile/settings/MPDNSupportActivity;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "bluetoothIface":Ljava/lang/String;
    const/4 v3, 0x0

    .line 241
    .local v3, "returnValue":Z
    if-eqz p1, :cond_3

    .line 243
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 244
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    .line 246
    iget-object v7, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 247
    if-eqz v3, :cond_0

    move v3, v5

    .line 274
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    return v3

    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    move v3, v6

    .line 247
    goto :goto_0

    .line 249
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 252
    :cond_2
    const-string v5, "MPDNSupportActivity"

    const-string v6, "bluetooth adapter is null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v3, 0x0

    goto :goto_0

    .line 257
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    if-eqz v1, :cond_5

    .line 258
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 259
    const-string v5, "MPDNSupportActivity"

    const-string v7, "Untethering bluetooth has failed"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v3, 0x0

    .line 268
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v5, :cond_6

    .line 269
    iget-object v5, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_0

    .line 262
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 265
    :cond_5
    const-string v5, "MPDNSupportActivity"

    const-string v7, "bluetoothIface is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v3, 0x0

    goto :goto_1

    .line 271
    :cond_6
    const-string v5, "MPDNSupportActivity"

    const-string v6, "mBluetoothPan is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUsbTethering(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 224
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 226
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const-string v1, "MPDNSupportActivity"

    const-string v2, "USB tethering error has occured"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, 0x0

    .line 230
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setWifiTethering(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 203
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    const-string v1, "MPDNSupportActivity"

    const-string v3, "Starting Wifi AP failed!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 210
    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v0, v4, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    const-string v1, "MPDNSupportActivity"

    const-string v3, "Wifi AP disable error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 218
    goto :goto_0
.end method

.method private tether(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 137
    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    .line 138
    .local v1, "iface":Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;
    sget-object v2, Lcom/sonymobile/settings/MPDNSupportActivity$2;->$SwitchMap$com$sonymobile$settings$MPDNSupportActivity$TetheredInterface:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/MPDNSupportActivity;->setWifiTethering(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/MPDNSupportActivity;->setUsbTethering(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/MPDNSupportActivity;->setBluetoothTethering(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mTetherIfaceList:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v1    # "iface":Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;
    :cond_1
    return-void

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    if-ne p1, v1, :cond_2

    .line 99
    if-ne p2, v0, :cond_1

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    if-nez p2, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 107
    :cond_2
    if-ne p1, v3, :cond_0

    .line 108
    if-ne p2, v0, :cond_3

    .line 109
    invoke-direct {p0, v1}, Lcom/sonymobile/settings/MPDNSupportActivity;->tether(Z)V

    .line 111
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWaitingForResult:Z

    .line 53
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 54
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 58
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWaitingForResult:Z

    .line 119
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 120
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 64
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 66
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWifiRegexs:[Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mUsbRegexs:[Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mBluetoothRegexs:[Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mpdnSupport"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    iget-boolean v0, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWaitingForResult:Z

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/sonymobile/settings/MPDNSupportActivity;->isTethered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/MPDNSupportActivity;->tether(Z)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/settings/TetherAllowDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 80
    iput-boolean v3, p0, Lcom/sonymobile/settings/MPDNSupportActivity;->mWaitingForResult:Z

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 93
    return-void
.end method
