.class public Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;
.super Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.source "TwoPaneUiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;
    }
.end annotation


# static fields
.field private static final DIM_LAYER_TAG:Ljava/lang/String; = "DIM_LAYER_TAG"

.field private static final MESSAGE_LIST_VISIBLE:Ljava/lang/String; = "MessageListVisible"


# instance fields
.field private mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightThreadId:J

.field private mIsSendMessageStarted:Z

.field private mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListActivity;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mIsSendMessageStarted:Z

    .line 505
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$9;-><init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;

    return-object v0
.end method

.method private getDimLayer(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 159
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "v":Landroid/view/View;
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 162
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    const-string v1, "DIM_LAYER_TAG"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    return-object v0
.end method

.method private handleNewIntent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setConvListFragmentVisibility(Z)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string v1, "MessageListVisible"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 82
    .local v0, "isShowMessageList":Z
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    .line 84
    .end local v0    # "isShowMessageList":Z
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->initActionBar()V

    .line 86
    :cond_1
    return-void
.end method

.method private initGroupRecipientList()V
    .locals 4

    .prologue
    .line 514
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;

    .line 517
    return-void
.end method

.method private showSaveDraftDialog()V
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 472
    new-instance v6, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$7;

    invoke-direct {v6, p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$7;-><init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V

    .line 480
    .local v6, "savePositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$8;

    invoke-direct {v10, p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$8;-><init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V

    .line 488
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

    .line 495
    return-void
.end method


# virtual methods
.method protected createConversationListFragment()Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .locals 3

    .prologue
    .line 458
    const v0, 0x7f030015

    const v1, 0x7f0a003b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->newInstance(III)Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createEditorFragment(Lcom/sonyericsson/conversations/ui/Composer;)Lcom/sonyericsson/conversations/ui/EditorFragment;
    .locals 2
    .param p1, "mComposer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 465
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;-><init>(Lcom/sonyericsson/conversations/ui/Composer;Z)V

    return-object v0
.end method

.method protected expandRecipientsList()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 499
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->initGroupRecipientList()V

    .line 500
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mRecipientListAdapter:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;

    const/4 v14, 0x1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v2

    move-object v8, v6

    move v9, v2

    move-object v10, v6

    move-object v11, v6

    move-object v13, v6

    invoke-virtual/range {v0 .. v14}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 503
    return-void
.end method

.method public initActionBar()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->initActionBar()V

    .line 387
    return-void
.end method

.method public onAllMessagesDeleted()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 203
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 416
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSaveDraftDialogEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 418
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    if-nez v1, :cond_0

    .line 434
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 424
    goto :goto_0

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isMessageEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->showSaveDraftDialog()V

    goto :goto_0
.end method

.method public onCloseSearchModeInConversationList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 330
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->setInSearchMode(ZLjava/lang/String;)V

    .line 333
    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 334
    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(Landroid/net/Uri;)V

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMenuVisibleFlag(Z)V

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMenuVisibleFlag(Z)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->changeToNormalMode()V

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setMenuVisibleFlag(Z)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$5;-><init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void

    .line 340
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    goto :goto_0
.end method

.method public onCloseSearchModeInMessageList()V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->onEndSearchMode()V

    .line 326
    return-void
.end method

.method public onConvListLoadFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData;->sendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getThreadIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    .line 278
    :goto_0
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$4;-><init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    :cond_0
    :goto_1
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    goto :goto_0

    .line 286
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mIsSendMessageStarted:Z

    if-eqz v0, :cond_3

    .line 287
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mIsSendMessageStarted:Z

    .line 288
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setSelecedThread(J)V

    goto :goto_1

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setSelecedThread(J)V

    goto :goto_1
.end method

.method public onConversationDeleted()V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getThreadIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    .line 394
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$6;-><init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    :cond_0
    return-void
.end method

.method public onConversationOpen()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_0
    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageReadIndicators(JZ)V

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setSelecedThread(J)V

    .line 124
    :cond_1
    const/4 v0, 0x0

    .line 125
    .local v0, "openConversation":Lcom/sonyericsson/conversations/model/Conversation;
    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_6

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 142
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isRecipientsDirty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->saveDraft()V

    .line 151
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 153
    new-instance v1, Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/sonyericsson/conversations/ui/Composer;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Conversation;Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 155
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->setupFragments()V

    .line 156
    return-void

    .line 128
    :cond_6
    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageReadIndicators(JZ)V

    .line 134
    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/model/ConversationCache;->get(J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 135
    if-nez v0, :cond_2

    .line 136
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_7
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData;->conversation:Lcom/sonyericsson/conversations/model/Conversation;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData;->conversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_4

    .line 148
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    goto :goto_1
.end method

.method public onConversationOpen(J)V
    .locals 2
    .param p1, "threadId"    # J

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onConversationOpen(J)V

    .line 96
    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->onConversationOpen()V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethodandClearTextFocus(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->handleNewIntent(Landroid/os/Bundle;)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 73
    :cond_0
    return-void
.end method

.method public onCurrentConversationDeleted(J)V
    .locals 4
    .param p1, "threadId"    # J

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->discardWriteNew()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getThreadIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    .line 214
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$2;-><init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;-><init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 439
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 440
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->removeDimLayer()V

    .line 441
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onDestroy()V

    .line 442
    return-void
.end method

.method public onEndSearchMode()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideSearchView()V

    .line 321
    :cond_0
    return-void
.end method

.method public onFinishDeleteConversationsActionMode(Z)V
    .locals 3
    .param p1, "isDeleteTaskTriggered"    # Z

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onFinishDeleteConversationsActionMode(Z)V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->removeDimLayer()V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setSelecedThread(J)V

    .line 198
    :cond_0
    return-void
.end method

.method public onFinishDeleteMessagesActionMode()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onFinishDeleteMessagesActionMode()V

    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->removeDimLayer()V

    .line 248
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onNewIntent(Landroid/content/Intent;)V

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->handleNewIntent(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onQueryTextSubmit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getThreadIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getFocuseMessageUriOfTheFirstConversation()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 371
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mHighlightThreadId:J

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setSelecedThread(J)V

    .line 373
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->onConversationOpen()V

    .line 382
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_3

    .line 376
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v0

    .line 256
    .local v0, "isMessageListVisible":Z
    const-string v1, "MessageListVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    return-void
.end method

.method public onSearchViewExpand()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onSearchViewExpand()V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMenuVisibleFlag(Z)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMenuVisibleFlag(Z)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->invalidateOptionsMenu()V

    .line 314
    return-void
.end method

.method public onStartDeleteConversations()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onStartDeleteConversations()V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->getDimLayer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public onStartDeleteSeveralMessages()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onStartDeleteSeveralMessages()V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->getDimLayer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 242
    return-void
.end method

.method public removeDimLayer()V
    .locals 4

    .prologue
    .line 173
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    const-string v3, "DIM_LAYER_TAG"

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "convListDimLayer":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    .end local v0    # "convListDimLayer":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    const-string v3, "DIM_LAYER_TAG"

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, "msgListDimLayer":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 182
    .end local v1    # "msgListDimLayer":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected removeFragments()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragments()V

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->removeDimLayer()V

    .line 107
    return-void
.end method

.method public saveDraft()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftAsync(Z)J

    .line 409
    return-void
.end method

.method protected sendMessage()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->mIsSendMessageStarted:Z

    .line 301
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage()V

    .line 302
    return-void
.end method

.method protected setupFragments()V
    .locals 4

    .prologue
    .line 446
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupFragments()V

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setWriteNewHeaderVisibility(Z)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setWriteNewHeaderVisibility(Z)V

    goto :goto_0
.end method
