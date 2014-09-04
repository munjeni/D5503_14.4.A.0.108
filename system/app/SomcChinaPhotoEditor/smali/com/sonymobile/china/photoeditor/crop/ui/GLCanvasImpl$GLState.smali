.class Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLState"
.end annotation


# instance fields
.field private mBlendEnabled:Z

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mLineSmooth:Z

.field private mLineWidth:F

.field private mTexEnvMode:I

.field private mTexture2DEnabled:Z

.field private mTextureAlpha:F


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    const/4 v5, 0x0

    const/high16 v1, 0x3f800000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 678
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 666
    const/16 v0, 0x1e01

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mTexEnvMode:I

    .line 668
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 670
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mTexture2DEnabled:Z

    .line 672
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    .line 674
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mLineWidth:F

    .line 676
    iput-boolean v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mLineSmooth:Z

    .line 679
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 682
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 685
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 686
    const/16 v0, 0xc11

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 688
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 689
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 690
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 692
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 695
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 696
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClearStencil(I)V

    .line 698
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 699
    const/16 v0, 0x303

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 702
    const/16 v0, 0xcf5

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    .line 703
    return-void
.end method


# virtual methods
.method public setBlendEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0xbe2

    .line 771
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    if-ne v0, p1, :cond_0

    .line 779
    :goto_0
    return-void

    .line 773
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    .line 774
    if-eqz p1, :cond_1

    .line 775
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setColorMode(IF)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "alpha"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x437f0000

    .line 745
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f733333

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 749
    const/high16 v1, -0x40800000

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 751
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTexture2DEnabled(Z)V

    .line 753
    ushr-int/lit8 v1, p1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p2

    const v2, 0x477fff00

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    div-float v0, v1, v5

    .line 754
    .local v0, "prealpha":F
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V

    .line 757
    return-void

    .end local v0    # "prealpha":F
    :cond_1
    move v1, v2

    .line 745
    goto :goto_0
.end method

.method public setLineSmooth(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0xb20

    .line 720
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mLineSmooth:Z

    if-ne v0, p1, :cond_0

    .line 728
    :goto_0
    return-void

    .line 722
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mLineSmooth:Z

    .line 723
    if-eqz p1, :cond_1

    .line 724
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 713
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mLineWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mLineWidth:F

    .line 716
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    goto :goto_0
.end method

.method public setTexEnvMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 706
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mTexEnvMode:I

    if-ne v0, p1, :cond_0

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mTexEnvMode:I

    .line 709
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    int-to-float v3, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto :goto_0
.end method

.method public setTexture2DEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0xde1

    .line 760
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mTexture2DEnabled:Z

    if-ne v0, p1, :cond_0

    .line 768
    :goto_0
    return-void

    .line 762
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mTexture2DEnabled:Z

    .line 763
    if-eqz p1, :cond_1

    .line 764
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setTextureAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 731
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 742
    :goto_0
    return-void

    .line 733
    :cond_0
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 734
    const v0, 0x3f733333

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 737
    const/16 v0, 0x1e01

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 740
    const/16 v0, 0x2100

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0
.end method
