.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;
.super Landroid/database/ContentObserver;
.source "XssmSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XssmEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    .line 334
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 335
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mEnabledSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$800(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 341
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v1

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$900(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V

    .line 342
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mEnabledSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$800(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$XssmEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$1000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 343
    return-void
.end method
