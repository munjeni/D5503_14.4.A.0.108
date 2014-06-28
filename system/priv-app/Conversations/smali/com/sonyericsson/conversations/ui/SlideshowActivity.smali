.class public Lcom/sonyericsson/conversations/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SlideshowActivity$ScreenReceiver;,
        Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideshowActivity"


# instance fields
.field private mBwNextListenr:Landroid/view/View$OnClickListener;

.field private mCreateSmilPlayerRunner:Ljava/lang/Runnable;

.field private mFwNextListenr:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mMediaController:Landroid/widget/MediaController;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 192
    new-instance v0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;-><init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mFwNextListenr:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$3;-><init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mBwNextListenr:Landroid/view/View$OnClickListener;

    .line 386
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SlideshowActivity;
    .param p1, "x1"    # Lcom/android/mms/dom/smil/SmilPlayer;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->initMediaController()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SlideshowActivity;
    .param p1, "x1"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SlideshowActivity;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method private initMediaController()V
    .locals 8

    .prologue
    .line 163
    new-instance v5, Landroid/widget/MediaController;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    .line 164
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    new-instance v6, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v6, v7}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/dom/smil/SmilPlayer;)V

    invoke-virtual {v5, v6}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 165
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    const v6, 0x7f0a0030

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 166
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mFwNextListenr:Landroid/view/View$OnClickListener;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mBwNextListenr:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6, v7}, Landroid/widget/MediaController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 172
    :try_start_0
    const-class v5, Landroid/widget/MediaController;

    const-string v6, "mEndTime"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 173
    .local v4, "mEndTimeField":Ljava/lang/reflect/Field;
    const-class v5, Landroid/widget/MediaController;

    const-string v6, "mCurrentTime"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 174
    .local v2, "mCurrentTimeField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 175
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 176
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 177
    .local v3, "mEndTime":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 178
    .local v1, "mCurrentTime":Landroid/widget/TextView;
    const v5, -0x777778

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    const v5, -0x777778

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 187
    .end local v1    # "mCurrentTime":Landroid/widget/TextView;
    .end local v2    # "mCurrentTimeField":Ljava/lang/reflect/Field;
    .end local v3    # "mEndTime":Landroid/widget/TextView;
    .end local v4    # "mEndTimeField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v5, "SlideshowActivity"

    const-string v6, "Can not find mEndTime or mCurrentTime in MediaController"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 182
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "SlideshowActivity"

    const-string v6, "Can not change mEndTime or mCurrentTime\'s color in MediaController"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "SlideshowActivity"

    const-string v6, "Can not access mEndTime or mCurrentTime in MediaController"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getSmilPlayerForInstrumentationTesting()Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 365
    move-object v0, p1

    .line 366
    .local v0, "event":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/conversations/ui/SlideshowActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$4;-><init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 89
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, -0x3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setFormat(I)V

    .line 91
    const v5, 0x7f030011

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 96
    .local v3, "msg":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 97
    const-string v5, "SlideshowActivity"

    const-string v6, "msg is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 160
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 112
    .local v2, "model":Lcom/android/mms/model/SlideshowModel;
    const v5, 0x7f0a0030

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SlideView;

    .line 113
    .local v4, "view":Lcom/android/mms/ui/SlideView;
    const-string v5, "SlideshowPresenter"

    invoke-static {v5, p0, v4, v2}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    .line 115
    new-instance v5, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;-><init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mCreateSmilPlayerRunner:Ljava/lang/Runnable;

    .line 159
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mCreateSmilPlayerRunner:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 106
    .end local v2    # "model":Lcom/android/mms/model/SlideshowModel;
    .end local v4    # "view":Lcom/android/mms/ui/SlideView;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v5, "SlideshowActivity"

    const-string v6, "Cannot present the slide show."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected final onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mCreateSmilPlayerRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mCreateSmilPlayerRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mCreateSmilPlayerRunner:Ljava/lang/Runnable;

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 280
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 281
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 285
    sparse-switch p1, :sswitch_data_0

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 300
    :cond_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 285
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 252
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 235
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
