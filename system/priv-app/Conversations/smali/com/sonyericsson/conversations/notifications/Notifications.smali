.class public Lcom/sonyericsson/conversations/notifications/Notifications;
.super Ljava/lang/Object;
.source "Notifications.java"


# static fields
.field public static final CLASS_0_MESSAGE_RECEIVED:I = 0x6

.field public static final DELIVERY_FAILED:I = 0x2

.field public static final DOWNLOAD_FAILED:I = 0x3

.field public static final MESSAGE_RECEIVED:I = 0x0

.field public static final SENDING_FAILED:I = 0x1

.field public static final SIM_FULL:I = 0x4

.field public static final SMS_REJECTED_MEMORY_FULL:I = 0x5

.field private static mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;

.field private static sUpdateExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/sonyericsson/conversations/notifications/Notifications$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/Notifications$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)[Lcom/sonyericsson/conversations/notifications/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/Notifications;->getNotifications(Landroid/content/Context;)[Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 109
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/Notifications;->getNotifications(Landroid/content/Context;)[Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v0

    .line 111
    .local v0, "notifications":[Lcom/sonyericsson/conversations/notifications/Notification;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 112
    aget-object v1, v0, p1

    .line 114
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getNotifications(Landroid/content/Context;)[Lcom/sonyericsson/conversations/notifications/Notification;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-class v1, Lcom/sonyericsson/conversations/notifications/Notifications;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/conversations/notifications/Notification;

    sput-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;

    .line 84
    sget-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;

    const/4 v2, 0x0

    new-instance v3, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotification;-><init>(Landroid/content/Context;I)V

    aput-object v3, v0, v2

    .line 86
    sget-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;

    const/4 v2, 0x1

    new-instance v3, Lcom/sonyericsson/conversations/notifications/SendFailedNotification;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/notifications/SendFailedNotification;-><init>(Landroid/content/Context;I)V

    aput-object v3, v0, v2

    .line 87
    sget-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;

    const/4 v2, 0x2

    new-instance v3, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotification;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotification;-><init>(Landroid/content/Context;I)V

    aput-object v3, v0, v2

    .line 89
    sget-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;

    const/4 v2, 0x3

    new-instance v3, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotification;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotification;-><init>(Landroid/content/Context;I)V

    aput-object v3, v0, v2

    .line 91
    sget-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;

    const/4 v2, 0x4

    new-instance v3, Lcom/sonyericsson/conversations/notifications/SimFullNotification;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/notifications/SimFullNotification;-><init>(Landroid/content/Context;I)V

    aput-object v3, v0, v2

    .line 92
    sget-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;

    const/4 v2, 0x5

    new-instance v3, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullNotification;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullNotification;-><init>(Landroid/content/Context;I)V

    aput-object v3, v0, v2

    .line 94
    sget-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;

    const/4 v2, 0x6

    new-instance v3, Lcom/sonyericsson/conversations/notifications/ClassZeroMessageReceivedNotification;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/notifications/ClassZeroMessageReceivedNotification;-><init>(Landroid/content/Context;I)V

    aput-object v3, v0, v2

    .line 98
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->mNotifications:[Lcom/sonyericsson/conversations/notifications/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static updateAll(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    sget-object v0, Lcom/sonyericsson/conversations/notifications/Notifications;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonyericsson/conversations/notifications/Notifications$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/notifications/Notifications$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method
