.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getSimCardFullDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 756
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra"

    const-string v3, "com.sonyericsson.conversations.ui.DISPLAY_SIM_MESSAGE_SETTINGS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 766
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 762
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 763
    .local v1, "okClickIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
