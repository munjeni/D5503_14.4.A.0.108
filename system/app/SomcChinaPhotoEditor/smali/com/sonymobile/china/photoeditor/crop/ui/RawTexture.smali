.class Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;
.super Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
.source "RawTexture.java"


# direct methods
.method private constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;I)V
    .locals 1
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;II)V

    .line 29
    return-void
.end method

.method public static newInstance(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;
    .locals 4
    .param p0, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    new-array v1, v2, [I

    .line 33
    .local v1, "textureId":[I
    invoke-interface {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    .line 34
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 35
    new-instance v2, Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;

    aget v3, v1, v3

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/RawTexture;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;I)V

    return-object v2
.end method


# virtual methods
.method public isOpaque()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
    .locals 2
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot bind to different canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
