.class public Lcom/android/mms/transaction/TransactionService;
.super Lcom/android/mms/transaction/ConversationService;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_HANDLE_PENDING:Ljava/lang/String; = "android.intent.action.ACTION_HANDLE_PENDING"

.field public static final ACTION_NOTIFY_TRANSACTION:Ljava/lang/String; = "android.intent.action.ACTION_NOTIFY_TRANSACTION"

.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field public static final ACTION_ONBOOT:Ljava/lang/String; = "android.intent.action.ACTION_ONBOOT"

.field public static final ACTION_ONCONNECTIVITY:Ljava/lang/String; = "android.intent.action.ACTION_ONCONNECTIVITY"

.field public static final ACTION_READREC_TRANSACTION:Ljava/lang/String; = "android.intent.action.ACTION_READREC_TRANSACTION"

.field public static final ACTION_RETRIEVE_TRANSACTION:Ljava/lang/String; = "android.intent.action.ACTION_RETRIEVE_TRANSACTION"

.field public static final ACTION_SEND_TRANSACTION:Ljava/lang/String; = "android.intent.action.ACTION_SEND_TRANSACTION"

.field private static final APN_EXTENSION_WAIT:I = 0x7530

.field public static final CONTENT_URI:Ljava/lang/String; = "content_uri"

.field private static final EVENT_CONTINUE_MMS_CONNECTIVITY:I = 0x3

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x2

.field private static final EVENT_HANDLE_NEXT_PENDING_TRANSACTION:I = 0x4

.field private static final EVENT_QUIT:I = 0x64

.field private static final EVENT_START_COMMAND:I = 0x5

.field private static final EVENT_STOP_SELF:I = 0x7

.field private static final EVENT_STOP_SELF_IF_IDLE:I = 0x8

.field private static final EVENT_TRANSACTION_REQUEST:I = 0x1

.field private static final EVENT_WAIT_NETWORK_TIMEOUT:I = 0x6

.field private static final NETWORK_NOT_AVAILABLE_ABORT_WAIT:I = 0x1f4

.field private static final NETWORK_WAIT:I = 0xea60

.field private static final PROCESSING_TRANSACTION_MAX_COUNT:I = 0x4

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_URI:Ljava/lang/String; = "uri"

.field private static final STOP_SELF_WAIT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "TransactionService"

.field private static final TOAST_DOWNLOAD_LATER:I = 0x2

.field private static final TOAST_MSG_QUEUED:I = 0x1

.field private static final TOAST_NONE:I = -0x1

.field public static final TRANSACTION_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.TRANSACTION_COMPLETED_ACTION"


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mConnectivityListener:Lcom/android/mms/util/NetworkConnectivityListener;

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mStayAlive:Z

.field private volatile mStopService:Z

.field public mToastHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/mms/transaction/ConversationService;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mStayAlive:Z

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mStopService:Z

    .line 230
    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    .line 817
    return-void
.end method

