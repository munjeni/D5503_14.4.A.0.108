.class public Lcom/sonyericsson/provider/CapabilityUtil;
.super Ljava/lang/Object;
.source "CapabilityUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProviderCapabilityUtil"

.field private static mInitialized:Z

.field private static mIsMarkAsReadEnabled:Z

.field private static mIsStarredConversationEnabled:Z

.field private static mIsTotalCountEnabled:Z

.field private static mSettings:Lcom/sonyericsson/conversations/settings/Settings;

.field private static mSortSequence:Z

.field private static mTransactionSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mInitialized:Z

    .line 38
    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mTransactionSupport:Z

    .line 40
    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mSortSequence:Z

    .line 42
    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsStarredConversationEnabled:Z

    .line 44
    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsTotalCountEnabled:Z

    .line 46
    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsMarkAsReadEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 51
    const-class v9, Lcom/sonyericsson/provider/CapabilityUtil;

    monitor-enter v9

    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mInitialized:Z

    if-nez v0, :cond_a

    .line 52
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/CapabilityUtil;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    const/4 v8, 0x0

    .line 55
    .local v8, "result":Landroid/database/Cursor;
    :try_start_1
    const-string v0, "content://mms-sms-capability/available-capabilities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 62
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "mms-transaction"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 64
    .local v7, "index":I
    if-ltz v7, :cond_0

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mTransactionSupport:Z

    .line 67
    :cond_0
    const-string v0, "sort-sequence"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 68
    if-ltz v7, :cond_1

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mSortSequence:Z

    .line 71
    :cond_1
    const-string v0, "mark-as-read"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 72
    if-ltz v7, :cond_2

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsMarkAsReadEnabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v7    # "index":I
    :cond_2
    if-eqz v8, :cond_3

    .line 82
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mSortSequence:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_5

    .line 86
    const/4 v8, 0x0

    .line 88
    :try_start_3
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "sequence_time"

    aput-object v1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 92
    if-eqz v8, :cond_4

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mSortSequence:Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 100
    :cond_4
    if-eqz v8, :cond_5

    .line 101
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsStarredConversationEnabled:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_7

    .line 106
    const/4 v8, 0x0

    .line 108
    :try_start_5
    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "star_status"

    aput-object v1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 112
    if-eqz v8, :cond_6

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsStarredConversationEnabled:Z
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 120
    :cond_6
    if-eqz v8, :cond_7

    .line 121
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_7
    :goto_2
    sget-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsTotalCountEnabled:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v0, :cond_9

    .line 127
    const/4 v8, 0x0

    .line 129
    :try_start_7
    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "total_count"

    aput-object v1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 133
    if-eqz v8, :cond_8

    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsTotalCountEnabled:Z
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 141
    :cond_8
    if-eqz v8, :cond_9

    .line 142
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_9
    :goto_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mInitialized:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 148
    .end local v8    # "result":Landroid/database/Cursor;
    :cond_a
    monitor-exit v9

    return-void

    .line 81
    .restart local v8    # "result":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_b

    .line 82
    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_b
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 51
    .end local v8    # "result":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0

    .line 100
    .restart local v8    # "result":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    if-eqz v8, :cond_c

    .line 101
    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_c
    throw v0

    .line 120
    :catchall_3
    move-exception v0

    if-eqz v8, :cond_d

    .line 121
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_d
    throw v0

    .line 141
    :catchall_4
    move-exception v0

    if-eqz v8, :cond_e

    .line 142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_e
    throw v0

    .line 76
    :catch_0
    move-exception v0

    .line 81
    if-eqz v8, :cond_3

    .line 82
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 100
    if-eqz v8, :cond_5

    .line 101
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 115
    :catch_2
    move-exception v0

    .line 120
    if-eqz v8, :cond_7

    .line 121
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 136
    :catch_3
    move-exception v0

    .line 141
    if-eqz v8, :cond_9

    .line 142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3
.end method

.method public static final isMarkAsReadEnabled()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsMarkAsReadEnabled:Z

    return v0
.end method

.method public static isPriorityAvailable()Z
    .locals 3

    .prologue
    .line 173
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyManagerProxy()Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    move-result-object v0

    .line 174
    .local v0, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    invoke-interface {v0}, Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 175
    const/4 v1, 0x1

    .line 177
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isSortSequenceEnabled()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mSortSequence:Z

    return v0
.end method

.method public static final isStarredConversationEnabled()Z
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsStarredConversationEnabled:Z

    return v0
.end method

.method public static final isTotalCountEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    sget-boolean v1, Lcom/sonyericsson/provider/CapabilityUtil;->mIsTotalCountEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonyericsson/provider/CapabilityUtil;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v2, "semc_pref_key_enable_total_count"

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final isTransactionEnabled()Z
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->mTransactionSupport:Z

    return v0
.end method
