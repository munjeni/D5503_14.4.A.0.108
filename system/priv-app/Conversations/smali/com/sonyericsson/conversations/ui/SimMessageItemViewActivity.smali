.class public Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;
.super Landroid/app/Activity;
.source "SimMessageItemViewActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;


# static fields
.field public static final KEY_SIM_SMS_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_SIM_SMS_BODY:Ljava/lang/String; = "body"

.field public static final KEY_SIM_SMS_DATE:Ljava/lang/String; = "date"

.field public static final KEY_SIM_SMS_INDEX:Ljava/lang/String; = "index"


# instance fields
.field mMsgFragment:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

.field mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initActionBar(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 63
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 64
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-virtual {v2, p1, p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->init(Ljava/util/List;Landroid/content/Context;)V

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 71
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 72
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 73
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 78
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 79
    return-void
.end method

.method private initMessage(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "date"    # Ljava/lang/Long;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "msgBody"    # Ljava/lang/String;
    .param p4, "index"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0a008e

    .line 94
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mMsgFragment:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    if-nez v2, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    .line 98
    .local v0, "fragment":Lcom/sonyericsson/conversations/ui/SimMessageFragment;
    if-eqz v0, :cond_1

    .line 99
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mMsgFragment:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    .line 107
    .end local v0    # "fragment":Lcom/sonyericsson/conversations/ui/SimMessageFragment;
    :cond_0
    :goto_0
    return-void

    .line 101
    .restart local v0    # "fragment":Lcom/sonyericsson/conversations/ui/SimMessageFragment;
    :cond_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mMsgFragment:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 103
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mMsgFragment:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 104
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private launchMainActivity()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getConversationHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method


# virtual methods
.method public getMsgFragment()Lcom/sonyericsson/conversations/ui/SimMessageFragment;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mMsgFragment:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    return-object v0
.end method

.method public onContactLookupChanged()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->refresh(Z)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mMsgFragment:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->mMsgFragment:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->refresh()V

    .line 127
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v4, 0x7f030024

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 41
    .local v2, "messageInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 42
    const-string v4, "address"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v3, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v4, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->initActionBar(Ljava/util/List;)V

    .line 46
    const-string v4, "date"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "body"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "index"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->initMessage(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 58
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 85
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageItemViewActivity;->launchMainActivity()V

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
