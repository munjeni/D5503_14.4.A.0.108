.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$5;
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


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$5;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 333
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 334
    return-void
.end method
