.class public Lcom/sonymobile/movablepanes/paneview/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# instance fields
.field mBestCandidateRect:Landroid/graphics/Rect;

.field mFocusedRect:Landroid/graphics/Rect;

.field mOtherRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    return-void
.end method

.method static beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    invoke-static {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 188
    .local v0, "rect1InSrcBeam":Z
    invoke-static {p0, p1, p3}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 191
    .local v1, "rect2InSrcBeam":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move v2, v3

    .line 214
    :cond_1
    :goto_0
    return v2

    .line 201
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    const/16 v4, 0x11

    if-eq p0, v4, :cond_1

    const/16 v4, 0x42

    if-eq p0, v4, :cond_1

    .line 214
    invoke-static {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {p0, p1, p3}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-lt v4, v5, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method static beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "direction"    # I
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    sparse-switch p0, :sswitch_data_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :sswitch_0
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 267
    goto :goto_0

    .line 270
    :sswitch_1
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 7
    .param p2, "root"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 101
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 102
    sparse-switch p5, :sswitch_data_0

    .line 116
    :goto_0
    const/4 v0, 0x0

    .line 118
    .local v0, "closest":Landroid/view/View;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 119
    .local v3, "numFocusables":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 120
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 123
    .local v1, "focusable":Landroid/view/View;
    if-eq v1, p3, :cond_0

    if-ne v1, p2, :cond_1

    .line 119
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "closest":Landroid/view/View;
    .end local v1    # "focusable":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "numFocusables":I
    :sswitch_0
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 107
    :sswitch_1
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 110
    :sswitch_2
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 113
    :sswitch_3
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 126
    .restart local v0    # "closest":Landroid/view/View;
    .restart local v1    # "focusable":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "numFocusables":I
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 127
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-static {p2, v1, v4}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->offsetRectToViewCoords(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 129
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-static {p5, p4, v4, v5}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 131
    move-object v0, v1

    goto :goto_2

    .line 134
    .end local v1    # "focusable":Landroid/view/View;
    :cond_2
    return-object v0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static getWeightedDistanceFor(II)I
    .locals 2
    .param p0, "majorAxisDistance"    # I
    .param p1, "minorAxisDistance"    # I

    .prologue
    .line 224
    mul-int/lit8 v0, p0, 0xd

    mul-int/2addr v0, p0

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method static isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-static {p1, p2, p0}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-static {p1, p3, p0}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-static {p0, p1, p3, p2}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 168
    goto :goto_0

    .line 172
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v2

    invoke-static {p0, p1, p3}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {p0, p1, p3}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4
    .param p0, "srcRect"    # Landroid/graphics/Rect;
    .param p1, "destRect"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    sparse-switch p2, :sswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_2

    :cond_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2

    .line 248
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 239
    goto :goto_0

    .line 242
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_4

    :cond_3
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 245
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_5

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_6

    :cond_5
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    .line 248
    :sswitch_3
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_7

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_8

    :cond_7
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1

    :cond_8
    move v0, v1

    goto :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "direction"    # I
    .param p1, "src"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    sparse-switch p0, :sswitch_data_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :sswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 282
    goto :goto_0

    .line 284
    :sswitch_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 286
    :sswitch_2
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 288
    :sswitch_3
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 304
    sparse-switch p0, :sswitch_data_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 312
    :goto_0
    return v0

    .line 308
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 310
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 312
    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 329
    sparse-switch p0, :sswitch_data_0

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 337
    :goto_0
    return v0

    .line 333
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 335
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 337
    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 329
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 352
    sparse-switch p0, :sswitch_data_0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 362
    :goto_0
    return v0

    :sswitch_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private static offsetRectToViewCoords(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 378
    if-ne p1, p0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 386
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object p1, v0

    .line 390
    check-cast p1, Landroid/view/View;

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 394
    :cond_2
    if-eq v0, p0, :cond_3

    if-nez v0, :cond_0

    .line 395
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method


# virtual methods
.method public final findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 10
    .param p2, "root"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p3, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 62
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-static {p2, p3, v0}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->offsetRectToViewCoords(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 82
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    .line 75
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int v6, v0, v1

    .line 76
    .local v6, "rootBottom":I
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v8, v0, v1

    .line 77
    .local v8, "rootRight":I
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v6, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 68
    .end local v6    # "rootBottom":I
    .end local v8    # "rootRight":I
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 69
    .local v9, "rootTop":I
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 70
    .local v7, "rootLeft":I
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v9, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_0
        0x42 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 6
    .param p2, "root"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
