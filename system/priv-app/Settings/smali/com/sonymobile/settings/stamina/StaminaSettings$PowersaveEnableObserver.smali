.class Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;
.super Landroid/database/ContentObserver;
.source "StaminaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowersaveEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    .line 209
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 210
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$700(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setChecked(Z)V

    .line 216
    return-void
.end method
