.class Lcom/sonymobile/superstamina/analyzer/NotificationController$4;
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
    .line 123
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController$4;->this$0:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController$4;->this$0:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    # getter for: Lcom/sonymobile/superstamina/analyzer/NotificationController;->mActiveNotifications:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->access$200(Lcom/sonymobile/superstamina/analyzer/NotificationController;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 127
    .local v1, "id":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController$4;->this$0:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->notifyUser(I)V

    goto :goto_0

    .line 129
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_0
    return-void
.end method
