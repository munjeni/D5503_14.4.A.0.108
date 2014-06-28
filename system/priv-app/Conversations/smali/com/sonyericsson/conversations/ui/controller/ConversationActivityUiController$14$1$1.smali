.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1$1;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;)V
    .locals 0

    .prologue
    .line 2588
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1$1;->this$2:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1$1;->this$2:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 2595
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1$1;->this$2:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;

    iget-wide v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;->val$threadId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/ConversationCache;->delete(Ljava/lang/Long;)Z

    .line 2597
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1$1;->this$2:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2598
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1$1;->this$2:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onConversationDeleted()V

    .line 2599
    return-void
.end method
