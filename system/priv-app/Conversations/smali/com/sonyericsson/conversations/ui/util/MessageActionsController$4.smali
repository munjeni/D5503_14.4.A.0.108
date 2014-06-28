.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;
.super Landroid/os/AsyncTask;
.source "MessageActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->deleteMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 877
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$000(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mThreadId:J
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$400(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/Message;->delete(J)Z

    .line 889
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 877
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # invokes: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$500(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    .line 897
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07003d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 899
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 900
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mDeleteListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$600(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mDeleteListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$600(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;->onContentDeleted()V

    .line 903
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 881
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    const-string v1, ""

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07003e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$300(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 884
    return-void
.end method