.method private abortMmsConnectivity()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 805
    iput-boolean v6, p0, Lcom/android/mms/transaction/TransactionService;->mStopService:Z

    .line 806
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v3

    .line 807
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/Transaction;

    .line 808
    .local v1, "t":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction;->abort()V

    .line 809
    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(IILjava/lang/String;)V

    goto :goto_0

    .line 811
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 813
    const-class v2, Lcom/android/mms/transaction/MmsConnectivityReceiver;

    invoke-static {p0, v2, v6}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->setComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 815
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mStopService:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mStopService:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->onLanchStartService(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/util/NetworkConnectivityListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/mms/util/NetworkConnectivityListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService;ILcom/android/mms/transaction/TransactionBundle;)Lcom/android/mms/transaction/Transaction;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/mms/transaction/TransactionBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->createTransaction(ILcom/android/mms/transaction/TransactionBundle;)Lcom/android/mms/transaction/Transaction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->postStopSelf(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mStayAlive:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->abortMmsConnectivity()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 730
    return-void
.end method

.method private createTransaction(ILcom/android/mms/transaction/TransactionBundle;)Lcom/android/mms/transaction/Transaction;
    .locals 11
    .param p1, "serviceId"    # I
    .param p2, "transactionBundle"    # Lcom/android/mms/transaction/TransactionBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/TransactionService;->createTransactionSettings(Lcom/android/mms/transaction/TransactionBundle;)Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v3

    .line 516
    .local v3, "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v9

    .line 518
    .local v9, "transactionType":I
    const-string v1, "Conversations"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createTransaction: transactionType="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, "uri":Ljava/lang/String;
    packed-switch v9, :pswitch_data_0

    .line 557
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid transaction type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v0, 0x0

    .line 562
    :goto_0
    return-object v0

    .line 526
    :pswitch_0
    if-eqz v4, :cond_1

    .line 527
    new-instance v0, Lcom/android/mms/transaction/NotificationTransaction;

    .end local v0    # "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-direct {v0, p0, p1, v3, v4}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .restart local v0    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto :goto_0

    .line 531
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v8

    .line 532
    .local v8, "pushData":[B
    new-instance v7, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v7, v8}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 533
    .local v7, "parser":Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    .line 535
    .local v6, "ind":Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v10, 0x82

    .line 536
    .local v10, "type":I
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v1

    if-ne v1, v10, :cond_2

    .line 537
    new-instance v0, Lcom/android/mms/transaction/NotificationTransaction;

    .end local v0    # "transaction":Lcom/android/mms/transaction/Transaction;
    check-cast v6, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v6    # "ind":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-direct {v0, p0, p1, v3, v6}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    .restart local v0    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto :goto_0

    .line 540
    .restart local v6    # "ind":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    const-string v1, "TransactionService"

    const-string v2, "Invalid PUSH data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, 0x0

    .line 542
    goto :goto_0

    .line 547
    .end local v6    # "ind":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v7    # "parser":Lcom/google/android/mms/pdu/PduParser;
    .end local v8    # "pushData":[B
    .end local v10    # "type":I
    :pswitch_1
    new-instance v0, Lcom/android/mms/transaction/RetrieveTransaction;

    .end local v0    # "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "manual_request"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;Z)V

    .line 549
    .restart local v0    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto :goto_0

    .line 551
    :pswitch_2
    new-instance v0, Lcom/android/mms/transaction/SendTransaction;

    .end local v0    # "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-direct {v0, p0, p1, v3, v4}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .line 552
    .restart local v0    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto :goto_0

    .line 554
    :pswitch_3
    new-instance v0, Lcom/android/mms/transaction/ReadRecTransaction;

    .end local v0    # "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-direct {v0, p0, p1, v3, v4}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .line 555
    .restart local v0    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createTransactionSettings(Lcom/android/mms/transaction/TransactionBundle;)Lcom/android/mms/transaction/TransactionSettings;
    .locals 4
    .param p1, "bundle"    # Lcom/android/mms/transaction/TransactionBundle;

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 497
    .local v1, "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "mmsc":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 499
    new-instance v1, Lcom/android/mms/transaction/TransactionSettings;

    .end local v1    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 504
    .restart local v1    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    :goto_0
    return-object v1

    .line 502
    :cond_0
    new-instance v1, Lcom/android/mms/transaction/TransactionSettings;

    .end local v1    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v1    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    goto :goto_0
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    .prologue
    .line 719
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 720
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 721
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 722
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 719
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getTransactionType(I)I
    .locals 5
    .param p1, "msgType"    # I

    .prologue
    .line 464
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    .line 465
    .local v1, "downloadManager":Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v1}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    .line 467
    .local v0, "autoDownload":Z
    sparse-switch p1, :sswitch_data_0

    .line 483
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 474
    :sswitch_0
    if-nez v0, :cond_0

    .line 475
    const/4 v2, 0x0

    goto :goto_0

    .line 477
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 479
    :sswitch_1
    const/4 v2, 0x3

    goto :goto_0

    .line 481
    :sswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 467
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private static isTransientFailure(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 460
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchServiceStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 325
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 326
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 327
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    return-void
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;)V
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "txnBundle"    # Lcom/android/mms/transaction/TransactionBundle;

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 568
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 570
    const-string v1, "Conversations"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchTransaction: sending message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    return-void
