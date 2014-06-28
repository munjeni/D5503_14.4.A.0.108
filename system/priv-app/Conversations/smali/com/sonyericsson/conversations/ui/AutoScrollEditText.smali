.class public Lcom/sonyericsson/conversations/ui/AutoScrollEditText;
.super Landroid/widget/EditText;
.source "AutoScrollEditText.java"


# instance fields
.field private mLastRectangleRequest:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public final forceRefreshVisibleArea()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AutoScrollEditText;->mLastRectangleRequest:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/AutoScrollEditText;->mLastRectangleRequest:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/AutoScrollEditText;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 69
    :cond_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 81
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 82
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_0

    .line 83
    check-cast v0, Landroid/view/View;

    .line 87
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .line 85
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/AutoScrollEditText;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 10
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v7, 0x0

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/AutoScrollEditText;->mLastRectangleRequest:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 40
    .local v0, "bottom":I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int v5, v8, v9

    .line 41
    .local v5, "top":I
    if-gez v5, :cond_0

    move v5, v7

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/AutoScrollEditText;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "contentView":Landroid/view/View;
    sub-int v8, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_2

    const/4 v2, 0x1

    .line 45
    .local v2, "rectangleTooLarge":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 46
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int v0, v8, v9

    .line 49
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-direct {v3, v7, v5, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    .local v3, "requestRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 51
    .local v6, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 52
    iget v8, v6, Landroid/graphics/Rect;->top:I

    if-gt v8, v5, :cond_3

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v0, :cond_3

    .line 61
    :goto_1
    return v7

    .end local v2    # "rectangleTooLarge":Z
    .end local v3    # "requestRect":Landroid/graphics/Rect;
    .end local v6    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    move v2, v7

    .line 44
    goto :goto_0

    .line 56
    .restart local v2    # "rectangleTooLarge":Z
    .restart local v3    # "requestRect":Landroid/graphics/Rect;
    .restart local v6    # "visibleRect":Landroid/graphics/Rect;
    :cond_3
    invoke-super {p0, v3, p2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v4

    .line 57
    .local v4, "result":Z
    if-nez v4, :cond_4

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    move v7, v4

    .line 61
    goto :goto_1
.end method
