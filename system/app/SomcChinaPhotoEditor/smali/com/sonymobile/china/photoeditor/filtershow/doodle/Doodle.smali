.class public Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;
.super Ljava/lang/Object;
.source "Doodle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;",
            ">;"
        }
    .end annotation
.end field

.field public static final STROKE_WIDTH:F = 10.0f


# instance fields
.field private final mColor:I

.field private mFormatH:F

.field private mFormatW:F

.field private mImageBound:Landroid/graphics/Rect;

.field private final mNormalizedPath:Landroid/graphics/Path;

.field private final mPoints:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle$1;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle$1;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/PointF;)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "startPoint"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v1, 0x3f800000

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mNormalizedPath:Landroid/graphics/Path;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mPoints:Ljava/util/Vector;

    .line 46
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mFormatW:F

    .line 47
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mFormatH:F

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mImageBound:Landroid/graphics/Rect;

    .line 64
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mColor:I

    .line 65
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mNormalizedPath:Landroid/graphics/Path;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 66
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public static createPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 55
    .local v0, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 57
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    const/high16 v1, 0x41200000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public addControlPoint(Landroid/graphics/PointF;)Z
    .locals 11
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v10, 0x40000000

    const/high16 v9, 0x3f800000

    const/4 v8, 0x0

    .line 75
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 76
    .local v0, "last":Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mNormalizedPath:Landroid/graphics/Path;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    div-float/2addr v5, v10

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 77
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 80
    .local v1, "r":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mNormalizedPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 81
    invoke-virtual {v1, v8, v8, v9, v9}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v2

    return v2
.end method

.method public clearPath()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mNormalizedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 138
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mColor:I

    return v0
.end method

.method public getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mNormalizedPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 97
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 98
    return-void
.end method

.method public getFormatH()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mFormatH:F

    return v0
.end method

.method public getFormatW()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mFormatW:F

    return v0
.end method

.method public getimageBound()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mImageBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mNormalizedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setFormatSize(FF)V
    .locals 0
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 141
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mFormatW:F

    .line 142
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mFormatH:F

    .line 143
    return-void
.end method

.method public setImageBound(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mImageBound:Landroid/graphics/Rect;

    .line 155
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mColor:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 110
    .local v1, "point":Landroid/graphics/PointF;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 112
    .end local v1    # "point":Landroid/graphics/PointF;
    :cond_0
    return-void
.end method