.end method

.method private onLanchStartService(Landroid/content/Intent;I)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 331
    const-string v16, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 333
    const-string v16, "Conversations"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 334
    const-string v16, "TransactionService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onLanchStartService: #"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " intent="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "action":Ljava/lang/String;
    const-string v16, "Conversations"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 340
    const-string v16, "TransactionService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onLanchStartService: launch transaction by action: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    const-string v16, "android.intent.action.ACTION_ONBOOT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "android.intent.action.ACTION_ONCONNECTIVITY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "android.intent.action.ACTION_HANDLE_PENDING"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "android.intent.action.ACTION_ONALARM"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "android.intent.action.ACTION_SEND_TRANSACTION"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "android.intent.action.ACTION_READREC_TRANSACTION"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 347
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 348
    .local v9, "dueTime":J
    const-string v16, "android.intent.action.ACTION_HANDLE_PENDING"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "android.intent.action.ACTION_ONBOOT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "android.intent.action.ACTION_ONCONNECTIVITY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 351
    :cond_3
    const-wide v9, 0x7fffffffffffffffL

    .line 354
    :cond_4
    const/4 v8, 0x0

    .line 356
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getPendingMessages(J)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 360
    :goto_0
    const-string v16, "Conversations"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 361
    const-string v16, "TransactionService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get pending messages before: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_5
    if-eqz v8, :cond_b

    .line 365
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 367
    .local v7, "count":I
    const-string v16, "Conversations"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 368
    const-string v16, "TransactionService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onStart: cursor.count="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_6
    if-nez v7, :cond_8

    .line 372
    const-string v16, "Conversations"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 373
    const-string v16, "TransactionService"

    const-string v17, "onStart: No pending messages. Stopping service."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 377
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->postStopSelfIfIdle(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 446
    .end local v7    # "count":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "dueTime":J
    :goto_1
    return-void

    .line 357
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "dueTime":J
    :catch_0
    move-exception v11

    .line 358
    .local v11, "e":Lcom/google/android/mms/MmsException;
    const-string v16, "TransactionService"

    const-string v17, "get pending messages failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 381
    .end local v11    # "e":Lcom/google/android/mms/MmsException;
    .restart local v7    # "count":I
    :cond_8
    :try_start_2
    const-string v16, "msg_id"

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 383
    .local v5, "columnIndexOfMsgId":I
    const-string v16, "msg_type"

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 386
    .local v6, "columnIndexOfMsgType":I
    :goto_2
    :pswitch_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 387
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 388
    .local v13, "msgType":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v14

    .line 389
    .local v14, "transactionType":I
    sget-object v16, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v16 .. v18}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 392
    .local v15, "uri":Landroid/net/Uri;
    packed-switch v14, :pswitch_data_0

    .line 414
    :cond_9
    new-instance v3, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v14, v0}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 417
    .local v3, "args":Lcom/android/mms/transaction/TransactionBundle;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 422
    .end local v3    # "args":Lcom/android/mms/transaction/TransactionBundle;
    .end local v5    # "columnIndexOfMsgId":I
    .end local v6    # "columnIndexOfMsgType":I
    .end local v7    # "count":I
    .end local v13    # "msgType":I
    .end local v14    # "transactionType":I
    .end local v15    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v16

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v16

    .line 406
    .restart local v5    # "columnIndexOfMsgId":I
    .restart local v6    # "columnIndexOfMsgType":I
    .restart local v7    # "count":I
    .restart local v13    # "msgType":I
    .restart local v14    # "transactionType":I
    .restart local v15    # "uri":Landroid/net/Uri;
    :pswitch_1
    :try_start_3
    const-string v16, "err_type"

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 409
    .local v12, "failureType":I
    invoke-static {v12}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v16

    if-nez v16, :cond_9

    if-eqz v12, :cond_9

    goto :goto_2

    .line 422
    .end local v12    # "failureType":I
    .end local v13    # "msgType":I
    .end local v14    # "transactionType":I
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 426
    .end local v5    # "columnIndexOfMsgId":I
    .end local v6    # "columnIndexOfMsgType":I
    .end local v7    # "count":I
    :cond_b
    const-string v16, "Conversations"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 427
    const-string v16, "TransactionService"

    const-string v17, "onStart: No pending messages. Stopping service."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 431
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->postStopSelfIfIdle(I)V

    goto/16 :goto_1

    .line 433
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "dueTime":J
    :cond_d
    const-string v16, "android.intent.action.ACTION_NOTIFY_TRANSACTION"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_e

    const-string v16, "android.intent.action.ACTION_RETRIEVE_TRANSACTION"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 435
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 436
    .local v4, "bundle":Landroid/os/Bundle;
    if-nez v4, :cond_f

    .line 437
    const-string v16, "TransactionService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "bundle is null when action is :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 441
    :cond_f
    new-instance v3, Lcom/android/mms/transaction/TransactionBundle;

    invoke-direct {v3, v4}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 442
    .restart local v3    # "args":Lcom/android/mms/transaction/TransactionBundle;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;)V

    goto/16 :goto_1

    .line 444
    .end local v3    # "args":Lcom/android/mms/transaction/TransactionBundle;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_10
    const-string v16, "TransactionService"

    const-string v17, "onStart: Invalid action!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 392
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onNetworkUnavailable(IILjava/lang/String;)V
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "transactionType"    # I
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 577
    const-string v1, "Conversations"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkUnavailable: sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    const/4 v0, -0x1

    .line 582
    .local v0, "toastType":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 583
    const/4 v0, 0x2

    .line 592
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 593
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 596
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->postStopSelf(I)V

    .line 597
    return-void

    .line 584
    :cond_3
    if-ne p2, v4, :cond_4

    .line 585
    const/4 v0, 0x1

    goto :goto_0

    .line 586
    :cond_4
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 590
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v1

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private postStopSelf(I)V
    .locals 1
    .param p1, "startId"    # I

    .prologue
    .line 785
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/mms/transaction/TransactionService;->postStopSelfCmd(II)V

    .line 786
    return-void
