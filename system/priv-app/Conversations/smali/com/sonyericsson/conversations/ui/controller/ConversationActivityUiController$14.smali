.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->deleteConversation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    .prologue
    .line 2548
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    .line 2551
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2604
    :cond_0
    :goto_0
    return-void

    .line 2554
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v3, v7}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 2555
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    .line 2556
    .local v1, "threadId":J
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const-string v4, ""

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v5, v5, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v6, 0x7f070082

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v7, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 2561
    .local v0, "pd":Landroid/app/ProgressDialog;
    new-instance v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;JLandroid/app/ProgressDialog;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
