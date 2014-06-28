.class Lcom/sonymobile/superstamina/SuperStaminaDialog$1;
.super Ljava/lang/Object;
.source "SuperStaminaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/superstamina/SuperStaminaDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/SuperStaminaDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog$1;->this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;

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

    .line 67
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 68
    iget-object v2, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog$1;->this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;

    iget-object v0, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog$1;->this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog$1;->this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;

    # getter for: Lcom/sonymobile/superstamina/SuperStaminaDialog;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sonymobile/superstamina/SuperStaminaDialog;->access$000(Lcom/sonymobile/superstamina/SuperStaminaDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/superstamina/SuperStaminaDialog;->setShowXssmActivationDialog(Landroid/content/Context;Z)V

    .line 69
    iget-object v0, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog$1;->this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;

    iget-object v2, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog$1;->this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/superstamina/SuperStaminaDialog;->setXssmEnabled(Landroid/content/Context;Z)V

    .line 70
    iget-object v0, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog$1;->this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog$1;->this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
