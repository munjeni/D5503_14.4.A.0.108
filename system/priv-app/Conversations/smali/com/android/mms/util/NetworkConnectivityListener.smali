.class public Lcom/android/mms/util/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/NetworkConnectivityListener$1;,
        Lcom/android/mms/util/NetworkConnectivityListener$State;,
        Lcom/android/mms/util/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkConnectivityListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFailover:Z

.field private mListening:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOtherNetworkInfo:Landroid/net/NetworkInfo;

.field private mReason:Ljava/lang/String;

.field private mReceiver:Lcom/android/mms/util/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

.field private mState:Lcom/android/mms/util/NetworkConnectivityListener$State;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    .line 133
    sget-object v0, Lcom/android/mms/util/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/mms/util/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mState:Lcom/android/mms/util/NetworkConnectivityListener$State;

    .line 134
    new-instance v0, Lcom/android/mms/util/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/util/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/util/NetworkConnectivityListener;Lcom/android/mms/util/NetworkConnectivityListener$1;)V

    iput-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mReceiver:Lcom/android/mms/util/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/NetworkConnectivityListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/NetworkConnectivityListener;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mListening:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/NetworkConnectivityListener;)Lcom/android/mms/util/NetworkConnectivityListener$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/NetworkConnectivityListener;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mState:Lcom/android/mms/util/NetworkConnectivityListener$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/util/NetworkConnectivityListener;Lcom/android/mms/util/NetworkConnectivityListener$State;)Lcom/android/mms/util/NetworkConnectivityListener$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/util/NetworkConnectivityListener;
    .param p1, "x1"    # Lcom/android/mms/util/NetworkConnectivityListener$State;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mState:Lcom/android/mms/util/NetworkConnectivityListener$State;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/mms/util/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/util/NetworkConnectivityListener;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/mms/util/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/util/NetworkConnectivityListener;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/mms/util/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/util/NetworkConnectivityListener;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/mms/util/NetworkConnectivityListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/util/NetworkConnectivityListener;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mIsFailover:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/util/NetworkConnectivityListener;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/NetworkConnectivityListener;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getOtherNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/mms/util/NetworkConnectivityListener$State;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mState:Lcom/android/mms/util/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public isFailover()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mIsFailover:Z

    return v0
.end method

.method public registerHandler(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "target"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public declared-synchronized startListening(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mListening:Z

    if-nez v1, :cond_0

    .line 143
    iput-object p1, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mReceiver:Lcom/android/mms/util/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mListening:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mReceiver:Lcom/android/mms/util/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mIsFailover:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/mms/util/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method
