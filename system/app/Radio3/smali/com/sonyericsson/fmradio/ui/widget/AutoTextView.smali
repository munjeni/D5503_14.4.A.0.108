.class public Lcom/sonyericsson/fmradio/ui/widget/AutoTextView;
.super Landroid/widget/TextView;
.source "AutoTextView.java"


# instance fields
.field private mInitialSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/AutoTextView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/AutoTextView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/AutoTextView;->init()V

    .line 41
    return-void
.end method

.method private calculateTextSize(Ljava/lang/String;I)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I

    .prologue
    .line 59
    iget v4, p0, Lcom/sonyericsson/fmradio/ui/widget/AutoTextView;->mInitialSize:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 77
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 64
    .local v2, "p":Landroid/graphics/Paint;
    const/high16 v1, 0x41a00000

    .line 65
    .local v1, "low":F
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/AutoTextView;->mInitialSize:F

    .line 67
    .local v0, "high":F
    :goto_1
    sub-float v4, v0, v1

    const/high16 v5, 0x3f800000

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 68
    add-float v4, v0, v1

    const/high16 v5, 0x40000000

    div-float v3, v4, v5

    .line 69
    .local v3, "size":F
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, p2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 71
    move v0, v3

    goto :goto_1

    .line 73
    :cond_1
    move v1, v3

    goto :goto_1

    .line 76
    .end local v3    # "size":F
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/AutoTextView;->mInitialSize:F

    .line 45
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/AutoTextView;->calculateTextSize(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/AutoTextView;->calculateTextSize(Ljava/lang/String;I)V

    .line 56
    return-void
.end method
