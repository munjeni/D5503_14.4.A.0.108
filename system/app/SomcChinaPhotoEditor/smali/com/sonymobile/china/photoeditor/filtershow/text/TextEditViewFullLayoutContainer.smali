.class public Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
.super Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;
.source "TextEditViewFullLayoutContainer.java"


# instance fields
.field private mOrientation:I

.field private mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mOrientation:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mOrientation:I

    .line 51
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->clean()V

    .line 128
    :cond_0
    return-void
.end method

.method public getAllTextItem()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getAllTextItem()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 54
    const/high16 v4, 0x7f030000

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 59
    .local v0, "displayBounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    .local v1, "l":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v6, v6

    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v7, v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 72
    :cond_1
    new-instance v2, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v2, v9, v9, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(IIII)V

    .line 76
    .local v2, "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    .line 77
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->height:I

    .line 79
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {p0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 138
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 139
    .local v2, "y":F
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getRight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v6}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 141
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->tryExitSelectMode()V

    .line 145
    .end local v0    # "rect":Landroid/graphics/RectF;
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public setDisplayBounds(Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 86
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/FullscreenToolViewContainer;->setDisplayBounds(Landroid/graphics/RectF;)V

    .line 87
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getDisplayBounds()Landroid/graphics/RectF;

    move-result-object v3

    if-nez v3, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 93
    .local v0, "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    if-nez v0, :cond_2

    .line 94
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .end local v0    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    invoke-direct {v0, v4, v4, v5, v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(IIII)V

    .line 97
    .restart local v0    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    const/4 v2, 0x0

    .line 102
    .local v2, "oldLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getDisplayBounds()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    .line 103
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getDisplayBounds()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getDisplayBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getDisplayBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->height:I

    .line 106
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 109
    .local v1, "newConfig":Landroid/content/res/Configuration;
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mOrientation:I

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 110
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mOrientation:I

    .line 111
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 112
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v3, v2, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setPortAndLandLP(Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;)V

    .line 116
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v3, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->reLayoutForRotate(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 99
    .end local v1    # "newConfig":Landroid/content/res/Configuration;
    .end local v2    # "oldLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    :cond_2
    new-instance v2, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    invoke-direct {v2, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v2    # "oldLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    goto :goto_1

    .line 114
    .restart local v1    # "newConfig":Landroid/content/res/Configuration;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v3, v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setPortAndLandLP(Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;)V

    goto :goto_2
.end method

.method public setFilterDataChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setOnFilterDataChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;)V

    .line 152
    :cond_0
    return-void
.end method

.method public setOnTextChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setOnTextChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;)V

    .line 45
    return-void
.end method

.method public setOnTextPropertyChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setOnTextPropertyChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;)V

    .line 41
    return-void
.end method

.method public setTextProperty(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    .locals 1
    .param p1, "property"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->mWorkPane:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setTextProperty(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 36
    return-void
.end method
