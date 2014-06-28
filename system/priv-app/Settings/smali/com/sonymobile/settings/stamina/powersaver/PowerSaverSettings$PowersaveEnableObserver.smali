.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;
.super Landroid/database/ContentObserver;
.source "PowerSaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowersaveEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .line 405
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 406
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 410
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 411
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # getter for: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$700(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 412
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # invokes: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setUiEnabled(Z)V
    invoke-static {v1, v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$800(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Z)V

    .line 413
    return-void
.end method
