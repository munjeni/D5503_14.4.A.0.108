.class Lcom/sonymobile/superstamina/analyzer/NotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/analyzer/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/analyzer/NotificationController;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/analyzer/NotificationController;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController$1;->this$0:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 78
    const-string v2, "ID"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "id":I
    if-eq v0, v3, :cond_0

    .line 80
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController$1;->this$0:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    # getter for: Lcom/sonymobile/superstamina/analyzer/NotificationController;->mCallback:Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->access$000(Lcom/sonymobile/superstamina/analyzer/NotificationController;)Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;->onAction(I)Z

    move-result v1

    .line 81
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController$1;->this$0:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    # getter for: Lcom/sonymobile/superstamina/analyzer/NotificationController;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->access$100(Lcom/sonymobile/superstamina/analyzer/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v2

    const-string v3, "Reminders"

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 83
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController$1;->this$0:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    # getter for: Lcom/sonymobile/superstamina/analyzer/NotificationController;->mActiveNotifications:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->access$200(Lcom/sonymobile/superstamina/analyzer/NotificationController;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 86
    .end local v1    # "result":Z
    :cond_0
    return-void
.end method
