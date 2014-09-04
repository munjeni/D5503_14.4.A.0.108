.class public Lcom/sonymobile/china/collage/free/model/BackgroundLayer;
.super Lcom/sonymobile/china/collage/free/model/Layer;
.source "BackgroundLayer.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/china/collage/free/model/BackgroundLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/free/model/BackgroundLayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "layerId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/china/collage/free/model/Layer;-><init>(III)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FFFFIII)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "rotation"    # F
    .param p5, "scaleFactor"    # F
    .param p6, "layerId"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 48
    invoke-direct/range {p0 .. p8}, Lcom/sonymobile/china/collage/free/model/Layer;-><init>(Landroid/graphics/Bitmap;FFFFIII)V

    .line 49
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/sonymobile/china/collage/free/model/Layer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
