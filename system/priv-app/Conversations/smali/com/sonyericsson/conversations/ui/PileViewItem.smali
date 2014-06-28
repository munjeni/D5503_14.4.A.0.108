.class public Lcom/sonyericsson/conversations/ui/PileViewItem;
.super Landroid/view/View;
.source "PileViewItem.java"


# static fields
.field private static final MAINIMAGE_RESID_ALIEN:I = 0x7f02002c

.field private static final MAINIMAGE_RESID_AUDIO:I = 0x7f020036

.field private static final MAINIMAGE_RESID_CONTACT:I = 0x7f020098

.field private static final MAINIMAGE_RESID_UNKNOWN:I = 0x7f020010

.field private static final TAG:Ljava/lang/String; = "PileViewItem"

.field private static final TYPEINDICATOR_RESID_VIDEO:I = 0x7f02009a

.field public static final TYPE_ALIEN:I = 0x3c

.field public static final TYPE_AUDIO:I = 0x28

.field public static final TYPE_CONTACT:I = 0x1e

.field public static final TYPE_PICTURE:I = 0xa

.field public static final TYPE_UNKNOWN:I = 0x32

.field public static final TYPE_VIDEO:I = 0x14


# instance fields
.field private final mAvailableHeightForMainImage:I

.field private final mAvailableWidthForMainImage:I

.field private final mDeleteButtonUnpressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mMainImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mMainImageScaleFactor:F

.field private final mMarginToMakeRoomForDeleteButton:I

.field mOverrideTouchEventLogicForTestingPurposes:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mRemoveButtonActive:Z

.field mRemoveButtonIsBeingPressed:Z

.field private final mRemoveButtonWidth:I

.field private mResources:Landroid/content/res/Resources;

.field private mRotation:F

.field private mTextLabelVisible:Z

.field mTextLayout:Landroid/text/BoringLayout;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mType:I

.field private mTypeIndicatorDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final mVisibleBorderThickness:I

.field private final mVisibleItemHeight:I

.field private final mVisibleItemWidth:I

.field private final mWantedHeight:I

.field private final mWantedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "mainImageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mPaint:Landroid/graphics/Paint;

    .line 35
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextPaint:Landroid/text/TextPaint;

    .line 39
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTypeIndicatorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 55
    const/4 v9, 0x0

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRotation:F

    .line 57
    const/high16 v9, 0x3f800000

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageScaleFactor:F

    .line 59
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonActive:Z

    .line 61
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextLabelVisible:Z

    .line 63
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mOverrideTouchEventLogicForTestingPurposes:Z

    .line 65
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonIsBeingPressed:Z

    .line 67
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextLayout:Landroid/text/BoringLayout;

    .line 69
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    const/16 v9, 0x32

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mType:I

    .line 101
    move/from16 v0, p2

    iput v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mType:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    .line 105
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f020045

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mDeleteButtonUnpressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mDeleteButtonUnpressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonWidth:I

    .line 108
    iget v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonWidth:I

    int-to-float v9, v9

    float-to-double v9, v9

    const-wide/high16 v11, 0x3fd0000000000000L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMarginToMakeRoomForDeleteButton:I

    .line 109
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0d0040

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v7, v9

    .line 111
    .local v7, "pileViewItemBorder":I
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mDeleteButtonUnpressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonWidth:I

    sub-int/2addr v11, v7

    iget v12, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonWidth:I

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0d003e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mWantedWidth:I

    .line 116
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0d003f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mWantedHeight:I

    .line 117
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0d0040

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleBorderThickness:I

    .line 119
    iget v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mWantedWidth:I

    iget v10, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMarginToMakeRoomForDeleteButton:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleItemWidth:I

    .line 120
    iget v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mWantedHeight:I

    iget v10, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMarginToMakeRoomForDeleteButton:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleItemHeight:I

    .line 122
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    if-eqz p3, :cond_1

    .line 127
    const/4 v2, 0x1

    .line 136
    .local v2, "imageSubmitted":Z
    :goto_0
    iget v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleItemWidth:I

    iget v10, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleBorderThickness:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableWidthForMainImage:I

    .line 137
    iget v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleItemHeight:I

    iget v10, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleBorderThickness:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableHeightForMainImage:I

    .line 138
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v4, v9

    .line 139
    .local v4, "mainW":F
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v3, v9

    .line 140
    .local v3, "mainH":F
    const/high16 v9, 0x3f800000

    iget v10, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableHeightForMainImage:I

    int-to-float v10, v10

    div-float/2addr v10, v3

    iget v11, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableWidthForMainImage:I

    int-to-float v11, v11

    div-float/2addr v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageScaleFactor:F

    .line 144
    iget v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageScaleFactor:F

    mul-float/2addr v9, v4

    iget v10, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableWidthForMainImage:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    float-to-int v5, v9

    .line 145
    .local v5, "offsetX":I
    iget v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageScaleFactor:F

    mul-float/2addr v9, v3

    iget v10, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableHeightForMainImage:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    float-to-int v6, v9

    .line 146
    .local v6, "offsetY":I
    new-instance v1, Landroid/graphics/Rect;

    neg-int v9, v5

    neg-int v10, v6

    iget v11, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageScaleFactor:F

    mul-float/2addr v11, v4

    float-to-int v11, v11

    sub-int/2addr v11, v5

    iget v12, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageScaleFactor:F

    mul-float/2addr v12, v3

    float-to-int v12, v12

    sub-int/2addr v12, v6

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 148
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 160
    if-eqz v2, :cond_0

    iget v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mType:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_0

    .line 161
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f02009a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTypeIndicatorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 163
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTypeIndicatorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTypeIndicatorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v12

    iget-object v13, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTypeIndicatorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    return-void

    .line 130
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "imageSubmitted":Z
    .end local v3    # "mainH":F
    .end local v4    # "mainW":F
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_1
    const/4 v2, 0x0

    .line 131
    .restart local v2    # "imageSubmitted":Z
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/PileViewItem;->getMainImageId()I

    move-result v8

    .line 132
    .local v8, "resId":I
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

