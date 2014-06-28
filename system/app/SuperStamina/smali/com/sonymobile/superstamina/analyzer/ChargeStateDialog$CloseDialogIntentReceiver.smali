.class Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChargeStateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseDialogIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;


# direct methods
.method private constructor <init>(Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;
    .param p2, "x1"    # Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;-><init>(Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;->this$0:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;

    # invokes: Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->closeDialogIfOpen()V
    invoke-static {v1}, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->access$100(Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;)V

    .line 126
    :cond_0
    return-void
.end method
