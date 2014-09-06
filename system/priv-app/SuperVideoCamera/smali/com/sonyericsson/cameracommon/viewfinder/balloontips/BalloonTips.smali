.class public Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;
.super Landroid/widget/RelativeLayout;
.source "BalloonTips.java"


# instance fields
.field mBalloonTips:Landroid/widget/RelativeLayout;

.field mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

.field private mDistanceToModeSelector:I

.field private mIsBalloonTipsOpen:Z

.field private mLandscapePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mDistanceToModeSelector:I

    .line 35
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mLandscapePosition:I

    .line 36
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mIsBalloonTipsOpen:Z

    .line 40
    return-void
.end method

.method private ajustHeightMargin()V
    .locals 7

    .prologue
    .line 156
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_background_port_1:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 158
    .local v2, "portBottomView":Landroid/widget/ImageView;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v4, "portRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 160
    .local v1, "landRect":Landroid/graphics/Rect;
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_background_port_2:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 161
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_background_land_2:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 163
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_background_port_2:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 165
    .local v3, "portHeight":I
    const/4 v0, 0x0

    .line 166
    .local v0, "lackingWidth":I
    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mLandscapePosition:I

    const/16 v6, 0xf

    if-ne v5, v6, :cond_0

    .line 167
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int v0, v5, v6

    .line 172
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 173
    return-void

    .line 169
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int v0, v5, v6

    goto :goto_0
.end method

.method private getBalloonTipsBottomMargin(I)I
    .locals 5
    .param p1, "viewId"    # I

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 208
    .local v0, "balloonTips":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mDistanceToModeSelector:I

    sub-int v2, v3, v4

    .line 209
    .local v2, "modeSelectorCenterPosition":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 212
    .local v1, "balloonTipsCenterPosition":I
    sub-int v3, v1, v2

    return v3
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mIsBalloonTipsOpen:Z

    .line 111
    return-void
.end method

.method public isBalloonTipsEnabled()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isBalloonTipsEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I

    .prologue
    .line 187
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->rotateBalloonTips()V

    .line 189
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->ajustHeightMargin()V

    .line 201
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 202
    return-void
.end method

.method public releaseBalloonTips()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mLandscapePosition:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    .line 80
    return-void
.end method

.method public rotateBalloonTips()V
    .locals 6

    .prologue
    const/16 v3, 0xf

    const/high16 v5, -0x3d4c0000

    const/high16 v4, 0x40000000

    .line 126
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_port:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 127
    .local v1, "port":Landroid/widget/RelativeLayout;
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_land:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 130
    .local v0, "land":Landroid/widget/RelativeLayout;
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mLandscapePosition:I

    if-eq v2, v3, :cond_0

    .line 131
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_land:I

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->getBalloonTipsBottomMargin(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 135
    :cond_0
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mLandscapePosition:I

    if-ne v2, v3, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 139
    invoke-virtual {v1, v5}, Landroid/view/View;->setRotation(F)V

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 147
    invoke-virtual {v1, v5}, Landroid/view/View;->setRotation(F)V

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_port:I

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->getBalloonTipsBottomMargin(I)I

    move-result v3

    add-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public setBalloonTipsOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 87
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_port:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    .line 94
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mIsBalloonTipsOpen:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->show()V

    .line 97
    :cond_0
    return-void

    .line 89
    :cond_1
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_land:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public setContentsText(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 181
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_contents_land:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_contents_port:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    return-void
.end method

.method public setTitleText(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 176
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_title_land:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_title_port:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    return-void
.end method

.method public setupBalloonTips(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;IZ)V
    .locals 5
    .param p1, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p2, "distanceToModeSelector"    # I
    .param p3, "isPositionCenter"    # Z

    .prologue
    const/4 v4, 0x4

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 51
    iput p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mDistanceToModeSelector:I

    .line 53
    if-eqz p3, :cond_0

    .line 54
    const/16 v2, 0xf

    iput v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mLandscapePosition:I

    .line 60
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_balloon_tips_modeselector_title_txt:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_balloon_tips_modeselector_txt:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "description":Ljava/lang/String;
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_land:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mLandscapePosition:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->balloon_tips_port:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    .line 72
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mLandscapePosition:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    return-void

    .line 56
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/16 v2, 0xc

    iput v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mLandscapePosition:I

    goto :goto_0
.end method

.method public setupBalloonTips(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Z)V
    .locals 1
    .param p1, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p2, "isPositionCenter"    # Z

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->setupBalloonTips(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;IZ)V

    .line 45
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mBalloonTips:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mIsBalloonTipsOpen:Z

    .line 106
    return-void
.end method

.method public stopBalloonTipsCounter()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->BALLOON_TIPS_COUNTER:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 116
    .local v0, "count":Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 123
    :goto_0
    return-void

    .line 118
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->COUNT_STOP:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0
.end method
