.class Landroid/bluetooth/IQBluetooth$Stub$Proxy;
.super Ljava/lang/Object;
.source "IQBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IQBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IQBluetooth$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/bluetooth/IQBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 127
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/bluetooth/IQBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public enableLeLppRssiMonitor(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IQBluetooth"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v2, p0, Landroid/bluetooth/IQBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    return-void

    .line 234
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "android.bluetooth.IQBluetooth"

    return-object v0
.end method

.method public readLeLppRssiThreshold(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IQBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Landroid/bluetooth/IQBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    return-void

    .line 218
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerLeLppRssiMonitorClient(Ljava/lang/String;Landroid/bluetooth/IQBluetoothAdapterCallback;Z)Z
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "client"    # Landroid/bluetooth/IQBluetoothAdapterCallback;
    .param p3, "add"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 173
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.bluetooth.IQBluetooth"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/bluetooth/IQBluetoothAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 179
    if-eqz p3, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v4, p0, Landroid/bluetooth/IQBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    return v2

    .line 178
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, v3

    .line 179
    goto :goto_1

    :cond_2
    move v2, v3

    .line 182
    goto :goto_2

    .line 185
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public startLeScanEx([Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/IQBluetoothAdapterCallback;)I
    .locals 6
    .param p1, "services"    # [Landroid/bluetooth/BluetoothLEServiceUuid;
    .param p2, "callback"    # Landroid/bluetooth/IQBluetoothAdapterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 139
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IQBluetooth"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 144
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/bluetooth/IQBluetoothAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 145
    iget-object v3, p0, Landroid/bluetooth/IQBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 150
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    return v2

    .line 144
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public stopLeScanEx(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 160
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IQBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v2, p0, Landroid/bluetooth/IQBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    return-void

    .line 166
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public writeLeLppRssiThreshold(Ljava/lang/String;BB)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "min"    # B
    .param p3, "max"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 193
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IQBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 198
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 199
    iget-object v2, p0, Landroid/bluetooth/IQBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 206
    return-void

    .line 203
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
