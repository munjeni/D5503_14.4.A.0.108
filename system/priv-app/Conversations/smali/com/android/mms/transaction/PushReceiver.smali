.class public Lcom/android/mms/transaction/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "PushReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/google/android/mms/pdu/DeliveryInd;J)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/google/android/mms/pdu/DeliveryInd;
    .param p2, "x2"    # J

    .prologue
    .line 69
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/transaction/PushReceiver;->handleDeliveryReport(Landroid/content/Context;Lcom/google/android/mms/pdu/DeliveryInd;J)V

    return-void
.end method

.method private static handleDeliveryReport(Landroid/content/Context;Lcom/google/android/mms/pdu/DeliveryInd;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deliveryInd"    # Lcom/google/android/mms/pdu/DeliveryInd;
    .param p2, "messageId"    # J

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 208
    .local v6, "to":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_0

    array-length v8, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 209
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v4

    .line 211
    .local v4, "status":I
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v1

    .line 212
    .local v1, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v1, p0, v0}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 213
    .local v2, "recipientThreadId":J
    invoke-static {p2, p3}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMessage(J)Landroid/net/Uri;

    move-result-object v7

    .line 214
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {p0, v4, v2, v3, v7}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateDeliveryStatus(Landroid/content/Context;IJLandroid/net/Uri;)V

    .line 216
    const/16 v8, 0x81

    if-eq v4, v8, :cond_0

    .line 219
    sget-object v8, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 220
    .local v5, "threadUri":Landroid/net/Uri;
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    .line 223
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .end local v2    # "recipientThreadId":J
    .end local v4    # "status":I
    .end local v5    # "threadUri":Landroid/net/Uri;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 189
    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 198
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "MMS PushReceiver"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 200
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 201
    new-instance v2, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;

    invoke-direct {v2, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;-><init>(Landroid/content/Context;)V

    new-array v3, v4, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 203
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v1    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_0
    return-void
.end method
