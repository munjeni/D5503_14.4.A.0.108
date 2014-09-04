.class public interface abstract Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# static fields
.field public static final SAVE_FLAG_ALL:I = -0x1

.field public static final SAVE_FLAG_ALPHA:I = 0x2

.field public static final SAVE_FLAG_CLIP:I = 0x1

.field public static final SAVE_FLAG_MATRIX:I = 0x4


# virtual methods
.method public abstract clearBuffer()V
.end method

.method public abstract clipRect(IIII)Z
.end method

.method public abstract copyTexture(IIII)Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
.end method

.method public abstract currentAnimationTimeMillis()J
.end method

.method public abstract deleteBuffer(I)V
.end method

.method public abstract deleteRecycledResources()V
.end method

.method public abstract drawLine(FFFFLcom/sonymobile/china/photoeditor/crop/ui/GLPaint;)V
.end method

.method public abstract drawMesh(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIIIII)V
.end method

.method public abstract drawMixed(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IFIIII)V
.end method

.method public abstract drawMixed(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;FIIII)V
.end method

.method public abstract drawRect(FFFFLcom/sonymobile/china/photoeditor/crop/ui/GLPaint;)V
.end method

.method public abstract drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIII)V
.end method

.method public abstract drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIIIF)V
.end method

.method public abstract drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract fillRect(FFFFI)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
.end method

.method public abstract multiplyAlpha(F)V
.end method

.method public abstract multiplyMatrix([FI)V
.end method

.method public abstract restore()V
.end method

.method public abstract rotate(FFFF)V
.end method

.method public abstract save()I
.end method

.method public abstract save(I)I
.end method

.method public abstract scale(FFF)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setBlendEnabled(Z)V
.end method

.method public abstract setCurrentAnimationTimeMillis(J)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract translate(FFF)V
.end method

.method public abstract unloadTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)Z
.end method
