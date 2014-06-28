.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
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
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSending()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$000(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z

    move-result v0

    return v0
.end method

.method public onAddRecipientForToFiled(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->addRecipientOnToFiled(Landroid/content/Intent;I)V
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$200(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Intent;I)V

    .line 221
    return-void
.end method

.method public onAddToContact()V
    .locals 4

    .prologue
    .line 224
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 225
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->expandRecipientsList()V

    .line 233
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "phone"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClickPreBtn()V
    .locals 8

    .prologue
    .line 237
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 240
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v5, v5, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(Landroid/content/Context;Ljava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 242
    .local v0, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 245
    .end local v0    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->saveDraft()V

    .line 252
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/Composer;->setDirty(Z)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 258
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v5, v5, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const-class v6, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    invoke-direct {v2, v4, v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "thread_id"

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v5, v5, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    const-string v4, "caller"

    const-string v5, "MmsPreview"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/16 v5, 0x69

    invoke-virtual {v4, v2, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 266
    return-void

    .line 254
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "ConversationActivityUiController"

    const-string v5, "Save Draft Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClickSendMessage()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$002(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->clearStatusAfterSend()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$100(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkRecipientAndSend()V

    .line 217
    return-void
.end method

.method public onConvertToMessageType(I)V
    .locals 1
    .param p1, "messageType"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->convertToMessageType(I)V

    .line 270
    return-void
.end method

.method public onEditorFragmentAttached()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData;->sendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->initConversation(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->initConversation(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    goto :goto_0
.end method

.method public onPileViewContentDeleted()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onWallpaperSelected(Landroid/net/Uri;)V
    .locals 3
    .param p1, "wallpaper"    # Landroid/net/Uri;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->applyWallpaper(Landroid/net/Uri;J)V

    .line 280
    return-void
.end method

.method public requestEditorFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setListViewSelectionOnFooter(Landroid/view/View;)V

    .line 275
    return-void
.end method
