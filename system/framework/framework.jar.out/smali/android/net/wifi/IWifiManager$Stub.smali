.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x1c

.field static final TRANSACTION_acquireWifiLock:I = 0x17

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_addToBlacklist:I = 0x24

.field static final TRANSACTION_captivePortalCheckComplete:I = 0x29

.field static final TRANSACTION_clearBlacklist:I = 0x25

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_enableTdls:I = 0x2c

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x2d

.field static final TRANSACTION_getBatchedScanResults:I = 0x31

.field static final TRANSACTION_getConfigFile:I = 0x28

.field static final TRANSACTION_getConfiguredCredentials:I = 0x2e

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xc

.field static final TRANSACTION_getDhcpInfo:I = 0x15

.field static final TRANSACTION_getFrequencyBand:I = 0x12

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getWifiApConfiguration:I = 0x20

.field static final TRANSACTION_getWifiApConnectedDevices:I = 0x2a

.field static final TRANSACTION_getWifiApEnabledState:I = 0x1f

.field static final TRANSACTION_getWifiApMaxNumConnectedDevices:I = 0x2b

.field static final TRANSACTION_getWifiEnabledState:I = 0xf

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x26

.field static final TRANSACTION_getWifiStateMachineMessenger:I = 0x27

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x1a

.field static final TRANSACTION_isBatchedScanSupported:I = 0x32

.field static final TRANSACTION_isDualBandSupported:I = 0x13

.field static final TRANSACTION_isMulticastEnabled:I = 0x1b

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x16

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_pollBatchedScan:I = 0x33

.field static final TRANSACTION_reassociate:I = 0xb

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x1d

.field static final TRANSACTION_releaseWifiLock:I = 0x19

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_requestBatchedScan:I = 0x2f

.field static final TRANSACTION_saveConfiguration:I = 0x14

.field static final TRANSACTION_setCountryCode:I = 0x10

.field static final TRANSACTION_setFrequencyBand:I = 0x11

.field static final TRANSACTION_setWifiApConfiguration:I = 0x21

.field static final TRANSACTION_setWifiApEnabled:I = 0x1e

.field static final TRANSACTION_setWifiEnabled:I = 0xd

.field static final TRANSACTION_setWifiEnabledWithDelayedFirstScan:I = 0xe

.field static final TRANSACTION_startScan:I = 0x7

.field static final TRANSACTION_startWifi:I = 0x22

.field static final TRANSACTION_stopBatchedScan:I = 0x30

