.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;
.source "ImageRotate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate$1;
    }
.end annotation


# static fields
.field private static final gPaint:Landroid/graphics/Paint;


# instance fields
.field private mAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 42
    return-void
.end method

.method private getFlipH()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->getLocalFlip()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    .line 131
    .local v0, "flip":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate$1;->$SwitchMap$com$sonymobile$china$photoeditor$filtershow$imageshow$GeometryMetadata$FLIP:[I

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 145
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 148
    :goto_0
    return-object v0

    .line 133
    :pswitch_0
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 134
    goto :goto_0

    .line 136
    :pswitch_1
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 137
    goto :goto_0

    .line 139
    :pswitch_2
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 140
    goto :goto_0

    .line 142
    :pswitch_3
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 143
    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getFlipV()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->getLocalFlip()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    .line 152
    .local v0, "flip":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate$1;->$SwitchMap$com$sonymobile$china$photoeditor$filtershow$imageshow$GeometryMetadata$FLIP:[I

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 166
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 169
    :goto_0
    return-object v0

    .line 154
    :pswitch_0
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 155
    goto :goto_0

    .line 157
    :pswitch_1
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 158
    goto :goto_0

    .line 160
    :pswitch_2
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 161
    goto :goto_0

    .line 163
    :pswitch_3
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 164
    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0xff

    .line 88
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 90
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 91
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 92
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 93
    return-void
.end method

.method protected getLocalValue()I
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->getLocalRotation()F

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->snappedAngle(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->constrainedRotation(F)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleRotateButton(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/high16 v2, 0x43b40000

    const/high16 v1, 0x42b40000

    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->getLocalRotation()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->updataGeometry()V

    .line 124
    return-void

    .line 99
    :pswitch_0
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->mAngle:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 100
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->mAngle:F

    rem-float/2addr v0, v2

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->snappedAngle(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->setLocalRotation(F)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->mAngle:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 104
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->mAngle:F

    rem-float/2addr v0, v2

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->snappedAngle(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->setLocalRotation(F)V

    goto :goto_0

    .line 107
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->hasRotated90()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->getFlipV()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->setLocalFlip(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->getFlipH()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->setLocalFlip(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V

    goto :goto_0

    .line 114
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->hasRotated90()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->getFlipH()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->setLocalFlip(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->getFlipV()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->setLocalFlip(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata$FLIP;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0043
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method hasRotated90()Z
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->getLocalRotation()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->constrainedRotation(F)I

    move-result v0

    .line 127
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
