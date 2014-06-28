.class public Lcom/sonyericsson/conversations/ui/ConversationListActivity;
.super Landroid/app/Activity;
.source "ConversationListActivity.java"


# static fields
.field private static final REQUEST_SET_STANDARD_APP:I = 0xbada

.field private static final TAG:Ljava/lang/String; = "ConversationActivity"


# instance fields
.field mDialogFragmentForTest:Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

.field mEnableForceMessageType:Z

.field private mInSearchMode:Z

.field private mSearchString:Ljava/lang/String;

.field private mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mInSearchMode:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mSearchString:Ljava/lang/String;

    return-void
.end method

.method private createUIController(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onCreate(Landroid/os/Bundle;)V

    .line 77
    return-void

    .line 74
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    goto :goto_0
.end method

.method private pauseWaitResumeActivity()V
    .locals 3

    .prologue
    .line 207
    const-string v1, "ConversationActivity"

    const-string v2, "\n --- Pausing ConversationListActivity ---\n\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->onPause()V

    .line 210
    const-wide/16 v1, 0xdac

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    const-string v1, "ConversationActivity"

    const-string v2, "\n --- Resuming ConversationListActivity ---\n\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->onResume()V

    .line 216
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method getComposerForTest()Lcom/sonyericsson/conversations/ui/Composer;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    return-object v0
.end method

.method getDialogFragmentForTest()Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mDialogFragmentForTest:Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    return-object v0
.end method

.method public getListFragmentForTest()Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isSearchBoxVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 249
    :cond_0
    return-void
.end method

.method public isDefaultSmsPackage()Z
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "smsPackage":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInSearchMode()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mInSearchMode:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 146
    const v0, 0xbada

    if-ne p1, v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isDefaultSmsPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 160
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableApp(Landroid/content/Context;)V

    .line 57
    new-instance v0, Lcom/sonymobile/multiuser/GuestUserDialog;

    invoke-direct {v0}, Lcom/sonymobile/multiuser/GuestUserDialog;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ownerOnly"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->createUIController(Landroid/os/Bundle;)V

    .line 61
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnableForceMessageType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mEnableForceMessageType:Z

    .line 63
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/UiConfig;->initStatusbarHeight(Landroid/content/res/Resources;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onDestroy()V

    .line 111
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onActionBarHomePressed()V

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onPause()V

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isDefaultSmsPackage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const v2, 0xbada

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    return-void

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onResume()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onSearchRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInSearchMode(ZLjava/lang/String;)V
    .locals 0
    .param p1, "inSearchMode"    # Z
    .param p2, "searchString"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mInSearchMode:Z

    .line 233
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mSearchString:Ljava/lang/String;

    .line 234
    return-void
.end method
