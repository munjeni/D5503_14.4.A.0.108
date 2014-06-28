.class public interface abstract Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
.super Ljava/lang/Object;
.source "ITelephonyProviderProxy.java"


# virtual methods
.method public abstract addInboxMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
.end method

.method public abstract addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
.end method

.method public abstract addSentMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
.end method

.method public abstract getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
.end method

.method public abstract getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
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
.end method

.method public abstract getSubscriptionId(Landroid/net/Uri;Landroid/content/Context;)I
.end method

.method public abstract isEmailAddress(Ljava/lang/String;)Z
.end method

.method public abstract saveDraftMessage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
.end method