.end method

.method private postStopSelfCmd(II)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "startId"    # I

    .prologue
    .line 789
    const-string v1, "Conversations"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postStopSelf, cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mStayAlive:Z

    .line 793
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 795
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 796
    return-void
.end method

.method private postStopSelfIfIdle(I)V
    .locals 1
    .param p1, "startId"    # I

    .prologue
    .line 781
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/mms/transaction/TransactionService;->postStopSelfCmd(II)V

    .line 782
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 737
    :cond_0
    return-void
.end method

.method private stopSelfIfIdle(I)V
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    const-string v0, "Conversations"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "TransactionService"

    const-string v2, "stopSelfIfIdle: STOP!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    .line 456
    :cond_1
    monitor-exit v1

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected beginMmsConnectivity()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 741
    const-string v1, "TransactionService"

    const-string v2, "beginMmsConnectivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    .line 744
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableMMS"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 747
    .local v0, "result":I
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginMmsConnectivity: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    packed-switch v0, :pswitch_data_0

    .line 761
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot establish MMS connectivity"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 752
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 757
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    .line 758
    return v0

    .line 750
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected endMmsConnectivity()V
    .locals 3

    .prologue
    .line 767
    :try_start_0
    const-string v0, "TransactionService"

    const-string v1, "endMmsConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 771
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 778
    return-void

    .line 776
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 619
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 261
    const-string v1, "Conversations"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const-string v1, "TransactionService"

    const-string v2, "Creating TransactionService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TransactionService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 271
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    .line 272
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v1, :cond_1

    .line 273
    new-instance v1, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    .line 278
    :cond_1
    new-instance v1, Lcom/android/mms/util/NetworkConnectivityListener;

    invoke-direct {v1}, Lcom/android/mms/util/NetworkConnectivityListener;-><init>()V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/mms/util/NetworkConnectivityListener;

    .line 279
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/mms/util/NetworkConnectivityListener;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 280
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/mms/util/NetworkConnectivityListener;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mStopService:Z

    .line 602
    const-string v0, "Conversations"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    const-string v0, "TransactionService"

    const-string v1, "Destroying TransactionService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    const-string v0, "TransactionService"

    const-string v1, "TransactionService exiting with transaction still pending"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 611
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/mms/util/NetworkConnectivityListener;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 612
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Lcom/android/mms/util/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/android/mms/util/NetworkConnectivityListener;->stopListening()V

    .line 614
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 615
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 289
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mStopService:Z

    if-eqz v0, :cond_1

    .line 290
    const-string v0, "TransactionService"

    const-string v1, "onStartCommand: will go stopping service by abort, return"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    :goto_0
    return v3

    .line 294
    :cond_1
    const-string v0, "Conversations"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    if-eqz p1, :cond_3

    .line 296
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_2
    :goto_1
    const-class v0, Lcom/android/mms/transaction/MmsBootRetryReceiver;

    invoke-static {p0, v0, v4}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->setComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 310
    const-class v0, Lcom/android/mms/transaction/MmsConnectivityReceiver;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->setComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 313
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->cancelRetryAlarm(Landroid/content/Context;)V

    .line 315
    if-eqz p1, :cond_0

    .line 318
    iput-boolean v4, p0, Lcom/android/mms/transaction/TransactionService;->mStayAlive:Z

    .line 319
    invoke-direct {p0, p1, p3}, Lcom/android/mms/transaction/TransactionService;->launchServiceStart(Landroid/content/Intent;I)V

    goto :goto_0

    .line 299
    :cond_3
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": intent is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 10
    .param p1, "observable"    # Lcom/android/mms/transaction/Observable;

    .prologue
    const/4 v7, 0x2

    .line 626
    move-object v5, p1

    check-cast v5, Lcom/android/mms/transaction/Transaction;

    .line 627
    .local v5, "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v4

    .line 628
    .local v4, "state":Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    .line 629
    .local v2, "result":I
    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v3

    .line 631
    .local v3, "serviceId":I
    const-string v6, "Conversations"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 632
    const-string v6, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update transaction "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 637
    :try_start_1
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 638
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 639
    const-string v6, "Conversations"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 640
    const-string v6, "TransactionService"

    const-string v8, "update: handle next pending transaction..."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_1
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v8, 0x4

    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 645
    .local v1, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 667
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "state"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    packed-switch v2, :pswitch_data_0

    .line 699
    const-string v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 700
    const-string v6, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transaction state unknown: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_3
    :goto_1
    const-string v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 707
    const-string v6, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update: broadcast transaction result "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 712
    invoke-virtual {v5, p0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 713
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/TransactionService;->postStopSelf(I)V

    .line 715
    return-void

    .line 646
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    :try_start_3
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 649
    const/4 v6, 0x1

    if-ne v2, v6, :cond_6

    .line 650
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAtOnce(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 653
    const-class v6, Lcom/android/mms/transaction/MmsBootRetryReceiver;

    const/4 v8, 0x0

    invoke-static {p0, v6, v8}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->setComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 655
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_0

    .line 667
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 712
    :catchall_1
    move-exception v6

    invoke-virtual {v5, p0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 713
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/TransactionService;->postStopSelf(I)V

    throw v6

    .line 660
    :cond_6
    :try_start_5
    const-string v6, "Conversations"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 661
    const-string v6, "TransactionService"

    const-string v8, "update: endMmsConnectivity"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_7
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 664
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 674
    .restart local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    :try_start_6
    const-string v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 675
    const-string v6, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transaction complete: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_8
    const-string v6, "uri"

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 681
    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_1

    .line 684
    :pswitch_1
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    .line 686
    const/4 v6, 0x3

    invoke-static {p0, v6}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V

    goto/16 :goto_1

    .line 689
    :pswitch_2
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/util/RateController;->update()V

    goto/16 :goto_1

    .line 694
    :pswitch_3
    const-string v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 695
    const-string v6, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transaction failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 681
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