.field static final TRANSACTION_stopWifi:I = 0x23

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 585
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_0
    return v10

    .line 47
    :sswitch_0
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v10, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    .line 54
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 56
    const/4 v10, 0x1

    goto :goto_0

    .line 60
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_2
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 63
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 69
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v10, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 75
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 79
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v10, 0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 85
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x1

    .line 90
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 91
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v4, :cond_3

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v10, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 92
    .restart local v1    # "_arg1":Z
    .restart local v4    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 97
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 101
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_4

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 102
    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    .line 107
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 109
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_5

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 110
    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    .line 115
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    .line 118
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 123
    .local v0, "_arg0":Landroid/os/WorkSource;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/os/WorkSource;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    goto :goto_7

    .line 129
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :sswitch_8
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 133
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 135
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_9
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 146
    :sswitch_a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 153
    :sswitch_b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 160
    :sswitch_c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 162
    .local v4, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_7

    .line 164
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 170
    :goto_8
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 168
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 174
    .end local v4    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    .line 177
    .local v0, "_arg0":Z
    :goto_9
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 178
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v4, :cond_9

    const/4 v10, 0x1

    :goto_a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 176
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 179
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_a

    .line 184
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    const/4 v0, 0x1

    .line 188
    .restart local v0    # "_arg0":Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledWithDelayedFirstScan(ZI)Z

    move-result v4

    .line 190
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v4, :cond_b

    const/4 v10, 0x1

    :goto_c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 186
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 191
    .restart local v0    # "_arg0":Z
    .restart local v1    # "_arg1":I
    .restart local v4    # "_result":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_c

    .line 196
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 198
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 204
    .end local v4    # "_result":I
    :sswitch_10
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c

    const/4 v1, 0x1

    .line 209
    .local v1, "_arg1":Z
    :goto_d
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 208
    .end local v1    # "_arg1":Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 215
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_d

    const/4 v1, 0x1

    .line 220
    .restart local v1    # "_arg1":Z
    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 219
    .end local v1    # "_arg1":Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 226
    .end local v0    # "_arg0":I
    :sswitch_12
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v4

    .line 228
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 234
    .end local v4    # "_result":I
    :sswitch_13
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v4

    .line 236
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v4, :cond_e

    const/4 v10, 0x1

    :goto_f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 237
    :cond_e
    const/4 v10, 0x0

    goto :goto_f

    .line 242
    .end local v4    # "_result":Z
    :sswitch_14
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 244
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v4, :cond_f

    const/4 v10, 0x1

    :goto_10
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 245
    :cond_f
    const/4 v10, 0x0

    goto :goto_10

    .line 250
    .end local v4    # "_result":Z
    :sswitch_15
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 252
    .local v4, "_result":Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v4, :cond_10

    .line 254
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 260
    :goto_11
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 258
    :cond_10
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 264
    .end local v4    # "_result":Landroid/net/DhcpInfo;
    :sswitch_16
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v4

    .line 266
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v4, :cond_11

    const/4 v10, 0x1

    :goto_12
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 267
    :cond_11
    const/4 v10, 0x0

    goto :goto_12

    .line 272
    .end local v4    # "_result":Z
    :sswitch_17
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 276
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_12

    .line 281
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 286
    .local v3, "_arg3":Landroid/os/WorkSource;
    :goto_13
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 287
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v4, :cond_13

    const/4 v10, 0x1

    :goto_14
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 284
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/os/WorkSource;
    goto :goto_13

    .line 288
    .restart local v4    # "_result":Z
    :cond_13
    const/4 v10, 0x0

    goto :goto_14

    .line 293
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_18
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 297
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_14

    .line 298
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 303
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_15
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 301
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_15

    .line 309
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_19
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 312
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 313
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v4, :cond_15

    const/4 v10, 0x1

    :goto_16
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 314
    :cond_15
    const/4 v10, 0x0

    goto :goto_16

    .line 319
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_1a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 326
    :sswitch_1b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 328
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v4, :cond_16

    const/4 v10, 0x1

    :goto_17
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 329
    :cond_16
    const/4 v10, 0x0

    goto :goto_17

    .line 334
    .end local v4    # "_result":Z
    :sswitch_1c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 338
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 345
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 352
    :sswitch_1e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17

    .line 355
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 361
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_18

    const/4 v1, 0x1

    .line 362
    .local v1, "_arg1":Z
    :goto_19
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":Z
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_18

    .line 361
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 368
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 370
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 376
    .end local v4    # "_result":I
    :sswitch_20
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 378
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v4, :cond_19

    .line 380
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 386
    :goto_1a
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 384
    :cond_19
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 390
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_21
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1a

    .line 393
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 398
    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 396
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1b

    .line 404
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_22
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 411
    :sswitch_23
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 418
    :sswitch_24
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 427
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_25
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 434
    :sswitch_26
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 436
    .local v4, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v4, :cond_1b

    .line 438
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 444
    :goto_1c
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 442
    :cond_1b
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 448
    .end local v4    # "_result":Landroid/os/Messenger;
    :sswitch_27
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 450
    .restart local v4    # "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    if-eqz v4, :cond_1c

    .line 452
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 458
    :goto_1d
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 456
    :cond_1c
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 462
    .end local v4    # "_result":Landroid/os/Messenger;
    :sswitch_28
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v4

    .line 464
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 470
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->captivePortalCheckComplete()V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 477
    :sswitch_2a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConnectedDevices()Ljava/util/List;

    move-result-object v9

    .line 479
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 481
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 485
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :sswitch_2b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApMaxNumConnectedDevices()I

    move-result v4

    .line 487
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 493
    .end local v4    # "_result":I
    :sswitch_2c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1d

    const/4 v1, 0x1

    .line 498
    .restart local v1    # "_arg1":Z
    :goto_1e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 497
    .end local v1    # "_arg1":Z
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 504
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v1, 0x1

    .line 509
    .restart local v1    # "_arg1":Z
    :goto_1f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 508
    .end local v1    # "_arg1":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 515
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredCredentials()Ljava/util/List;

    move-result-object v8

    .line 517
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiCredential;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 519
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 523
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiCredential;>;"
    :sswitch_2f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1f

    .line 526
    sget-object v10, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 532
    .local v0, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 534
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_20

    .line 535
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 540
    .local v2, "_arg2":Landroid/os/WorkSource;
    :goto_21
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v4

    .line 541
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v4, :cond_21

    const/4 v10, 0x1

    :goto_22
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 529
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_20

    .line 538
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    :cond_20
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/WorkSource;
    goto :goto_21

    .line 542
    .restart local v4    # "_result":Z
    :cond_21
    const/4 v10, 0x0

    goto :goto_22

    .line 547
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_30
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_22

    .line 550
    sget-object v10, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 555
    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_23
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 553
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_23

    .line 561
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_31
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 565
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 567
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 571
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_32
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v4

    .line 573
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    if-eqz v4, :cond_23

    const/4 v10, 0x1

    :goto_24
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 574
    :cond_23
    const/4 v10, 0x0

    goto :goto_24

    .line 579
    .end local v4    # "_result":Z
    :sswitch_33
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
