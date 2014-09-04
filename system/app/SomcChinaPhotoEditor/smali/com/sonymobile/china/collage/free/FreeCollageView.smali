.class public Lcom/sonymobile/china/collage/free/FreeCollageView;
.super Landroid/view/View;
.source "FreeCollageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_SELECTION:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mContentListener:Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;

.field private final mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mRawHeight:I

.field private mRawWidth:I

.field private mSelectedLayer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonymobile/china/collage/free/FreeCollageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/free/FreeCollageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/china/collage/free/model/FreeCollage;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Lcom/sonymobile/china/collage/free/model/FreeCollage;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mSelectedLayer:I

    .line 48
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 84
    new-instance v0, Lcom/sonymobile/china/collage/free/FreeCollageView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/collage/free/FreeCollageView$1;-><init>(Lcom/sonymobile/china/collage/free/FreeCollageView;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mContentListener:Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;

    .line 66
    if-nez p2, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p2, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    .line 71
    return-void
.end method

.method private delegateTouchToSelectedLayer(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 186
    iget-object v5, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    iget v6, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mSelectedLayer:I

    invoke-virtual {v5, v6}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayer(I)Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v1

    .line 187
    .local v1, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    const/4 v2, 0x0

    .line 188
    .local v2, "result":Z
    instance-of v5, v1, Lcom/sonymobile/china/collage/free/model/ImageLayer;

    if-nez v5, :cond_0

    move v3, v2

    .line 195
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_0
    move-object v0, v1

    .line 191
    check-cast v0, Lcom/sonymobile/china/collage/free/model/ImageLayer;

    .line 192
    .local v0, "imageLayer":Lcom/sonymobile/china/collage/free/model/ImageLayer;
    invoke-virtual {v0, p1, v4}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->touchInArea(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->handleTouch(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 194
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageView;->invalidate()V

    move v3, v2

    .line 195
    .restart local v3    # "result":I
    goto :goto_0

    .line 192
    .end local v3    # "result":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private downOnImage(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 207
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 208
    iget-object v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v2, v0}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayer(I)Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v1

    .line 209
    .local v1, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    invoke-virtual {v1}, Lcom/sonymobile/china/collage/free/model/Layer;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/china/collage/free/model/Layer;->converges(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    .end local v0    # "i":I
    .end local v1    # "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    :goto_1
    return v0

    .line 207
    .restart local v0    # "i":I
    .restart local v1    # "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 213
    .end local v1    # "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public enterSelectMode(I)V
    .locals 1
    .param p1, "layerIndex"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->moveLayerTop(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mSelectedLayer:I

    .line 130
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageView;->invalidate()V

    .line 131
    return-void
.end method

.method public exitSelectMode()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mSelectedLayer:I

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageView;->invalidate()V

    .line 140
    return-void
.end method

.method public exitSelectModeWithoutRefresh()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mSelectedLayer:I

    .line 148
    return-void
.end method

.method public getSelectedLayerIndex()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mSelectedLayer:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 239
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/collage/free/FreeCollageView;->enterSelectMode(I)V

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public inSelectMode()Z
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mSelectedLayer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    iget-object v1, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mContentListener:Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->addListener(Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;)V

    .line 76
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    iget-object v1, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mContentListener:Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->removeListener(Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;)V

    .line 81
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 104
    iget-object v4, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v4}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayerCount()I

    move-result v3

    .line 105
    .local v3, "layerCount":I
    iget-object v4, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 106
    iget-object v4, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v4, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v4}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getBackgroundLayer()Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    move-result-object v0

    .line 108
    .local v0, "bkgrLayer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz v0, :cond_0

    .line 109
    iget-object v4, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4}, Lcom/sonymobile/china/collage/free/model/BackgroundLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 112
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 113
    iget-object v4, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;

    invoke-virtual {v4, v1}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getLayer(I)Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/collage/free/model/ImageLayer;

    .line 114
    .local v2, "layer":Lcom/sonymobile/china/collage/free/model/ImageLayer;
    iget-object v4, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v4}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 115
    iget v4, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mSelectedLayer:I

    if-ne v1, v4, :cond_1

    .line 116
    invoke-virtual {v2, p1}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->drawSelector(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {v2, p1}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->drawDelete(Landroid/graphics/Canvas;)V

    .line 112
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sonymobile/china/collage/free/model/ImageLayer;->drawBorder(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 122
    .end local v2    # "layer":Lcom/sonymobile/china/collage/free/model/ImageLayer;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 99
    iget v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mRawWidth:I

    iget v1, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mRawHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/china/collage/free/FreeCollageView;->setMeasuredDimension(II)V

    .line 100
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 152
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageView;->inSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/free/FreeCollageView;->delegateTouchToSelectedLayer(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 158
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 160
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/china/collage/free/FreeCollageView;->downOnImage(FF)I

    move-result v1

    .line 161
    .local v1, "selectedImage":I
    if-ne v1, v4, :cond_2

    .line 162
    iget v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mSelectedLayer:I

    if-eq v2, v4, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/free/FreeCollageView;->exitSelectMode()V

    goto :goto_0

    .line 165
    :cond_2
    iget v2, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mSelectedLayer:I

    if-eq v1, v2, :cond_0

    .line 166
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/free/FreeCollageView;->enterSelectMode(I)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 93
    iput p2, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mRawHeight:I

    .line 94
    iput p1, p0, Lcom/sonymobile/china/collage/free/FreeCollageView;->mRawWidth:I

    .line 95
    return-void
.end method
