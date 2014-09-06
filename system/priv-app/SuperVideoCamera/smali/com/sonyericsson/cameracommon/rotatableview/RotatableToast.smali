.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.super Landroid/widget/FrameLayout;
.source "RotatableToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$2;,
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;,
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    }
.end annotation


# static fields
.field private static final FADEOUT_OFFSET_LONG:J = 0x1194L

.field private static final FADEOUT_OFFSET_SHORT:J = 0x9c4L

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RotatableToast"

.field private static mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

.field private static mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;


# instance fields
.field private mBackgroundView:Landroid/view/ViewGroup;

.field private mBaseView:Landroid/view/ViewGroup;

.field private mDuration:I

.field private mFadeoutAnimation:Landroid/view/animation/Animation;

.field mHandler:Landroid/os/Handler;

.field private mIsAddedToWindow:Z

.field private mSensorOrientation:I

.field private final mStartAnimation:Ljava/lang/Runnable;

.field private mTextView:Landroid/widget/TextView;

.field private mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 63
    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    .line 79
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    .line 82
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    .line 88
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    .line 91
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 101
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mIsAddedToWindow:Z

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    .line 271
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;-><init>(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private addToWindow()V
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 326
    .local v0, "act":Landroid/app/Activity;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 331
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 332
    const/4 v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 333
    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 334
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x18

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 340
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    const/16 v2, 0x200

    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 343
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mIsAddedToWindow:Z

    .line 344
    return-void
.end method

.method private getContainerRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 221
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 225
    .local v0, "params":Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    :goto_0
    if-nez v0, :cond_1

    .line 239
    :goto_1
    return-object v1

    .line 221
    .end local v0    # "params":Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    goto :goto_0

    .line 229
    .restart local v0    # "params":Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    :cond_1
    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$2;->$SwitchMap$com$sonyericsson$cameracommon$rotatableview$RotatableToast$ToastPosition:[I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 231
    :pswitch_0
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->topContainer:Landroid/graphics/Rect;

    goto :goto_1

    .line 234
    :pswitch_1
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->bottomContainer:Landroid/graphics/Rect;

    goto :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 416
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->rotatable_toast:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    return-object v0
.end method

.method private removeFromWindow()V
    .locals 4

    .prologue
    .line 355
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mIsAddedToWindow:Z

    if-nez v2, :cond_0

    .line 368
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 363
    .local v0, "act":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mIsAddedToWindow:Z

    goto :goto_0

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "RotatableToast"

    const-string v3, "removeFromWindow: no view. WindowManager may update already."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setToastLayoutParams(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;)V
    .locals 0
    .param p0, "landscape"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    .param p1, "portrait"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .prologue
    .line 68
    sput-object p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 69
    sput-object p1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 70
    return-void
.end method

.method private updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 209
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 210
    .local v0, "container":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateTextMaxWidth()V
    .locals 3

    .prologue
    .line 195
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->rotatable_toast_max_width_for_port:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->rotatable_toast_max_width_for_land:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 287
    return-void
.end method

.method public hideImmediately()V
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 296
    .local v0, "currentAnimation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 306
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    .line 317
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    .line 374
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 379
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 385
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 128
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_toast_base:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    .line 130
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_toast_text_background:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    .line 132
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_toast_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->rotatable_toast_anime:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    .line 138
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    .line 404
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 407
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 410
    .local v0, "reult":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    .line 169
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updateTextMaxWidth()V

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updatePosition()V

    .line 160
    return-void
.end method

.method public setTextResId(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    return-void
.end method

.method public setToastPosition(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .locals 0
    .param p1, "position"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 187
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 250
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 253
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->addToWindow()V

    .line 254
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updateTextMaxWidth()V

    .line 255
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updatePosition()V

    .line 259
    iget v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 260
    const-wide/16 v1, 0x1194

    .line 265
    .local v1, "durationTime":J
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    .line 266
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    return-void

    .line 262
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "durationTime":J
    :cond_0
    const-wide/16 v1, 0x9c4

    .restart local v1    # "durationTime":J
    goto :goto_0
.end method
