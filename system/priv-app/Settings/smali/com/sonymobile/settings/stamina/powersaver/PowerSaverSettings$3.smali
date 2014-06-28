.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;
.super Ljava/lang/Object;
.source "PowerSaverSettings.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getPowerSaverBatteryThreshold(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setPowerSaverBatteryThreshold(Landroid/content/Context;I)V

    .line 146
    return-void
.end method
