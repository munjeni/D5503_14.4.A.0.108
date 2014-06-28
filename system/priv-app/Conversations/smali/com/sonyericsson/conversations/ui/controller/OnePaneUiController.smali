.class public Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;
.super Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.source "OnePaneUiController.java"


# static fields
.field private static final CONVERATION_LIST_VISIBLE:Ljava/lang/String; = "ConvListVisible"

.field private static final CONVERATION_LIST_VISIBLE_IN_HISTORY:Ljava/lang/String; = "IsConvListInHistory"


# instance fields
.field private mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

.field private mDisplayHeightChangeListener:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsConvListVisibleInHistory:Z

.field private mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

.field private mOpenConversationInsearchMode:Z

.field private mVirtualKeyBoardShowing:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListActivity;)V

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    .line 42
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    .line 44
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mOpenConversationInsearchMode:Z

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mHandler:Landroid/os/Handler;

    .line 51
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mIsConvListVisibleInHistory:Z

    .line 53
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mVirtualKeyBoardShowing:Z

    .line 55
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mDisplayHeightChangeListener:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mVirtualKeyBoardShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mVirtualKeyBoardShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->updateOptionMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mIsConvListVisibleInHistory:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->backToConversationList()V

    return-void
.end method

.method private backToConversationList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageReadIndicators(JZ)V

    .line 413
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListUpdateNecessity(Z)V

    .line 414
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->showConvListContentArea()V

    .line 415
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->updateOptionMenu()V

    .line 416
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->updateActionBar()V

    .line 417
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setConvListFragmentVisibility(Z)V

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    if-nez v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->onEndSearchMode()V

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->reloadDataAfterEndSearchMode()V

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->saveDraft()V

    .line 442
    :goto_0
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 444
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->expandSearchView(Ljava/lang/String;)V

    .line 451
    :cond_1
    return-void

    .line 432
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->registerMessagePersistListener(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;)V

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->resetConversation()V

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->clear()V

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    goto :goto_0
.end method

