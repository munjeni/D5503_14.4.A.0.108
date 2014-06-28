.class public abstract Lcom/android/mms/transaction/Transaction;
.super Lcom/android/mms/transaction/Observable;
.source "Transaction.java"


# static fields
.field public static final NOTIFICATION_TRANSACTION:I = 0x0

.field public static final READREC_TRANSACTION:I = 0x3

.field public static final RETRIEVE_TRANSACTION:I = 0x1

.field public static final SEND_TRANSACTION:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mId:Ljava/lang/String;

.field protected mPermanentError:Z

.field private final mServiceId:I

.field protected mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

.field protected mTransactionState:Lcom/android/mms/transaction/TransactionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "settings"    # Lcom/android/mms/transaction/TransactionSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/transaction/Observable;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/mms/transaction/TransactionState;

    invoke-direct {v0}, Lcom/android/mms/transaction/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    .line 80
    iput p2, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    .line 81
    iput-object p3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/Transaction;->mPermanentError:Z

    .line 83
    return-void
.end method

.method private ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/android/mms/transaction/TransactionSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 224
    .local v1, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 225
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "address":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 232
    .local v4, "inetAddr":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 236
    if-nez v4, :cond_1

    .line 237
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot establish route to proxy, address null."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 227
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "inetAddr":Ljava/net/InetAddress;
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 228
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/transaction/TransactionSettings;->formatIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "address":Ljava/lang/String;
    goto :goto_0

    .line 233
    .end local v6    # "uri":Landroid/net/Uri;
    .restart local v4    # "inetAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v5

    .line 234
    .local v5, "ue":Ljava/net/UnknownHostException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot establish route to proxy, unknown host "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 239
    .end local v5    # "ue":Ljava/net/UnknownHostException;
    :cond_1
    instance-of v7, v4, Ljava/net/Inet4Address;

    if-eqz v7, :cond_2

    .line 240
    invoke-static {v4}, Lcom/android/mms/transaction/Transaction;->ipv4AddrToInt(Ljava/net/InetAddress;)I

    move-result v3

    .line 241
    .local v3, "i":I
    const/4 v7, 0x2

    invoke-virtual {v1, v7, v3}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 242
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot establish route to proxy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 246
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 247
    .restart local v6    # "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "hostName":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 249
    :cond_3
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid host name for MMSC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 251
    :cond_4
    return-void
.end method

.method private static ipv4AddrToInt(Ljava/net/InetAddress;)I
    .locals 4
    .param p0, "inetaddr"    # Ljava/net/InetAddress;

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 262
    .local v1, "addrBytes":[B
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 264
    .local v0, "addr":I
    return v0
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    return-object v0
.end method

.method protected getPdu(Ljava/lang/String;)[B
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/Transaction;->ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 204
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v6

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v8

    move-object v3, p1

    invoke-static/range {v0 .. v8}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    return v0
.end method

.method public getState()Lcom/android/mms/transaction/TransactionState;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public isEquivalent(Lcom/android/mms/transaction/Transaction;)Z
    .locals 2
    .param p1, "transaction"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentError()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/mms/transaction/Transaction;->mPermanentError:Z

    return v0
.end method

.method public abstract process()V
.end method

.method protected sendPdu(J[B)[B
    .locals 9
    .param p1, "token"    # J
    .param p3, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    if-nez p3, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "mmscUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-direct {p0, v3, v0}, Lcom/android/mms/transaction/Transaction;->ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 184
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v6

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v8

    move-wide v1, p1

    move-object v4, p3

    invoke-static/range {v0 .. v8}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu([B)[B
    .locals 9
    .param p1, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "mmscUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-direct {p0, v3, v0}, Lcom/android/mms/transaction/Transaction;->ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 158
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x1

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v6

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v8

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/mms/transaction/TransactionSettings;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
