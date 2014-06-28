.class public Lcom/android/mms/transaction/TransactionBundle;
.super Ljava/lang/Object;
.source "TransactionBundle.java"


# static fields
.field private static final MMSC_URL:Ljava/lang/String; = "mmsc-url"

.field private static final PROXY_ADDRESS:Ljava/lang/String; = "proxy-address"

.field private static final PROXY_PORT:Ljava/lang/String; = "proxy-port"

.field private static final PUSH_DATA:Ljava/lang/String; = "mms-push-data"

.field public static final TRANSACTION_TYPE:Ljava/lang/String; = "type"

.field public static final URI:Ljava/lang/String; = "uri"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "transactionType"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    .line 77
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "transactionType"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(I)V

    .line 92
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "transactionType"    # I
    .param p2, "pushData"    # [B

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(I)V

    .line 104
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mms-push-data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    .line 114
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMmscUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mmsc-url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "proxy-address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPort()I
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "proxy-port"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPushData()[B
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mms-push-data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getTransactionType()I
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 3
    .param p1, "settings"    # Lcom/android/mms/transaction/TransactionSettings;

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mms/transaction/TransactionBundle;->setConnectionSettings(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method public setConnectionSettings(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "mmscUrl"    # Ljava/lang/String;
    .param p2, "proxyAddress"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mmsc-url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "proxy-address"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "proxy-port"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    return-void
.end method
