.class public Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;
.super Lcom/sonyericsson/conversations/ui/controller/SettingsController;
.source "SettingsTwoPaneController.java"


# static fields
.field private static final DIM_LAYER_TAG:Ljava/lang/String; = "DIM_LAYER_TAG"


# instance fields
.field mNotificationFragment:Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

.field mSettingsFragmentCallback:Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;

.field mSimMessageListFragment:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

.field mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

.field mTextTemplateFragmentCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/conversations/ui/SettingsActivity;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;-><init>(Lcom/sonyericsson/conversations/ui/SettingsActivity;)V

    .line 33
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mNotificationFragment:Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

    .line 36
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSimMessageListFragment:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .line 40
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragmentCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    .line 54
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$2;-><init>(Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSettingsFragmentCallback:Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->getDimLayer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private displayDefaultDetailFragment()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->setNotificationFragmentVisibility(Z)V

    .line 122
    return-void
.end method

.method private displaySettingsDetailFragment(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 96
    const-string v1, "extra"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "extra":Ljava/lang/String;
    const-string v1, "com.sonyericsson.conversations.ui.DISPLAY_NOTIFICATION_SETTINGS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->setNotificationFragmentVisibility(Z)V

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v1, "com.sonyericsson.conversations.ui.DISPLAY_SIM_MESSAGE_SETTINGS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->setSimMessageFragmentVisibility(Z)V

    goto :goto_0

    .line 101
    :cond_1
    const-string v1, "com.sonyericsson.conversations.ui.DISPLAY_TEMPLATE_MESSAGE_SETTINGS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->setTextTemplateFragmentVisibility(Z)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->displayDefaultDetailFragment()V

    goto :goto_0
.end method

.method private getDimLayer(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 211
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, "v":Landroid/view/View;
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 213
    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 214
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$3;-><init>(Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    const-string v1, "DIM_LAYER_TAG"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 221
    return-object v0
.end method

.method private removeDetailFragment()V
    .locals 4

    .prologue
    .line 175
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    const v3, 0x7f0a002f

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 176
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 177
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 178
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 179
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 180
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 181
    const/4 v0, 0x0

    .line 183
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private setBackground()V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "leftPane":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 83
    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method protected initSettingsFragment()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSettingsFragmentCallback:Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->setCallback(Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->displaySettingsDetailFragment(Landroid/content/Intent;)V

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->setBackground()V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SettingsActivity;->adjustRatioOf2Panes()V

    .line 78
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->onNewIntent(Landroid/content/Intent;)V

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "previousExtra":Ljava/lang/String;
    const-string v2, "extra"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "extra":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->displaySettingsDetailFragment(Landroid/content/Intent;)V

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method protected removeFragments()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->setNotificationFragmentVisibility(Z)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->setSimMessageFragmentVisibility(Z)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->setTextTemplateFragmentVisibility(Z)V

    .line 92
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->removeFragments()V

    .line 93
    return-void
.end method

.method protected setNotificationFragmentVisibility(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_2

    .line 132
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mNotificationFragment:Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mNotificationFragment:Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mNotificationFragment:Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->removeDetailFragment()V

    .line 138
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 139
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f0a002f

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mNotificationFragment:Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 140
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 150
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mNotificationFragment:Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mNotificationFragment:Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 144
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mNotificationFragment:Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 145
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 147
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 148
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mNotificationFragment:Lcom/sonyericsson/conversations/ui/NotificationSettingsFragment;

    goto :goto_0
.end method

.method protected setSimMessageFragmentVisibility(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    .line 153
    if-eqz p1, :cond_2

    .line 154
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSimMessageListFragment:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    if-nez v2, :cond_0

    .line 155
    new-instance v2, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSimMessageListFragment:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSimMessageListFragment:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->removeDetailFragment()V

    .line 160
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 161
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f0a002f

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSimMessageListFragment:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 162
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 172
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSimMessageListFragment:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSimMessageListFragment:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 166
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSimMessageListFragment:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 167
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 170
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mSimMessageListFragment:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    goto :goto_0
.end method

.method protected setTextTemplateFragmentVisibility(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/4 v3, 0x0

    .line 187
    if-eqz p1, :cond_2

    .line 188
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    if-nez v2, :cond_0

    .line 189
    new-instance v2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->removeDetailFragment()V

    .line 194
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 195
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f0a002f

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 196
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 197
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragmentCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->setCallback(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;)V

    .line 208
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 201
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 202
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 204
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 205
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->setCallback(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;)V

    .line 206
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->mTextTemplateFragment:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    goto :goto_0
.end method
