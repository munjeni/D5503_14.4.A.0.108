.class Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$3;
.super Ljava/lang/Object;
.source "BatteryThresholdHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$3;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$3;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->access$202(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 105
    return-void
.end method
