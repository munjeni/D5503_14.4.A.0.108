.class Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;
.super Ljava/lang/Thread;
.source "ProviderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->applySetting(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;

.field final synthetic val$rtime:Z

.field final synthetic val$val:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;->this$1:Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;

    iput-object p2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;->val$val:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;->val$rtime:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 502
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;->val$val:Ljava/lang/String;

    .line 503
    .local v1, "ringtone":Ljava/lang/String;
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;->val$val:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;->this$1:Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;

    iget-object v2, v2, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->this$0:Lcom/sonyericsson/conversations/settings/ProviderSettings;

    iget-object v2, v2, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;->val$val:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->convertNotificationPathToInternalUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "internalValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 508
    move-object v1, v0

    .line 518
    .end local v0    # "internalValue":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;->this$1:Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;

    const-string v3, "pref_key_ringtone"

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;->val$rtime:Z

    iget-object v5, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;->this$1:Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;

    # getter for: Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->access$000(Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;)Landroid/content/SharedPreferences;

    move-result-object v5

    # invokes: Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putAndCommitString(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/SharedPreferences;)V
    invoke-static {v2, v3, v1, v4, v5}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->access$100(Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/SharedPreferences;)V

    .line 519
    return-void
.end method
