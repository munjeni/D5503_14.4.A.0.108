.class public Lcom/sonyericsson/conversations/ui/RecipientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RecipientDrawable.java"


# instance fields
.field private mBackgroundHigth:I

.field private mBackgroundWidth:I

.field private mMaxDrawableWidth:I

.field private mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPaddingBottom:I

.field private mPaddingTop:I

.field private mPaint:Landroid/text/TextPaint;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;F)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textSize"    # F

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mBackgroundWidth:I

    .line 28
    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mBackgroundHigth:I

    .line 30
    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mOffsetY:I

    .line 32
    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mOffsetX:I

    .line 34
    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaddingTop:I

    .line 36
    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaddingBottom:I

    .line 38
    iput v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mMaxDrawableWidth:I

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 45
    return-void
.end method

.method private maxTextHeight()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mBackgroundWidth:I

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mText:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getTextWidth(Ljava/lang/String;)I

    move-result v3

    sub-int v8, v0, v3

    .line 98
    .local v8, "offset":I
    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mOffsetX:I

    mul-int/lit8 v0, v0, 0x2

    if-le v8, v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v0, v8

    const/high16 v4, 0x40000000

    div-float v4, v0, v4

    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mOffsetY:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mMaxDrawableWidth:I

    iget v3, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mOffsetX:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v7, v0, v3

    .line 102
    .local v7, "maxDrawableWidth":I
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    int-to-float v4, v7

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 103
    .local v1, "maxDrawableString":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mOffsetX:I

    int-to-float v4, v0

    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mOffsetY:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mBackgroundHigth:I

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->maxTextHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaddingTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 4

    .prologue
    .line 114
    iget v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mMaxDrawableWidth:I

    iget v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mBackgroundWidth:I

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getTextWidth(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mOffsetX:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected getTextWidth(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # I

    .prologue
    .line 63
    instance-of v1, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 65
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 66
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mBackgroundWidth:I

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mBackgroundHigth:I

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .local v0, "rcPadding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 71
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mOffsetX:I

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mOffsetY:I

    .line 73
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 77
    return-void

    .line 75
    .end local v0    # "rcPadding":Landroid/graphics/Rect;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Background is not valid 9-patch png"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 131
    return-void
.end method

.method public setMaxDrawableWidth(I)V
    .locals 0
    .param p1, "maxDrawableWidth"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mMaxDrawableWidth:I

    .line 49
    return-void
.end method

.method public setPadding(II)V
    .locals 0
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .prologue
    .line 88
    iput p2, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaddingBottom:I

    .line 89
    iput p1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mPaddingTop:I

    .line 90
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientDrawable;->mText:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 54
    return-void
.end method
