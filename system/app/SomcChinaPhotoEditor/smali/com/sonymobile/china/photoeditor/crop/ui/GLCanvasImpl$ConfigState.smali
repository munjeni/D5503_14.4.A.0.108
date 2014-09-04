.class Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigState"
.end annotation


# instance fields
.field mAlpha:F

.field mMatrix:[F

.field mNextFree:Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;

.field mRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 895
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 898
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mRect:Landroid/graphics/Rect;

    .line 900
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$1;

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;)V
    .locals 7
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;

    .prologue
    const/4 v6, 0x0

    .line 905
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 906
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    invoke-virtual {p1, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->setAlpha(F)V

    .line 907
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 908
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mRect:Landroid/graphics/Rect;

    .line 909
    .local v0, "rect":Landroid/graphics/Rect;
    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mClipRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->access$100(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 910
    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->access$200(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;)Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 912
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    aget v1, v1, v6

    const/high16 v2, -0x800000

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 913
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->mMatrixValues:[F
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;->access$300(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;)[F

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    :cond_2
    return-void
.end method
