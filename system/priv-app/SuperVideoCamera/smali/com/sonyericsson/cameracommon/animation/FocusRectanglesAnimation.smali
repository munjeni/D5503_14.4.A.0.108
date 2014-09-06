.class public Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
.super Ljava/lang/Object;
.source "FocusRectanglesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;,
        Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;,
        Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFadeOutAnimationSingle:Landroid/view/animation/AlphaAnimation;

.field private mFocusInAnimationSingle:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

.field private final mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_width:I

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_height:I

    sget v4, Lcom/sonyericsson/cameracommon/R$attr;->focus_indicator_animation_mag_single:I

    sget v5, Lcom/sonyericsson/cameracommon/R$integer;->focus_indicator_animation_focusin_duration:I

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTargetView:Landroid/view/View;

    return-object p1
.end method

.method private getFadeOutAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimationSingle:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->focus_indicator_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AlphaAnimation;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimationSingle:Landroid/view/animation/AlphaAnimation;

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimationSingle:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimationSingle:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private playAfFadeOutAnimation(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getFadeOutAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 87
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTargetView:Landroid/view/View;

    .line 90
    return-void
.end method

.method private playAfFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationSingle:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;-><init>(Landroid/view/View;)V

    iget v1, p2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    iget v2, p2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->setFromSize(II)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    move-result-object v0

    iget v1, p2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iget v2, p2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->setToSize(II)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    move-result-object v0

    iget v1, p2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mDuration:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->setDuration(I)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->create()Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationSingle:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationSingle:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationSingle:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public playAfFadeOutAnimationSingle(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimation(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public playAfFocusInAnimationSingle(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)V

    .line 66
    return-void
.end method
