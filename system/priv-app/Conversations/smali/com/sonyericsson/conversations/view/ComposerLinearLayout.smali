.class public Lcom/sonyericsson/conversations/view/ComposerLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ComposerLinearLayout.java"


# static fields
.field private static final ANIMATED_HEIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/sonyericsson/conversations/view/ComposerLinearLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEIGHT_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mAnimatedHeight:I

.field private mHeightAnimator:Landroid/animation/ObjectAnimator;

.field private mTargetHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "animatedHeight"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->ANIMATED_HEIGHT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->createDefaultHeightAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->setHeightAnimator(Landroid/animation/ObjectAnimator;)V

    .line 36
    return-void
.end method


# virtual methods
.method public createDefaultHeightAnimator()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 52
    sget-object v1, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->ANIMATED_HEIGHT:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 54
    .local v0, "defaultHeightAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 55
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    return-object v0
.end method

.method public getAnimatedHeight()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mAnimatedHeight:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 63
    .local v0, "newTargetHeight":I
    iget v1, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mTargetHeight:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mTargetHeight:I

    if-eqz v1, :cond_0

    .line 64
    iput v0, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mTargetHeight:I

    .line 65
    iget-object v1, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mHeightAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->setAnimatedHeight(I)V

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mHeightAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mTargetHeight:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mHeightAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mHeightAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mAnimatedHeight:I

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 73
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 78
    iget v0, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mTargetHeight:I

    if-nez v0, :cond_0

    .line 79
    iput p2, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mTargetHeight:I

    .line 81
    :cond_0
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .param p1, "animatedHeight"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mAnimatedHeight:I

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 41
    return-void
.end method

.method public setHeightAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "heightAnimator"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->mHeightAnimator:Landroid/animation/ObjectAnimator;

    .line 49
    return-void
.end method
