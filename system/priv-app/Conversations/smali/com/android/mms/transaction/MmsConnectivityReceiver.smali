.class public Lcom/android/mms/transaction/MmsConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsConnectivityReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsConnectivityReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static wakeUpService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v0, "Conversations"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "MmsConnectivityReceiver"

    const-string v1, "wakeUpService: start transaction service ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ONCONNECTIVITY"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const-string v3, "MmsConnectivityReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-eqz p2, :cond_2

    .line 57
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 59
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 60
    .local v1, "networkType":I
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 62
    .local v2, "state":Landroid/net/NetworkInfo$DetailedState;
    const-string v3, "MmsConnectivityReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v3, "MmsConnectivityReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detailed state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_1

    .line 66
    invoke-static {p1}, Lcom/android/mms/transaction/MmsConnectivityReceiver;->wakeUpService(Landroid/content/Context;)V

    .line 71
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v1    # "networkType":I
    .end local v2    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    const-string v3, "MmsConnectivityReceiver"

    const-string v4, "Intent received was null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
