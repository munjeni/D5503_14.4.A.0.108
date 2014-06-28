.class public Lcom/sonyericsson/conversations/ui/SimMessagesActivity;
.super Landroid/app/Activity;
.source "SimMessagesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 44
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 48
    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    const/16 v1, 0x13

    if-ne p1, v1, :cond_1

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0089

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .line 52
    .local v0, "fragment":Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->focusMessageList()V

    .line 56
    .end local v0    # "fragment":Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0089

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .line 64
    .local v0, "fragment":Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->init()V

    .line 67
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 78
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getConversationHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 76
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
