.class Lcom/sonymobile/superstamina/PowerSaverDialog$2;
.super Ljava/lang/Object;
.source "PowerSaverDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 75
    iput-object p1, p0, Lcom/sonymobile/superstamina/PowerSaverDialog$2;->this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/superstamina/PowerSaverDialog$2;->this$0:Lcom/sonymobile/superstamina/PowerSaverDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 78
    return-void
.end method
