.class public Lcom/android/phone/am/SomcAmGreetingPreference;
.super Lcom/android/phone/am/SomcAmMessagePreference;
.source "SomcAmGreetingPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mIconListener:Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;

.field private mMessageId:I

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/phone/am/SomcAmMessagePreference;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 30
    iput-object v1, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 31
    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mChecked:Z

    .line 32
    iput-object v1, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mIconListener:Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;

    .line 33
    iput v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mMessageId:I

    .line 62
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/phone/am/SomcAmMessagePreference;->cleanUp()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 162
    return-void
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mMessageId:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/android/phone/am/SomcAmMessagePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 68
    iget-object v1, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 69
    iget-object v1, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mChecked:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    const v0, 0x7f070047

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mIconListener:Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mIconListener:Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;

    invoke-interface {v0, p0}, Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;->onIconClick(Landroid/preference/Preference;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/am/SomcAmMessagePreference;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAudioSource(Ljava/lang/String;)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    .line 122
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 123
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SomcAmGreetingPreference"

    const-string v2, "Failed to create MediaPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/phone/am/SomcAmGreetingPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/am/SomcAmGreetingPreference$1;-><init>(Lcom/android/phone/am/SomcAmGreetingPreference;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 143
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/phone/am/SomcAmGreetingPreference$2;

    invoke-direct {v2, p0}, Lcom/android/phone/am/SomcAmGreetingPreference$2;-><init>(Lcom/android/phone/am/SomcAmGreetingPreference;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0

    .line 131
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SomcAmGreetingPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with Media Player"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mChecked:Z

    .line 98
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 101
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmMessagePreference;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    :cond_1
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mMessageId:I

    .line 171
    return-void
.end method

.method public setOnPlayerIconClickListener(Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;)V
    .locals 0
    .param p1, "oniconClickListener"    # Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingPreference;->mIconListener:Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;

    .line 113
    return-void
.end method
