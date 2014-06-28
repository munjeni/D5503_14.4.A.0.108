.class Lcom/sonymobile/settings/stamina/StaminaSettings$4;
.super Ljava/lang/Object;
.source "StaminaSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$4;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "checked"    # Ljava/lang/Object;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$4;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$300(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$4;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "checked":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->enableQueuing(Landroid/content/Context;Z)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method
