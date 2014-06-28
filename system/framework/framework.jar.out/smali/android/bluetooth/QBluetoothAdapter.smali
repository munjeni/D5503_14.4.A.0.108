.class public final Landroid/bluetooth/QBluetoothAdapter;
.super Ljava/lang/Object;
.source "QBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;,
        Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;,
        Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    }
.end annotation


# static fields
.field private static final BT_LE_EXTENDED_SCAN_PROP:Ljava/lang/String; = "ro.qc.bluetooth.le.extendedscan"

.field private static final DBG:Z = false

.field private static final MAX_LE_EXTENDED_SCAN_FILTER_ENTRIES:I = 0x80

.field private static final TAG:Ljava/lang/String; = "QBluetoothAdapter"

.field private static final VDBG:Z

.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sAdapter:Landroid/bluetooth/QBluetoothAdapter;


# instance fields
.field private final mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private mLeExtendedScanFlag:Z

.field private mLeScanClient:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mLppClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;",
            "Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private mQService:Landroid/bluetooth/IQBluetooth;

.field private final mScanLock:Ljava/lang/Object;

.field private mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 5
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeExtendedScanFlag:Z

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    .line 89
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mScanLock:Ljava/lang/Object;

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    .line 563
    new-instance v2, Landroid/bluetooth/QBluetoothAdapter$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/QBluetoothAdapter$1;-><init>(Landroid/bluetooth/QBluetoothAdapter;)V

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 582
    new-instance v2, Landroid/bluetooth/QBluetoothAdapter$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/QBluetoothAdapter$2;-><init>(Landroid/bluetooth/QBluetoothAdapter;)V

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bluetooth manager service is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    :try_start_0
    sget-object v2, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    .line 118
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    invoke-interface {p1, v2}, Landroid/bluetooth/IBluetoothManager;->registerQAdapter(Landroid/bluetooth/IQBluetoothManagerCallback;)Landroid/bluetooth/IQBluetooth;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    .line 119
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mQService= :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 123
    const-string/jumbo v2, "ro.qc.bluetooth.le.extendedscan"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 125
    const-string v2, "QBluetoothAdapter"

    const-string v3, "cannot read property ro.qc.bluetooth.le.extendedscan"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeExtendedScanFlag:Z

    .line 133
    return-void

    .line 120
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "property ro.qc.bluetooth.le.extendedscanvalue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 73
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetooth;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;)Landroid/bluetooth/IQBluetooth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/IQBluetooth;

    .prologue
    .line 73
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetoothManagerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/QBluetoothAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    return-object v0
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/QBluetoothAdapter;
    .locals 3

    .prologue
    .line 101
    const-class v2, Landroid/bluetooth/QBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 102
    sget-object v1, Landroid/bluetooth/QBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 103
    .local v0, "managerService":Landroid/bluetooth/IBluetoothManager;
    new-instance v1, Landroid/bluetooth/QBluetoothAdapter;

    invoke-direct {v1, v0}, Landroid/bluetooth/QBluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v1, Landroid/bluetooth/QBluetoothAdapter;->sAdapter:Landroid/bluetooth/QBluetoothAdapter;

    .line 104
    sget-object v1, Landroid/bluetooth/QBluetoothAdapter;->sAdapter:Landroid/bluetooth/QBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public enableRssiMonitor(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Z)Z
    .locals 4
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    .param p2, "enable"    # Z

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 303
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    move-object v1, v0

    .line 304
    monitor-exit v3

    .line 305
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 308
    :goto_0
    return v2

    .line 304
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 307
    :cond_0
    invoke-virtual {v1, p2}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->enableMonitor(Z)V

    .line 308
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterQAdapter(Landroid/bluetooth/IQBluetoothManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 340
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public readRssiThreshold(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;)Z
    .locals 4
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 324
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    move-object v1, v0

    .line 325
    monitor-exit v3

    .line 326
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 329
    :goto_0
    return v2

    .line 325
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 328
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->readRssiThreshold()V

    .line 329
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "add"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 242
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 243
    if-eqz p3, :cond_2

    .line 244
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    const-string v2, "QBluetoothAdapter"

    const-string v4, "Lpp Client has been already registered"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    monitor-exit v3

    .line 261
    :goto_0
    return v1

    .line 249
    :cond_0
    new-instance v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-direct {v0, p0, v4, p2, p1}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;-><init>(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;Ljava/lang/String;Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;)V

    .line 250
    .local v0, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->register2(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 254
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 263
    .end local v0    # "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 256
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    .line 257
    .restart local v0    # "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    if-eqz v0, :cond_3

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->register2(Z)Z

    .line 259
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 261
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startLeScanEx([Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 4
    .param p1, "serviceUuids"    # [Landroid/bluetooth/BluetoothLEServiceUuid;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-boolean v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeExtendedScanFlag:Z

    if-nez v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    if-eqz p2, :cond_0

    .line 172
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    array-length v2, p1

    const/16 v3, 0x80

    if-gt v2, v3, :cond_0

    .line 180
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mScanLock:Ljava/lang/Object;

    monitor-enter v2

    .line 181
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    if-eqz v3, :cond_3

    .line 183
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    .line 185
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 188
    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    if-nez v3, :cond_4

    .line 190
    monitor-exit v2

    goto :goto_0

    .line 193
    :cond_4
    new-instance v0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;

    invoke-direct {v0, p0, v3, p1, p2}, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;-><init>(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;[Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 194
    .local v0, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->startScan()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    .line 196
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    if-nez v3, :cond_5

    .line 198
    invoke-virtual {v0}, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->stopScan()V

    .line 199
    monitor-exit v2

    goto :goto_0

    .line 201
    :cond_5
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 205
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopLeScanEx(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 218
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mScanLock:Ljava/lang/Object;

    monitor-enter v2

    .line 219
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 220
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;

    .line 221
    .local v0, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->stopScan()V

    .line 224
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/QBluetoothAdapter;->mLeScanClient:Landroid/util/Pair;

    .line 226
    .end local v0    # "wrapper":Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;
    :cond_1
    monitor-exit v2

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeRssiThreshold(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;II)Z
    .locals 4
    .param p1, "client"    # Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "wrapper":Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    monitor-enter v3

    .line 281
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter;->mLppClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;

    move-object v1, v0

    .line 282
    monitor-exit v3

    .line 283
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 286
    :goto_0
    return v2

    .line 282
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 285
    :cond_0
    int-to-byte v2, p2

    int-to-byte v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->writeRssiThreshold(BB)V

    .line 286
    const/4 v2, 0x1

    goto :goto_0
.end method
