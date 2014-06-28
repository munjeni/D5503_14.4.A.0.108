.class Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$1;
.super Ljava/lang/Object;
.source "ChargeStateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$1;->this$0:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 73
    return-void
.end method
