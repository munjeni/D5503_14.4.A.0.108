.class Lcom/android/server/DevicePolicyManagerService$DataRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4709
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$DataRoamingSettingObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    .line 4710
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4711
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 4734
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$DataRoamingSettingObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4742
    .local v2, "roamingSetting":I
    :goto_0
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$DataRoamingSettingObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/DevicePolicyManagerService;->isDataRoamingDisabled(Landroid/content/ComponentName;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4743
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$DataRoamingSettingObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4746
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$DataRoamingSettingObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104063c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4748
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$DataRoamingSettingObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104063d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4750
    .local v1, "info":Ljava/lang/String;
    const v0, 0x1080864

    .line 4752
    .local v0, "iconId":I
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$DataRoamingSettingObserver;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4754
    .end local v0    # "iconId":I
    .end local v1    # "info":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 4738
    .end local v2    # "roamingSetting":I
    :catch_0
    move-exception v3

    .line 4739
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "roamingSetting":I
    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4714
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4715
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4720
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4723
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4724
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4727
    return-void
.end method
