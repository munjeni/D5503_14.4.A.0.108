.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;
.source "ImageFlip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip$1;
    }
.end annotation


# static fields
.field private static final MIN_FLICK_DIST_FOR_FLIP:F = 0.1f

.field private static final gPaint:Landroid/graphics/Paint;


# instance fields
.field private mNextFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 39
    return-void
.end method

.method private getScaledMinFlick()F
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->getLocalDisplayBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 132
    .local v0, "disp":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->getLocalScale()F

    move-result v3

    div-float v1, v2, v3

    .line 134
    .local v1, "scaled":F
    return v1
.end method


# virtual methods
.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0xff

    .line 139
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 141
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 142
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 143
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 144
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasRotated90()Z
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->getLocalRotation()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->constrainedRotation(F)I

    move-result v0

    .line 57
    .local v0, "rot":I
    div-int/lit8 v1, v0, 0x5a

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->resetParameter()V

    .line 127
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 128
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 53
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 64
    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    sub-float v0, v5, p1

    .line 65
    .local v0, "diffx":F
    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    sub-float v1, v5, p2

    .line 66
    .local v1, "diffy":F
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->getScaledMinFlick()F

    move-result v2

    .line 67
    .local v2, "flick":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->hasRotated90()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    move v4, v0

    .line 69
    .local v4, "temp":F
    move v0, v1

    .line 70
    move v1, v4

    .line 72
    .end local v4    # "temp":F
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v2

    if-ltz v5, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->getLocalFlip()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v3

    .line 75
    .local v3, "flip":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    sget-object v5, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip$1;->$SwitchMap$com$sonymobile$china$photoeditor$filtershow$imageshow$GeometryMetadata$FLIP:[I

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 89
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 92
    :goto_0
    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 94
    .end local v3    # "flip":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v2

    if-ltz v5, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->getLocalFlip()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v3

    .line 97
    .restart local v3    # "flip":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    sget-object v5, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip$1;->$SwitchMap$com$sonymobile$china$photoeditor$filtershow$imageshow$GeometryMetadata$FLIP:[I

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 111
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 114
    :goto_1
    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 116
    .end local v3    # "flip":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    :cond_2
    return-void

    .line 77
    .restart local v3    # "flip":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    :pswitch_0
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 78
    goto :goto_0

    .line 80
    :pswitch_1
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 84
    goto :goto_0

    .line 86
    :pswitch_3
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 87
    goto :goto_0

    .line 99
    :pswitch_4
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 100
    goto :goto_1

    .line 102
    :pswitch_5
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 103
    goto :goto_1

    .line 105
    :pswitch_6
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 106
    goto :goto_1

    .line 108
    :pswitch_7
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 109
    goto :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 97
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 121
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->mNextFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->setLocalFlip(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 122
    return-void
.end method