.method private handleNewIntent(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 142
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_3

    .line 146
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->shouldShowConversationListPane(Landroid/content/Intent;)Z

    move-result v1

    .line 148
    .local v1, "isShowList":Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->isNotificationIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->isNotificationValid()Z

    move-result v2

    .line 150
    .local v2, "isValidNotification":Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getUnReadMessagesThreadsFromNotificationIntent(Landroid/content/Intent;)I

    move-result v3

    .line 152
    .local v3, "unReadMessageThreads":I
    if-ne v3, v8, :cond_2

    if-eqz v2, :cond_2

    .line 153
    const/4 v1, 0x0

    .line 157
    :goto_0
    if-nez v2, :cond_0

    .line 158
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 172
    .end local v2    # "isValidNotification":Z
    .end local v3    # "unReadMessageThreads":I
    :cond_0
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->initActionBarController(Ljava/lang/Boolean;)V

    .line 173
    if-eqz v1, :cond_5

    .line 175
    iput-boolean v8, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mIsConvListVisibleInHistory:Z

    .line 176
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->showConvListContentArea()V

    .line 177
    invoke-virtual {p0, v8}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setConvListFragmentVisibility(Z)V

    .line 178
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->updateOptionMenu()V

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->updateActionBar()V

    .line 184
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isShowList":Z
    :cond_1
    :goto_2
    return-void

    .line 155
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "isShowList":Z
    .restart local v2    # "isValidNotification":Z
    .restart local v3    # "unReadMessageThreads":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "isShowList":Z
    .end local v2    # "isValidNotification":Z
    .end local v3    # "unReadMessageThreads":I
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 163
    const-string v4, "ConvListVisible"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 168
    .restart local v1    # "isShowList":Z
    :goto_3
    const-string v4, "IsConvListInHistory"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mIsConvListVisibleInHistory:Z

    goto :goto_1

    .line 165
    .end local v1    # "isShowList":Z
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "isShowList":Z
    goto :goto_3

    .line 181
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->onConversationOpen(J)V

    goto :goto_2
.end method

.method private initActionBarController(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isShowList"    # Ljava/lang/Boolean;

    .prologue
    .line 350
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    goto :goto_0
.end method

.method private isNotificationValid()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 188
    .local v0, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showConvListContentArea()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->finishUp()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    return-void
.end method

.method private showMsgListContentArea()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    return-void
.end method

.method private showSaveDraftDialog()V
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 469
    new-instance v6, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$3;

    invoke-direct {v6, p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$3;-><init>(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)V

    .line 481
    .local v6, "savePositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$4;

    invoke-direct {v10, p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$4;-><init>(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)V

    .line 494
    .local v10, "saveNeutralClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v3, 0x1010355

    const v4, 0x7f070072

    const v5, 0x7f070074

    const v7, 0x7f070076

    const v9, 0x7f070075

    const/4 v14, 0x1

    move-object v0, p0

    move-object v11, v8

    move-object v12, v8

    move-object v13, v8

    invoke-virtual/range {v0 .. v14}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 501
    return-void
.end method

.method private updateOptionMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMenuVisibleFlag(Z)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMenuVisibleFlag(Z)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setMenuVisibleFlag(Z)V

    .line 344
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    if-eqz v0, :cond_3

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->invalidateOptionsMenu()V

    .line 347
    :cond_3
    return-void

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_5

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMenuVisibleFlag(Z)V

    .line 337
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_6

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMenuVisibleFlag(Z)V

    .line 340
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setMenuVisibleFlag(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected collapseRecipientsList()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-ne v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->collapseSelf()V

    .line 528
    :cond_0
    return-void
.end method

.method protected createConversationListFragment()Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .locals 2

    .prologue
    .line 505
    const v0, 0x7f030015

    const v1, 0x7f0a003b

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->newInstance(II)Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createEditorFragment(Lcom/sonyericsson/conversations/ui/Composer;)Lcom/sonyericsson/conversations/ui/EditorFragment;
    .locals 2
    .param p1, "mComposer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 511
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;-><init>(Lcom/sonyericsson/conversations/ui/Composer;Z)V

    return-object v0
.end method

.method protected expandRecipientsList()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-ne v0, v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->expandSelf()V

    .line 520
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 387
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    :goto_0
    return v0

    .line 391
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    if-nez v2, :cond_2

    .line 392
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSaveDraftDialogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->isMessageEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 394
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mIsConvListVisibleInHistory:Z

    if-eqz v2, :cond_3

    .line 395
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->backToConversationList()V

    :cond_2
    :goto_1
    move v0, v1

    .line 404
    goto :goto_0

    .line 397
    :cond_3
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    goto :goto_0

    .line 401
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->showSaveDraftDialog()V

    goto :goto_1
.end method

.method public onCloseSearchModeInConversationList()V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->onEndSearchMode()V

    .line 306
    return-void
.end method

.method public onCloseSearchModeInMessageList()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->onEndSearchMode()V

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->reloadDataAfterEndSearchMode()V

    .line 301
    :cond_0
    return-void
.end method

.method public onConversationDeleted()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->backToConversationList()V

    .line 456
    return-void
.end method

.method public onConversationOpen(J)V
    .locals 5
    .param p1, "threadId"    # J

    .prologue
    const-wide/16 v3, -0x1

    .line 203
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onConversationOpen(J)V

    .line 211
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageReadIndicators(JZ)V

    .line 213
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mOpenConversationInsearchMode:Z

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideSearchView()V

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    cmp-long v1, p1, v3

    if-nez v1, :cond_6

    .line 222
    :cond_2
    const/4 v0, 0x0

    .line 224
    .local v0, "openConversation":Lcom/sonyericsson/conversations/model/Conversation;
    cmp-long v1, v3, p1

    if-nez v1, :cond_4

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->applyWallpaper(Landroid/net/Uri;J)V

    .line 238
    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 255
    .end local v0    # "openConversation":Lcom/sonyericsson/conversations/model/Conversation;
    :goto_1
    return-void

    .line 232
    .restart local v0    # "openConversation":Lcom/sonyericsson/conversations/model/Conversation;
    :cond_4
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/model/ConversationCache;->get(J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 233
    if-nez v0, :cond_3

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v1, p1, p2}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_5
    new-instance v1, Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/sonyericsson/conversations/ui/Composer;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Conversation;Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 251
    .end local v0    # "openConversation":Lcom/sonyericsson/conversations/model/Conversation;
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->showMsgListContentArea()V

    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->updateOptionMenu()V

    .line 253
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupFragments()V

    .line 254
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->updateActionBar()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onCreate(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mDisplayHeightChangeListener:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;->setKeyboardVisibilityListener(Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;)V

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->handleNewIntent(Landroid/os/Bundle;)V

    .line 115
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 118
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->removeContactLookupListener()V

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->collapseRecipientsList()V

    .line 127
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onDestroy()V

    .line 128
    return-void
.end method

.method public onEndSearchMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 260
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onEndSearchMode()V

    .line 262
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mOpenConversationInsearchMode:Z

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->setInSearchMode(ZLjava/lang/String;)V

    .line 265
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 266
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(Landroid/net/Uri;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->changeToNormalMode()V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$2;-><init>(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_2
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mOpenConversationInsearchMode:Z

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onNewIntent(Landroid/content/Intent;)V

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->handleNewIntent(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isConvListContentAreaVisible()Z

    move-result v0

    .line 135
    .local v0, "convlistVisible":Z
    const-string v1, "ConvListVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    const-string v1, "IsConvListInHistory"

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mIsConvListVisibleInHistory:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    return-void
.end method

.method public onSearchViewExpand()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onSearchViewExpand()V

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->invalidateOptionsMenu()V

    .line 291
    return-void
.end method

.method public saveDraft()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftAsync(Z)J

    .line 463
    return-void
.end method

.method public updateActionBar()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-ne v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->removeRecipientActionBar()V

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->removeContactLookupListener()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    if-nez v0, :cond_1

    .line 370
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    .line 379
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 380
    return-void

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-nez v0, :cond_3

    .line 375
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    goto :goto_0
.end method
