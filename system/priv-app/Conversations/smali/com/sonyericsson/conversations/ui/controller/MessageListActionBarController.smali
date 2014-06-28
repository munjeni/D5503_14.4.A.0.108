.class public Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;
.super Lcom/sonyericsson/conversations/ui/controller/ActionBarController;
.source "MessageListActionBarController.java"


# instance fields
.field private mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

.field private mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;-><init>(Landroid/app/Activity;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .line 24
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .line 35
    instance-of v0, p1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be ConversationActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;)Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    return-object v0
.end method

.method private initRecipientActionBarView(Lcom/sonyericsson/conversations/model/Conversation;)V
    .locals 4
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->init(Ljava/util/List;Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method private isEditingNewMessage(Lcom/sonyericsson/conversations/model/Conversation;)Z
    .locals 4
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshActionBarForEditingNewMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f07012a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 62
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 63
    return-void
.end method

.method private refreshActionBarForViewingConversation(Lcom/sonyericsson/conversations/model/Conversation;)V
    .locals 5
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 74
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    if-nez v0, :cond_1

    .line 91
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->initRecipientActionBarView(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 100
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 103
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->update(Ljava/util/List;Landroid/content/Context;)V

    goto :goto_1
.end method


# virtual methods
.method public collapseSelf()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->collapseSelf()V

    .line 133
    :cond_0
    return-void
.end method

.method public expandSelf()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->expandSelf()V

    .line 127
    :cond_0
    return-void
.end method

.method public initActionBar()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->initActionBar()V

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->updateActionBar()V

    .line 45
    return-void
.end method

.method public removeContactLookupListener()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 121
    return-void
.end method

.method public removeRecipientActionBar()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .line 144
    :cond_0
    return-void
.end method

.method public updateActionBar()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 110
    .local v0, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->isEditingNewMessage(Lcom/sonyericsson/conversations/model/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->refreshActionBarForEditingNewMessage()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->refreshActionBarForViewingConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    goto :goto_0
.end method
