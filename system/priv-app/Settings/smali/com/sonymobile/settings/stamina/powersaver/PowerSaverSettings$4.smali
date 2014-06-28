.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;
.super Ljava/lang/Object;
.source "PowerSaverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

.field final synthetic val$f:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

.field final synthetic val$values:[I


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->val$f:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iput-object p3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->val$values:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 319
    if-nez p2, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->val$f:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->val$f:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget-object v1, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->val$f:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget-boolean v2, v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->val$f:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget v3, v3, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->updatePowerSaverFeature(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 327
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 328
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->val$f:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->val$values:[I

    aget v1, v1, p2

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    .line 323
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;->val$f:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    goto :goto_0
.end method
