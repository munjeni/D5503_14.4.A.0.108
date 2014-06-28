.class public abstract Lcom/android/phone/CallView;
.super Landroid/widget/RelativeLayout;
.source "CallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallView$ConferenceListAdapter;,
        Lcom/android/phone/CallView$ConferenceCallItem;,
        Lcom/android/phone/CallView$CallViewActionListener;,
        Lcom/android/phone/CallView$CallViewMode;
    }
.end annotation


# instance fields
.field protected MAX_CALLERS_IN_CONFERENCE:I

.field protected listener:Lcom/android/phone/CallView$CallViewActionListener;

.field protected mBluetoothAudioIsOn:Z

.field protected mBluetoothHeadsetIsConnected:Z

.field protected mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

.field protected mConferenceCallItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallView$ConferenceCallItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mMicIsMuted:Z

.field protected mSpeakerIsOn:Z

.field protected mWiredHeadsetIsConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/CallView;->MAX_CALLERS_IN_CONFERENCE:I

    .line 43
    iput-boolean v1, p0, Lcom/android/phone/CallView;->mMicIsMuted:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/phone/CallView;->mSpeakerIsOn:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/phone/CallView;->mBluetoothHeadsetIsConnected:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/phone/CallView;->mBluetoothAudioIsOn:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/phone/CallView;->mWiredHeadsetIsConnected:Z

    .line 58
    return-void
.end method


# virtual methods
.method public abstract cleanUpWidgetMenu()V
.end method

.method public abstract clear()V
.end method

.method public abstract clearDtmfDialPadDigits()V
.end method

.method public abstract closeDtmfDialPad()V
.end method

.method public abstract closeRejectMsgList()V
.end method

.method protected fireAction(ILjava/lang/Object;)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "information"    # Ljava/lang/Object;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-interface {v0, p1, p2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 212
    :cond_0
    return-void
.end method

.method public abstract getDtmfDialPadDigits()Ljava/lang/String;
.end method

.method public abstract handleBackKey()Z
.end method

.method protected abstract hideAmAnimation()V
.end method

.method public abstract hideRejectMsgList()V
.end method

.method protected inManageConference()Z
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    sget-object v1, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract initRejectMsgList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isDtmfDialPadOpen()Z
.end method

.method public abstract isEndCallInteractionOpened()Z
.end method

.method protected isHWQwertyVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 483
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isRejectMsgListOpened()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract openDtmfDialPad()V
.end method

.method public reDraw()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public abstract refreshSoundStates()V
.end method

.method public setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/CallView$CallViewActionListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 68
    return-void
.end method

.method public abstract setBackgroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V
.end method

.method public setBluetoothAudioIsOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/android/phone/CallView;->mBluetoothAudioIsOn:Z

    .line 269
    return-void
.end method

.method public setBluetoothHeadsetIsConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/android/phone/CallView;->mBluetoothHeadsetIsConnected:Z

    .line 261
    return-void
.end method

.method public abstract setCallRecordingOn(Z)V
.end method

.method public abstract setCallRecordingTime(Ljava/lang/String;)V
.end method

.method public abstract setCallTime(Ljava/lang/String;)V
.end method

.method public setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/phone/CallView$CallViewMode;

    .prologue
    .line 227
    return-void
.end method

.method protected setConferenceListInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallView$ConferenceCallItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "conferenceCallList":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/CallView$ConferenceCallItem;>;"
    iput-object p1, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    .line 285
    return-void
.end method

.method public abstract setDtmfDialPadDigits(Ljava/lang/String;)V
.end method

.method public abstract setForegroundCallCityId(Ljava/lang/String;)V
.end method

.method public abstract setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V
.end method

.method public abstract setForegroundCallInfoForWaitingCall(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setForegroundCallPhoto(I)V
.end method

.method public abstract setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected setInManageConference(Z)V
    .locals 1
    .param p1, "inConference"    # Z

    .prologue
    .line 492
    if-eqz p1, :cond_0

    .line 493
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    iput-object v0, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    iput-object v0, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    goto :goto_0
.end method

.method protected abstract setMicButtonEnabled(Z)V
.end method

.method public setMicIsMuted(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/android/phone/CallView;->mMicIsMuted:Z

    .line 220
    return-void
.end method

.method public abstract setSoundRoutingOptionsVisibility(I)V
.end method

.method public setSpeakerIsOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/android/phone/CallView;->mSpeakerIsOn:Z

    .line 235
    return-void
.end method

.method public setWiredHeadsetIsConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/android/phone/CallView;->mWiredHeadsetIsConnected:Z

    .line 277
    return-void
.end method

.method public abstract showAllCallsEndedLayout(Ljava/lang/String;Z)V
.end method

.method protected abstract showAmPlayingAnimation()V
.end method

.method protected abstract showAmRecordingAnimation()V
.end method

.method public abstract showCallEndedInteractionLayout(ZLjava/lang/Object;)V
.end method

.method public abstract showConferenceCallLayout(ZZ)V
.end method

.method public abstract showEndingLastCallLayout(I)V
.end method

.method public abstract showIncomingCallLayout()V
.end method

.method public abstract showOptionMenuButton(Z)V
.end method

.method public abstract showSingleCallLayout(ZZZ)V
.end method

.method public abstract showSipCallingProgress()V
.end method

.method public abstract showTwoCallsLayout(ZZZ)V
.end method

.method public abstract showWaitingCallLayout(ZZ)V
.end method

.method public abstract showWidget(Landroid/widget/RemoteViews;I)V
.end method

.method protected abstract startAmPlayingAnimation()V
.end method

.method protected abstract startAmRecordingAnimation()V
.end method

.method protected abstract toggleSpeakerIcon(Z)V
.end method

.method public abstract updateWidgetMenu(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation
.end method
