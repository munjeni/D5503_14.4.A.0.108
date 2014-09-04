.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;
.source "ImageStraighten.java"


# static fields
.field private static final gPaint:Landroid/graphics/Paint;


# instance fields
.field private mAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 47
    return-void
.end method

.method private setCropToStraighten()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->straightenBounds()Landroid/graphics/RectF;

    move-result-object v14

    .line 118
    .local v14, "bounds":Landroid/graphics/RectF;
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 119
    .local v18, "path":Landroid/graphics/Path;
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 120
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-virtual {v3, v5, v6, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 121
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40400000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getLocalDisplayBounds()Landroid/graphics/RectF;

    move-result-object v15

    .line 125
    .local v15, "display":Landroid/graphics/RectF;
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v11

    .line 126
    .local v11, "dWidth":F
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v7

    .line 128
    .local v7, "dHeight":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    sget-object v5, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;->MOVE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    if-ne v3, v5, :cond_1

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 132
    const/16 v17, 0x10

    .line 133
    .local v17, "n":I
    move/from16 v0, v17

    int-to-float v3, v0

    div-float v19, v11, v3

    .line 134
    .local v19, "step":F
    const/4 v4, 0x0

    .line 135
    .local v4, "p":F
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 136
    move/from16 v0, v16

    int-to-float v3, v0

    mul-float v4, v3, v19

    .line 137
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    const/16 v5, 0x3c

    const/16 v6, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-virtual {v3, v5, v6, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 138
    const/4 v5, 0x0

    sget-object v8, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v6, v4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    const/4 v9, 0x0

    sget-object v13, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v10, v4

    move v12, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 143
    .end local v4    # "p":F
    .end local v16    # "i":I
    .end local v17    # "n":I
    .end local v19    # "step":F
    :cond_1
    return-void
.end method

.method protected gainedVisibility()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->setCropToStraighten()V

    .line 87
    return-void
.end method

.method public getLocalStraighten()F
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v0

    return v0
.end method

.method protected getLocalValue()I
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getMaxStraightenAngle()F
    .locals 1

    .prologue
    .line 151
    const/high16 v0, 0x42340000

    return v0
.end method

.method public getMinStraightenAngle()F
    .locals 1

    .prologue
    .line 154
    const/high16 v0, -0x3dcc0000

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected lostVisibility()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onNewValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 97
    int-to-float v0, p1

    const/high16 v1, -0x3dcc0000

    const/high16 v2, 0x42340000

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 98
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->mAngle:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->setLocalStraighten(F)V

    .line 99
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->setCropToStraighten()V

    .line 100
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->onNewValue(I)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->updataGeometry()V

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->invalidate()V

    .line 105
    return-void
.end method

.method public setModeMove()V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;->MOVE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    .line 146
    return-void
.end method

.method public setModeUp()V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;->UP:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->mMode:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry$MODES;

    .line 149
    return-void
.end method
