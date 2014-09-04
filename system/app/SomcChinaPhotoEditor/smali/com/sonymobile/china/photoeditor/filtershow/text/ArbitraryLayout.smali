.class public Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;
.super Landroid/view/ViewGroup;
.source "ArbitraryLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 108
    instance-of v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 82
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 113
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getChildCount()I

    move-result v3

    .line 88
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 89
    invoke-virtual {p0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 92
    .local v5, "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getPaddingLeft()I

    move-result v6

    iget v7, v5, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    add-int v1, v6, v7

    .line 93
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getPaddingTop()I

    move-result v6

    iget v7, v5, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    add-int v2, v6, v7

    .line 94
    .local v2, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 88
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getChildCount()I

    move-result v3

    .line 39
    .local v3, "count":I
    const/4 v6, 0x0

    .line 40
    .local v6, "maxHeight":I
    const/4 v7, 0x0

    .line 43
    .local v7, "maxWidth":I
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->measureChildren(II)V

    .line 46
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 47
    invoke-virtual {p0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 54
    .local v5, "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    iget v8, v5, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v2, v8, v9

    .line 55
    .local v2, "childRight":I
    iget v8, v5, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v1, v8, v9

    .line 57
    .local v1, "childBottom":I
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 58
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 46
    .end local v1    # "childBottom":I
    .end local v2    # "childRight":I
    .end local v5    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 64
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 68
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 70
    invoke-static {v7, p1, v10}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->resolveSizeAndState(III)I

    move-result v8

    invoke-static {v6, p2, v10}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->resolveSizeAndState(III)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->setMeasuredDimension(II)V

    .line 72
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 33
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
