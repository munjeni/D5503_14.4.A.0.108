.class public abstract Lcom/android/phone/am/SomcAmMessageSetting;
.super Landroid/preference/PreferenceActivity;
.source "SomcAmMessageSetting.java"


# instance fields
.field private mIsSpeakerphoneOn:Z

.field private mSpeakerIcon:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmMessageSetting;->mIsSpeakerphoneOn:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmMessageSetting;->mSpeakerIcon:Landroid/view/MenuItem;

    return-void
.end method

.method private enableSpeaker(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 96
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmMessageSetting;->turnOnSpeaker(Z)V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmMessageSetting;->turnOnSpeakerIcon(Z)V

    .line 100
    :cond_0
    return-void
.end method

.method private turnOnSpeaker(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 103
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 107
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 109
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private turnOnSpeakerIcon(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 112
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessageSetting;->mSpeakerIcon:Landroid/view/MenuItem;

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    .line 117
    .local v0, "speakerIcon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessageSetting;->mSpeakerIcon:Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 128
    :goto_1
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessageSetting;->mSpeakerIcon:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessageSetting;->mSpeakerIcon:Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0172

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 60
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 62
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f030013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 64
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 78
    .local v1, "itemId":I
    sparse-switch v1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 80
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 84
    :sswitch_1
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 87
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/phone/am/SomcAmMessageSetting;->enableSpeaker(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f070046 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 47
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 51
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 52
    .local v1, "currentAudioMode":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 53
    iget-boolean v2, p0, Lcom/android/phone/am/SomcAmMessageSetting;->mIsSpeakerphoneOn:Z

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 56
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "currentAudioMode":I
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 69
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const v0, 0x7f070046

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmMessageSetting;->mSpeakerIcon:Landroid/view/MenuItem;

    .line 72
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 27
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 31
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/am/SomcAmMessageSetting;->mIsSpeakerphoneOn:Z

    .line 33
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/am/SomcAmMessageSetting;->enableSpeaker(Z)V

    .line 37
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 40
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    :cond_1
    return-void
.end method
