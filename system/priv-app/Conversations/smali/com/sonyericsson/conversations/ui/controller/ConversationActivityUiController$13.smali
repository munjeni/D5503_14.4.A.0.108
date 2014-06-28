.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshEditorViews(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$messageAdded:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0

    .prologue
    .line 2355
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-boolean p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->val$messageAdded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2357
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-boolean v4, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 2358
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->onExternalTaskDone()V

    .line 2360
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1700(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2363
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onConversationOpen(J)V

    .line 2366
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 2368
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hideSendButtonProgressBar()V

    .line 2370
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->val$messageAdded:Z

    if-eqz v1, :cond_1

    .line 2373
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateEditorFragment()V

    .line 2389
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # setter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z
    invoke-static {v1, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$002(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z

    .line 2390
    return-void

    .line 2378
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v2, 0x7f0700a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2381
    .local v0, "toastInformation":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->isStorageLow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2382
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2383
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2387
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToast(Ljava/lang/String;I)V

    goto :goto_0
.end method
