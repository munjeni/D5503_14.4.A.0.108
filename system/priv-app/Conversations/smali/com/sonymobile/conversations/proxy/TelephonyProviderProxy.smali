.class Lcom/sonymobile/conversations/proxy/TelephonyProviderProxy;
.super Ljava/lang/Object;
.source "TelephonyProviderProxy.java"

# interfaces
.implements Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addInboxMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z

    .prologue
    .line 45
    invoke-static/range {p1 .. p6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z
    .param p8, "deliveryReport"    # Z
    .param p9, "threadId"    # J

    .prologue
    .line 40
    invoke-static/range {p1 .. p10}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addSentMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;

    .prologue
    .line 50
    invoke-static {p1, p2, p3, p4, p5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recipient"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSubscriptionId(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v10, 0x0

    .line 63
    .local v10, "subscriptionId":I
    const/4 v7, 0x0

    .line 65
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-class v0, Landroid/provider/Telephony$Mms;

    const-string v1, "SUB_ID"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 66
    .local v9, "subIdField":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_0

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 69
    if-eqz v7, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 79
    :cond_0
    if-eqz v7, :cond_1

    .line 80
    .end local v9    # "subIdField":Ljava/lang/reflect/Field;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_1
    return v10

    .line 73
    :catch_0
    move-exception v8

    .line 74
    .local v8, "ex":Ljava/lang/NoSuchFieldException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 79
    if-eqz v7, :cond_1

    goto :goto_0

    .line 75
    .end local v8    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v8

    .line 76
    .local v8, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    if-eqz v7, :cond_1

    goto :goto_0

    .end local v8    # "ex":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 80
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_2
    throw v0
.end method

.method public isEmailAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveDraftMessage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
