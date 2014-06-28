.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;
.super Landroid/os/AsyncTask;
.source "ConversationActivityUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadNextDraftTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    .prologue
    .line 1826
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p2, "x1"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;

    .prologue
    .line 1826
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1826
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1841
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateComposerFromDraftStack(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1846
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1842
    :catch_0
    move-exception v0

    .line 1843
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ConversationActivityUiController"

    const-string v2, "Exception when loading draft"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 1852
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1826
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 1858
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1870
    :cond_0
    :goto_0
    return-void

    .line 1862
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->invalidateOptionsMenu()V

    .line 1863
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 1865
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessageType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const v1, 0x7f070077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToast(II)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const-string v1, ""

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f0700ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1836
    return-void
.end method
