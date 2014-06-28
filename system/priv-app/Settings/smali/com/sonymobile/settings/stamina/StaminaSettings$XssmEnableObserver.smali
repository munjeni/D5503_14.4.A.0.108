.class Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;
.super Landroid/database/ContentObserver;
.source "StaminaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XssmEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    .line 192
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 193
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$400(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$400(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$400(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$500(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$600(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/EstimationPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->updateEstimates()V

    .line 203
    return-void
.end method
