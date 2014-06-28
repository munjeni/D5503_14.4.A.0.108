.class Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;
.super Ljava/lang/Object;
.source "BatteryThresholdHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->show(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

.field final synthetic val$sb:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->val$sb:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 90
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->val$sb:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 92
    .local v0, "level":I
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    # getter for: Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mDataProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->access$100(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;)Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;->setValue(I)V

    .line 93
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->updateView(I)V

    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    .end local v0    # "level":I
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
