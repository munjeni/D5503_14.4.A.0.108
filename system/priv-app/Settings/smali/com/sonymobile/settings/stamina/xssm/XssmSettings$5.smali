.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$5;
.super Ljava/lang/Object;
.source "XssmSettings.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$5;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$5;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getXssmBatteryThreshold(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$5;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setXssmBatteryThreshold(Landroid/content/Context;I)V

    .line 143
    return-void
.end method
