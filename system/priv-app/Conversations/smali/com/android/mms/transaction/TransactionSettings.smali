.class public Lcom/android/mms/transaction/TransactionSettings;
.super Ljava/lang/Object;
.source "TransactionSettings.java"


# static fields
.field private static final APN_PROJECTION:[Ljava/lang/String;

.field private static final COLUMN_MMSC:I = 0x1

.field private static final COLUMN_MMSPORT:I = 0x3

.field private static final COLUMN_MMSPROXY:I = 0x2

.field private static final COLUMN_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TransactionSettings"


# instance fields
.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mServiceCenter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/TransactionSettings;->APN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I

    .line 69
    const-string v4, "current IS NOT NULL"

    .line 70
    .local v4, "selection":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 71
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND apn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/TransactionSettings;->APN_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 80
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 81
    const-string v0, "TransactionSettings"

    const-string v1, "Apn is not found in Database!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    const/4 v10, 0x0

    .line 87
    .local v10, "sawMmsApn":Z
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v10, :cond_4

    .line 92
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionSettings;->isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    const/4 v10, 0x1

    .line 94
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    .line 95
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/TransactionSettings;->formatIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 99
    .local v9, "portString":Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v8

    .line 101
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v0, "TransactionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad port number format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 107
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "portString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionSettings;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const-string v0, "TransactionSettings"

    const-string v1, "No valid APN settings."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "mmscUrl"    # Ljava/lang/String;
    .param p2, "proxyAddr"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I

    .line 125
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    .line 126
    invoke-static {p2}, Lcom/android/mms/transaction/TransactionSettings;->formatIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    .line 127
    iput p3, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I

    .line 128
    return-void
.end method

.method public static formatIPV4Address(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 135
    if-eqz p0, :cond_2

    .line 136
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "ipaddress":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 140
    .local v2, "ip":Ljava/lang/String;
    :goto_1
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_0

    .line 141
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 143
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "ip":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 149
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "ipaddress":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object p0
.end method

.method private static isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "types"    # Ljava/lang/String;
    .param p1, "requestType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 178
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v4

    .line 182
    :cond_1
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 183
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    .end local v3    # "t":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMmscUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I

    return v0
.end method

.method public isProxySet()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionSettings;->mServiceCenter:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 172
    .local v0, "mmscOk":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/mms/transaction/TransactionSettings;->mProxyPort:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    :cond_0
    move v1, v2

    .line 173
    .local v1, "proxyOk":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :goto_2
    return v2

    .end local v0    # "mmscOk":Z
    .end local v1    # "proxyOk":Z
    :cond_1
    move v0, v3

    .line 171
    goto :goto_0

    .restart local v0    # "mmscOk":Z
    :cond_2
    move v1, v3

    .line 172
    goto :goto_1

    .restart local v1    # "proxyOk":Z
    :cond_3
    move v2, v3

    .line 173
    goto :goto_2
.end method