.method private drawBackground(Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "marginLeft"    # I
    .param p3, "marginTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 431
    int-to-float v0, p2

    int-to-float v2, p3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleItemWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleItemHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 434
    return-void
.end method

.method private drawMainImage(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 446
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 447
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableWidthForMainImage:I

    iget v1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableHeightForMainImage:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 451
    :cond_1
    return-void
.end method

.method private drawRemoveButton(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 410
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    const/high16 v0, -0x40800000

    const/high16 v1, 0x3f800000

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mDeleteButtonUnpressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 420
    return-void

    .line 414
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleItemWidth:I

    iget v1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private drawTextLabel(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000

    .line 379
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextLayout:Landroid/text/BoringLayout;

    if-eqz v5, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 382
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 383
    .local v2, "pileWidth":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextLayout:Landroid/text/BoringLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v5, v6}, Landroid/text/BoringLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 387
    .local v1, "desiredWidth":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0d0043

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleBorderThickness:I

    add-int v3, v5, v6

    .line 390
    .local v3, "tx":I
    if-ge v1, v2, :cond_1

    sub-int v5, v2, v1

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v0, v5, v3

    .line 392
    .local v0, "deltaX":I
    :goto_0
    iget v5, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleBorderThickness:I

    iget v6, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableHeightForMainImage:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0d0042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0d0044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-int v6, v6

    add-int v4, v5, v6

    .line 397
    .local v4, "ty":I
    int-to-float v5, v0

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 398
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextLayout:Landroid/text/BoringLayout;

    invoke-virtual {v5, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 399
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 401
    .end local v0    # "deltaX":I
    .end local v1    # "desiredWidth":I
    .end local v2    # "pileWidth":I
    .end local v3    # "tx":I
    .end local v4    # "ty":I
    :cond_0
    return-void

    .restart local v1    # "desiredWidth":I
    .restart local v2    # "pileWidth":I
    .restart local v3    # "tx":I
    :cond_1
    move v0, v3

    .line 390
    goto :goto_0
.end method

.method private drawTypeIndicatorCenteredInMainImage(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 459
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTypeIndicatorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableWidthForMainImage:I

    if-gtz v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableWidthForMainImage:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTypeIndicatorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 467
    .local v0, "indicatorXOffset":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableHeightForMainImage:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTypeIndicatorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 470
    .local v1, "indicatorYOffset":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 471
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 472
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTypeIndicatorDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private getMainImageId()I
    .locals 2

    .prologue
    .line 350
    const/4 v0, -0x1

    .line 351
    .local v0, "resId":I
    iget v1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mType:I

    sparse-switch v1, :sswitch_data_0

    .line 362
    const v0, 0x7f020010

    .line 365
    :goto_0
    return v0

    .line 353
    :sswitch_0
    const v0, 0x7f020036

    .line 354
    goto :goto_0

    .line 356
    :sswitch_1
    const v0, 0x7f020098

    .line 357
    goto :goto_0

    .line 359
    :sswitch_2
    const v0, 0x7f02002c

    .line 360
    goto :goto_0

    .line 351
    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_1
        0x28 -> :sswitch_0
        0x3c -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 273
    const/4 v0, 0x0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMarginToMakeRoomForDeleteButton:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/conversations/ui/PileViewItem;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 277
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleBorderThickness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mVisibleBorderThickness:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 278
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/PileViewItem;->drawMainImage(Landroid/graphics/Canvas;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/PileViewItem;->drawTypeIndicatorCenteredInMainImage(Landroid/graphics/Canvas;)V

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 283
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonActive:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/PileViewItem;->drawRemoveButton(Landroid/graphics/Canvas;)V

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextLabelVisible:Z

    if-eqz v0, :cond_1

    .line 288
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/PileViewItem;->drawTextLabel(Landroid/graphics/Canvas;)V

    .line 290
    :cond_1
    return-void
.end method

.method getMainImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mMainImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRotation:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 298
    iget v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mWantedWidth:I

    iget v1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mWantedHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 299
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 315
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0d0041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 318
    .local v2, "touchAreaSize":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move v3, v4

    .line 319
    .local v3, "xWithinTouchArea":Z
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRTL()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v7, v2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    move v3, v4

    .line 323
    :cond_0
    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v7, v2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    move v0, v4

    .line 329
    .local v0, "eventOccurredWithinTouchArea":Z
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    :cond_1
    :goto_3
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonIsBeingPressed:Z

    .line 331
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 334
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonActive:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mOverrideTouchEventLogicForTestingPurposes:Z

    if-eqz v4, :cond_7

    .line 336
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 341
    .local v1, "handled":Z
    :goto_4
    return v1

    .end local v0    # "eventOccurredWithinTouchArea":Z
    .end local v1    # "handled":Z
    .end local v3    # "xWithinTouchArea":Z
    :cond_3
    move v3, v5

    .line 318
    goto :goto_0

    .restart local v3    # "xWithinTouchArea":Z
    :cond_4
    move v3, v5

    .line 320
    goto :goto_1

    :cond_5
    move v0, v5

    .line 323
    goto :goto_2

    .restart local v0    # "eventOccurredWithinTouchArea":Z
    :cond_6
    move v4, v5

    .line 329
    goto :goto_3

    .line 338
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 339
    const/4 v1, 0x1

    .restart local v1    # "handled":Z
    goto :goto_4
.end method

.method public removeButtonIsBeingPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonIsBeingPressed:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mOverrideTouchEventLogicForTestingPurposes:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 262
    .local v0, "removeIsBeingPressed":Z
    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mOverrideTouchEventLogicForTestingPurposes:Z

    .line 263
    return v0

    .end local v0    # "removeIsBeingPressed":Z
    :cond_1
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method setOverrideTouchEventLogic(Z)V
    .locals 0
    .param p1, "override"    # Z

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mOverrideTouchEventLogicForTestingPurposes:Z

    .line 494
    return-void
.end method

.method public setRemoveButtonActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRemoveButtonActive:Z

    .line 187
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotationInDegreesCW"    # F

    .prologue
    .line 240
    iput p1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mRotation:F

    .line 241
    return-void
.end method

.method public setTextLabel(Ljava/lang/String;)V
    .locals 11
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 205
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextLayout:Landroid/text/BoringLayout;

    .line 232
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_2

    .line 209
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextPaint:Landroid/text/TextPaint;

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getThemeTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 217
    :cond_2
    new-instance v0, Landroid/text/BoringLayout;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    new-instance v7, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v7}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mAvailableWidthForMainImage:I

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0d0043

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int v10, v1, v8

    move-object v1, p1

    move v8, v3

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextLayout:Landroid/text/BoringLayout;

    goto :goto_0
.end method

.method public setTextLabelVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/PileViewItem;->mTextLabelVisible:Z

    .line 196
    return-void
.end method
