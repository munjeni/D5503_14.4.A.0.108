.class Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiMonitorSingleton"
.end annotation


# static fields
.field private static sSingletonLock:Ljava/lang/Object;

.field private static sWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;


# instance fields
.field private mConnected:Z

.field private mIfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mToHostapd:Z

.field private mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 426
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sSingletonLock:Ljava/lang/Object;

    .line 427
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    .line 429
    iput-boolean v1, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 430
    iput-boolean v1, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mToHostapd:Z

    .line 434
    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 425
    iget-boolean v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mToHostapd:Z

    return v0
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;
    .param p1, "x1"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mToHostapd:Z

    return p1
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 425
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getConnectedMonitor()Landroid/net/wifi/WifiMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 425
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;
    .param p1, "x1"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    return p1
.end method

.method private declared-synchronized getConnectedMonitor()Landroid/net/wifi/WifiMonitor;
    .locals 3

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiMonitor;

    .line 543
    .local v1, "m":Landroid/net/wifi/WifiMonitor;
    # getter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    .end local v1    # "m":Landroid/net/wifi/WifiMonitor;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 542
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;
    .locals 2

    .prologue
    .line 438
    sget-object v1, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    sget-object v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-direct {v0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 443
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    sget-object v0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->sWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    return-object v0

    .line 443
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetMonitor()V
    .locals 4

    .prologue
    .line 527
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 528
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mToHostapd:Z

    .line 529
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 530
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 532
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiMonitor;

    .line 533
    .local v2, "m":Landroid/net/wifi/WifiMonitor;
    const/4 v3, 0x0

    # setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v2, v3}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 527
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    .end local v2    # "m":Landroid/net/wifi/WifiMonitor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 535
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized killHostapd()V
    .locals 1

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->resetMonitor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized killSupplicant(Z)V
    .locals 1
    .param p1, "p2pSupported"    # Z

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->killSupplicant(Z)Z

    .line 519
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->resetMonitor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerInterfaceMonitor(Ljava/lang/String;Landroid/net/wifi/WifiMonitor;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "m"    # Landroid/net/wifi/WifiMonitor;

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    if-nez v0, :cond_0

    .line 501
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {p2}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :cond_0
    monitor-exit p0

    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "toHostapd"    # Z

    .prologue
    const v3, 0x24001

    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiMonitor;

    .line 449
    .local v2, "m":Landroid/net/wifi/WifiMonitor;
    if-nez v2, :cond_0

    .line 450
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startMonitor called with unknown iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :goto_0
    monitor-exit p0

    return-void

    .line 454
    :cond_0
    :try_start_1
    const-string v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startMonitoring("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") with mConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mToHostapd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mToHostapd:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-boolean v4, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    if-eqz v4, :cond_1

    .line 458
    const/4 v3, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v2, v3}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 459
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 448
    .end local v2    # "m":Landroid/net/wifi/WifiMonitor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 462
    .restart local v2    # "m":Landroid/net/wifi/WifiMonitor;
    :cond_1
    const/4 v0, 0x0

    .local v0, "connectTries":I
    move v1, v0

    .line 464
    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    :goto_1
    if-eqz p2, :cond_4

    :try_start_2
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->connectToHostapd()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 466
    :cond_2
    const/4 v4, 0x1

    # setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v2, v4}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 467
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    if-eqz p2, :cond_3

    const v3, 0x2400d

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 469
    new-instance v3, Landroid/net/wifi/WifiMonitor$MonitorThread;

    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v3, v4, p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;-><init>(Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->start()V

    .line 470
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 471
    iput-boolean p2, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mToHostapd:Z

    goto :goto_0

    .line 464
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 474
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    const/4 v4, 0x5

    if-ge v1, v4, :cond_6

    .line 476
    const-wide/16 v4, 0x3e8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v0

    .line 478
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    goto :goto_1

    .line 477
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :catch_0
    move-exception v4

    move v1, v0

    .line 478
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    goto :goto_1

    .line 480
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :cond_6
    :try_start_4
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    if-eqz p2, :cond_7

    const v3, 0x2400e

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 483
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startMonitoring("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 481
    :cond_7
    const v3, 0x24002

    goto :goto_2
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiMonitor;

    .line 493
    .local v0, "m":Landroid/net/wifi/WifiMonitor;
    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiMonitor;->access$002(Landroid/net/wifi/WifiMonitor;Z)Z

    .line 494
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24002

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    .line 491
    .end local v0    # "m":Landroid/net/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopSupplicant()V
    .locals 1

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    monitor-exit p0

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterInterfaceMonitor(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    .local v0, "m":Landroid/net/wifi/WifiMonitor;
    monitor-exit p0

    return-void

    .line 509
    .end local v0    # "m":Landroid/net/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
