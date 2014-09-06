.class public Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
.super Lcom/sonyericsson/cameracommon/review/ReviewScreen;
.source "AutoReviewWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;
    }
.end annotation


# static fields
.field private static ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDuration:J

.field private mIsOpened:Z

.field private mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

.field private mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field private final mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

.field private mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "com.sonymobile.moviecreator.intent.action.TIMESHIFT_VIDEO_EDITOR"

    sput-object v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 73
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public static isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    .line 125
    return-void
.end method

.method public static launchEditor(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 81
    sget v3, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_in:I

    sget v4, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_out:I

    invoke-static {p0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 86
    .local v2, "options":Landroid/app/ActivityOptions;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 93
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static launchEditorHighFrameRate(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 99
    sget v3, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_in:I

    sget v4, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_out:I

    invoke-static {p0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 104
    .local v2, "options":Landroid/app/ActivityOptions;
    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 111
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 114
    :cond_0
    return-void
.end method

.method public static launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 132
    return-void
.end method


# virtual methods
.method backToViewFinder()V
    .locals 0

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->hide()V

    .line 392
    return-void
.end method

.method getContentResolverUtilListener()Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

    return-object v0
.end method

.method getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->cancelDialog()V

    .line 228
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 229
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 230
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->hideScreen()V

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowClose()V

    .line 236
    :cond_0
    return-void
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 137
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 141
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 144
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 147
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setReviewScreen(Lcom/sonyericsson/cameracommon/review/ReviewScreen;)V

    .line 148
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;)V

    goto :goto_0

    .line 150
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 158
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setReviewScreen(Lcom/sonyericsson/cameracommon/review/ReviewScreen;)V

    .line 159
    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;)V

    goto :goto_0

    .line 162
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    :cond_0
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    .line 163
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

    .line 165
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->onDetachedFromWindow()V

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 168
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 264
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    sget-object v2, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    return v1

    .line 272
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->backToViewFinder()V

    .line 290
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 283
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    goto :goto_1

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 297
    sparse-switch p1, :sswitch_data_0

    .line 305
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    .line 301
    :sswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->backToViewFinder()V

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public open(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;)Z
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "pictureRect"    # Landroid/graphics/Rect;
    .param p5, "orientation"    # I
    .param p6, "listener"    # Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;
    .param p7, "crListener"    # Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

    .prologue
    .line 181
    const-string v1, "video/mp4"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/3gpp"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    const-wide/16 v7, -0x1

    .line 188
    .local v7, "duration":J
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-nez v1, :cond_2

    .line 190
    const/4 v1, 0x0

    .line 218
    :goto_1
    return v1

    .line 185
    .end local v7    # "duration":J
    :cond_1
    iget-wide v7, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDuration:J

    .restart local v7    # "duration":J
    goto :goto_0

    .line 195
    :cond_2
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    .line 196
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

    .line 198
    move-object v3, p2

    .line 199
    .local v3, "outputUri":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "path":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->STANDARD_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 209
    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setupScreen(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->show()V

    .line 211
    invoke-virtual {p0, v7, v8}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->startTimer(J)V

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v1, :cond_4

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowOpen()V

    .line 216
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 218
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDuration:J

    .line 174
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V
    .locals 1
    .param p1, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p2, "settings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 77
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-direct {v0, p2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 78
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->showScreen()V

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 224
    return-void
.end method

.method public startTimer(J)V
    .locals 9
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v7, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 242
    cmp-long v0, p1, v7

    if-lez v0, :cond_0

    .line 243
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    new-instance v5, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;

    invoke-direct {v5, p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V

    sget-object v6, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->TAG:Ljava/lang/String;

    move-wide v1, p1

    move-wide v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->start()V

    .line 246
    :cond_0
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->cancel()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 255
    :cond_0
    return-void
.end method
