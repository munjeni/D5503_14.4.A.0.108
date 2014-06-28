.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;


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
    .line 283
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParticipantsChanged(Ljava/util/List;Z)V
    .locals 12
    .param p2, "blockFocusChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 345
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    if-nez v10, :cond_0

    if-nez p1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v7, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    .local v0, "address":Ljava/lang/String;
    new-instance v6, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v6, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 362
    .local v6, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 365
    .end local v0    # "address":Ljava/lang/String;
    .end local v6    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_2
    const-wide/16 v10, -0x1

    invoke-static {v10, v11, v7}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v8

    .line 368
    .local v8, "recipientsEditorConversation":Lcom/sonyericsson/conversations/model/Conversation;
    if-eqz v8, :cond_0

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v10, :cond_0

    .line 370
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/model/Conversation;->hasParticipants()Z

    move-result v5

    .line 372
    .local v5, "oldConversationHasParticipants":Z
    invoke-virtual {v8}, Lcom/sonyericsson/conversations/model/Conversation;->hasParticipants()Z

    move-result v4

    .line 375
    .local v4, "newConversationHasParticipants":Z
    if-nez v5, :cond_3

    if-eqz v4, :cond_4

    .line 376
    :cond_3
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v10, v8}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 379
    :cond_4
    if-nez v5, :cond_9

    if-eqz v4, :cond_9

    move v3, v9

    .line 380
    .local v3, "isFirstParticipant":Z
    :goto_2
    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    move v1, v9

    .line 382
    .local v1, "hasRemovedAllParticipants":Z
    :cond_5
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v10, :cond_0

    .line 384
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->isAdded()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 385
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v10, v9}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMenu(Z)V

    .line 388
    :cond_6
    if-eqz v3, :cond_7

    if-nez p2, :cond_7

    .line 389
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/ui/EditorFragment;->requestKeyboardFocus()V

    .line 392
    :cond_7
    if-nez v3, :cond_8

    if-eqz v1, :cond_0

    .line 395
    :cond_8
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 396
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v10, v9}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    goto/16 :goto_0

    .end local v1    # "hasRemovedAllParticipants":Z
    .end local v3    # "isFirstParticipant":Z
    :cond_9
    move v3, v1

    .line 379
    goto :goto_2
.end method

.method public onRecipientsEditorFocusChange(Z)V
    .locals 17
    .param p1, "hasFocus"    # Z

    .prologue
    .line 286
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getAllInputRecipientCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkRecipientsStatus()I

    move-result v16

    .line 293
    .local v16, "recipientStatus":I
    new-instance v7, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;)V

    .line 304
    .local v7, "positiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    packed-switch v16, :pswitch_data_0

    goto :goto_0

    .line 318
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v4, 0x7f07012f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x1080027

    const v4, 0x1010355

    const v5, 0x7f070131

    const v6, 0x104000a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v1 .. v15}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    .line 307
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f070132

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1080027

    const v4, 0x1010355

    const v5, 0x7f070133

    const v6, 0x104000a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v1 .. v15}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
