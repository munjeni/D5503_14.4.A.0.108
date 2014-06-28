.class Lcom/sonymobile/superstamina/PowerSaverDialog$1;
.super Ljava/lang/Object;
.source "PowerSaverDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/superstamina/PowerSaverDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/PowerSaverDialog;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonymobile/superstamina/PowerSaverDialog$1;->this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 64
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 65
    iget-object v2, p0, Lcom/sonymobile/superstamina/PowerSaverDialog$1;->this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;

    iget-object v0, p0, Lcom/sonymobile/superstamina/PowerSaverDialog$1;->this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/sonymobile/superstamina/PowerSaverDialog$1;->this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;

    # getter for: Lcom/sonymobile/superstamina/PowerSaverDialog;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sonymobile/superstamina/PowerSaverDialog;->access$000(Lcom/sonymobile/superstamina/PowerSaverDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/superstamina/PowerSaverDialog;->setShowPowersaveActivationDialog(Landroid/content/Context;Z)V

    .line 67
    iget-object v0, p0, Lcom/sonymobile/superstamina/PowerSaverDialog$1;->this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;

    iget-object v2, p0, Lcom/sonymobile/superstamina/PowerSaverDialog$1;->this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/superstamina/PowerSaverDialog;->setPowersaveEnabled(Landroid/content/Context;Z)V

    .line 68
    iget-object v0, p0, Lcom/sonymobile/superstamina/PowerSaverDialog$1;->this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 72
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonymobile/superstamina/PowerSaverDialog$1;->this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
