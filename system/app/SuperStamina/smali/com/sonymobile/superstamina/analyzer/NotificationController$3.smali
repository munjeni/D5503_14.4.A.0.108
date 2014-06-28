.class Lcom/sonymobile/superstamina/analyzer/NotificationController$3;
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
    .line 109
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController$3;->this$0:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 112
    const-string v1, "ID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "id":I
    if-eq v0, v2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController$3;->this$0:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    # getter for: Lcom/sonymobile/superstamina/analyzer/NotificationController;->mActiveNotifications:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->access$200(Lcom/sonymobile/superstamina/analyzer/NotificationController;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-void
.end method
