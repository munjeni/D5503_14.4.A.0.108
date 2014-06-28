.class public Lcom/android/phone/SomcContactTextView;
.super Landroid/widget/TextView;
.source "SomcContactTextView.java"


# instance fields
.field private mMaxTextLength:F

.field private mMaxTextSize:F

.field private mMinTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/SomcContactTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/SomcContactTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 58
    .local v2, "textSize":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 59
    .local v1, "density":F
    sget-object v3, Lcom/android/phone/R$styleable;->SomcContactTextView:[I

    const v4, 0x7f0d0014

    invoke-virtual {p1, p2, v3, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/phone/SomcContactTextView;->mMaxTextSize:F

    .line 63
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/phone/SomcContactTextView;->mMinTextSize:F

    .line 65
    const/4 v3, 0x2

    const v4, 0x461c4000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/phone/SomcContactTextView;->mMaxTextLength:F

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "density":F
    .end local v2    # "textSize":F
    :cond_0
    return-void
.end method

.method private resizeText()V
    .locals 6

    .prologue
    .line 106
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "SomcContactTextView"

    const-string v5, "resizeText()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 108
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "text":Ljava/lang/String;
    iget v2, p0, Lcom/android/phone/SomcContactTextView;->mMaxTextSize:F

    .line 113
    .local v2, "textSize":F
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 116
    .local v3, "textWidth":F
    iget v4, p0, Lcom/android/phone/SomcContactTextView;->mMaxTextLength:F

    cmpg-float v4, v3, v4

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/phone/SomcContactTextView;->mMinTextSize:F

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_3

    .line 121
    :cond_1
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/phone/SomcContactTextView;->mMinTextSize:F

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_2

    iget v2, p0, Lcom/android/phone/SomcContactTextView;->mMinTextSize:F

    .end local v2    # "textSize":F
    :cond_2
    invoke-virtual {p0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    return-void

    .line 119
    .restart local v2    # "textSize":F
    :cond_3
    const/high16 v4, 0x40000000

    sub-float/2addr v2, v4

    .line 120
    goto :goto_0
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 74
    invoke-direct {p0}, Lcom/android/phone/SomcContactTextView;->resizeText()V

    .line 75
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0
    .param p1, "maxTextSize"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/android/phone/SomcContactTextView;->mMaxTextSize:F

    .line 79
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .param p1, "minTextSize"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/android/phone/SomcContactTextView;->mMinTextSize:F

    .line 87
    return-void
.end method
