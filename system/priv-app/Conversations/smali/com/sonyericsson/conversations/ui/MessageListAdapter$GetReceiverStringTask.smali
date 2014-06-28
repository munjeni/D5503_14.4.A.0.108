.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;
.super Landroid/os/AsyncTask;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetReceiverStringTask"
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
.field private mAsyncParticipant:Lcom/sonyericsson/conversations/model/Participant;

.field private mAsyncParticipantName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 1
    .param p2, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    const/4 v0, 0x0

    .line 202
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 198
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 200
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipantName:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 204
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipantName:Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipantName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipantName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mReceiverString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$002(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 222
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 226
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    const-string v1, ""

    # setter for: Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mReceiverString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$002(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    return-void
.end method
