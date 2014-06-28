.class public Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;
.super Ljava/lang/Object;
.source "FrequencyDisplay.java"


# instance fields
.field private lastFrequency:Ljava/lang/String;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mDelayedInfo:Ljava/lang/String;

.field private mFrequencyView:Landroid/widget/TextView;

.field private mInfoView:Landroid/widget/TextView;

.field private mIsInteracting:Z

.field private mShowingInfo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frequencyView"    # Landroid/widget/TextView;
    .param p3, "infoView"    # Landroid/widget/TextView;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    .line 49
    iput-object p3, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mInfoView:Landroid/widget/TextView;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->lastFrequency:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sonyericsson/fmradio/util/FontUtils;->getDigitLightFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mInfoView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sonyericsson/fmradio/util/FontUtils;->getLightFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setAlpha(F)V

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mAnimator:Landroid/animation/ValueAnimator;

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay$1;-><init>(Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private f(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    const/high16 v1, 0x3f000000

    .line 94
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40000000

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private setInfoText(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mInfoView:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mInfoView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 143
    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    .line 151
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mDelayedInfo:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mInfoView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 153
    .local v0, "infoText":Ljava/lang/CharSequence;
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mIsInteracting:Z

    if-nez v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 155
    .local v1, "showInfo":Z
    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mDelayedInfo:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mDelayedInfo:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setInfoText(Ljava/lang/String;)V

    .line 158
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mDelayedInfo:Ljava/lang/String;

    .line 161
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mShowingInfo:Z

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 163
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 164
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setAlpha(F)V

    .line 174
    :cond_1
    :goto_2
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mShowingInfo:Z

    .line 175
    return-void

    .line 151
    .end local v0    # "infoText":Ljava/lang/CharSequence;
    .end local v1    # "showInfo":Z
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mDelayedInfo:Ljava/lang/String;

    goto :goto_0

    .line 153
    .restart local v0    # "infoText":Ljava/lang/CharSequence;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 165
    .restart local v1    # "showInfo":Z
    :cond_4
    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mShowingInfo:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_2

    .line 171
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2
.end method


# virtual methods
.method public accessibilitySayCurrentFrequency(Ljava/lang/String;)V
    .locals 6
    .param p1, "frequency"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f05003e

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->lastFrequency:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "talkback":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 122
    return-void

    .line 116
    .end local v0    # "talkback":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "talkback":Ljava/lang/String;
    goto :goto_0
.end method

.method protected setAlpha(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000

    sub-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->f(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mInfoView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->f(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 91
    return-void
.end method

.method public setFrequency(Ljava/lang/String;)V
    .locals 2
    .param p1, "frequency"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->lastFrequency:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->lastFrequency:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->accessibilitySayCurrentFrequency(Ljava/lang/String;)V

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->lastFrequency:Ljava/lang/String;

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->update()V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 108
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 127
    const-string p1, ""

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mDelayedInfo:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->update()V

    .line 133
    return-void
.end method

.method public setInteracting(Z)V
    .locals 0
    .param p1, "isInteracting"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mIsInteracting:Z

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->update()V

    .line 148
    return-void
.end method

.method public updateWidth(Lcom/stericsson/hardware/fm/FmBand;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;)V
    .locals 10
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;
    .param p2, "ff"    # Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v2

    .line 71
    .local v2, "min":I
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v1

    .line 72
    .local v1, "max":I
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v6

    .line 73
    .local v6, "step":I
    const/4 v7, 0x0

    .line 74
    .local v7, "width":I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 75
    .local v3, "p":Landroid/graphics/Paint;
    move v0, v2

    .local v0, "frequency":I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 76
    invoke-virtual {p2, v0}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    const v9, 0x3f7d70a4

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 75
    add-int/2addr v0, v6

    goto :goto_0

    .line 82
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 83
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method
