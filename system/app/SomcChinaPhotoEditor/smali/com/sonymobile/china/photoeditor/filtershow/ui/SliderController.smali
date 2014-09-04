.class public Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;
.super Ljava/lang/Object;
.source "SliderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;
    }
.end annotation


# static fields
.field private static mTextSize:I


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mCurrentX:F

.field private mCurrentY:F

.field private mHeight:I

.field private mListener:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;

.field private mMode:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

.field mOriginalValue:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mToast:Ljava/lang/String;

.field private mValue:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x80

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mTextSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mValue:I

    .line 34
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mOriginalValue:I

    .line 36
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mWidth:I

    .line 38
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mHeight:I

    .line 40
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    .line 44
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;

    .line 46
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    .line 50
    return-void
.end method


# virtual methods
.method protected computeValue()I
    .locals 5

    .prologue
    .line 82
    const/high16 v2, 0x42c80000

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->getCurrentX()F

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->getCenterX()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 83
    .local v0, "delta":I
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mOriginalValue:I

    add-int v1, v2, v0

    .line 84
    .local v1, "value":I
    const/16 v2, -0x64

    if-ge v1, v2, :cond_1

    .line 85
    const/16 v1, -0x64

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->setValue(I)V

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    .line 91
    return v1

    .line 86
    :cond_1
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 87
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public drawToast(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0xff

    .line 61
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 65
    .local v0, "textWidth":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 66
    .local v1, "toastX":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40400000

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 68
    .local v2, "toastY":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 69
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x2

    int-to-float v4, v4

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x2

    int-to-float v4, v4

    int-to-float v5, v2

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    int-to-float v4, v1

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 73
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    int-to-float v5, v2

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    int-to-float v4, v1

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 76
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 79
    .end local v0    # "textWidth":F
    .end local v1    # "toastX":I
    .end local v2    # "toastY":I
    :cond_0
    return-void
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mCenterY:F

    return v0
.end method

.method public getCurrentX()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mCurrentX:F

    return v0
.end method

.method public getCurrentY()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mCurrentY:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mWidth:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;->UP:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    if-ne v0, v1, :cond_0

    .line 58
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->setNoAction()V

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 171
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->setActionDown(FF)V

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->setActionUp()V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->setActionUp()V

    goto :goto_0

    .line 183
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->setActionMove(FF)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mOriginalValue:I

    .line 192
    return-void
.end method

.method public setActionDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 131
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mCenterX:F

    .line 132
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mCenterY:F

    .line 133
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mCurrentX:F

    .line 134
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mCurrentY:F

    .line 135
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;->DOWN:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    .line 136
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;->onTouchDown(FF)V

    .line 139
    :cond_0
    return-void
.end method

.method public setActionMove(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 142
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mCurrentX:F

    .line 143
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mCurrentY:F

    .line 144
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;->MOVE:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    .line 145
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->computeValue()I

    .line 146
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mValue:I

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;->onNewValue(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public setActionUp()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;->UP:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    .line 153
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->computeValue()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mOriginalValue:I

    .line 154
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;->onTouchUp()V

    .line 157
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mHeight:I

    .line 112
    return-void
.end method

.method public setListener(Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;

    .line 165
    return-void
.end method

.method public setNoAction()V
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController$MODES;

    .line 161
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mValue:I

    .line 96
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;->mWidth:I

    .line 108
    return-void
.end method
