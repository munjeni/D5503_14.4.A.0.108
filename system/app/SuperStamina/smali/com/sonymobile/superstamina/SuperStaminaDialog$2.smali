.class Lcom/sonymobile/superstamina/SuperStaminaDialog$2;
.super Ljava/lang/Object;
.source "SuperStaminaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 77
    iput-object p1, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog$2;->this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/superstamina/SuperStaminaDialog$2;->this$0:Lcom/sonymobile/superstamina/SuperStaminaDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 80
    return-void
.end method
