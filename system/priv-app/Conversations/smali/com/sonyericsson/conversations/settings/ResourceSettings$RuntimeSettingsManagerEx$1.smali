.class Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;
.super Ljava/lang/Thread;
.source "ResourceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;->putString(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;

.field final synthetic val$isReset:Z

.field final synthetic val$val:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;->this$1:Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;

    iput-object p2, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;->val$val:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;->val$isReset:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 436
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;->val$val:Ljava/lang/String;

    .line 437
    .local v1, "ringtone":Ljava/lang/String;
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;->val$val:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;->this$1:Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;

    iget-object v2, v2, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;->this$0:Lcom/sonyericsson/conversations/settings/ResourceSettings;

    iget-object v2, v2, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;->val$val:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->convertNotificationPathToInternalUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "internalValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    move-object v1, v0

    .line 452
    .end local v0    # "internalValue":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;->this$1:Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;

    const-string v3, "pref_key_ringtone"

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx$1;->val$isReset:Z

    # invokes: Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;->putStringThenCommit(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1, v4}, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;->access$000(Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 453
    return-void
.end method
