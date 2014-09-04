.class abstract Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/ui/Texture;


# static fields
.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_LOADED:I = 0x1

.field protected static final STATE_UNLOADED:I = 0x0

.field protected static final UNSPECIFIED:I = -0x1

.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCanvasRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field private mTextureHeight:I

.field private mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 54
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;II)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;II)V
    .locals 3
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .param p2, "id"    # I
    .param p3, "state"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mWidth:I

    .line 42
    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mHeight:I

    .line 50
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    .line 57
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->setAssociatedCanvas(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 58
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mId:I

    .line 59
    iput p3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mState:I

    .line 60
    sget-object v1, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private freeResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 158
    .local v0, "canvas":Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->isLoaded(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v0, p0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->unloadTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;)Z

    .line 161
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mState:I

    .line 162
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->setAssociatedCanvas(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V

    .line 163
    return-void

    .line 157
    .end local v0    # "canvas":Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    move-object v0, v1

    goto :goto_0
.end method

.method public static inFinalizer()Z
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static yieldAllTextures()V
    .locals 4

    .prologue
    .line 180
    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 181
    :try_start_0
    sget-object v2, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;

    .line 182
    .local v1, "t":Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->yield()V

    goto :goto_0

    .line 184
    .end local v1    # "t":Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    return-void
.end method


# virtual methods
.method public draw(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIII)V

    .line 127
    return-void
.end method

.method public draw(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 130
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;->drawTexture(Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;IIII)V

    .line 131
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->recycle()V

    .line 169
    sget-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mId:I

    return v0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mWidth:I

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mHasBorder:Z

    return v0
.end method

.method public isLoaded(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
    .locals 2
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    const/4 v0, 0x1

    .line 138
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBind(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->freeResource()V

    .line 145
    return-void
.end method

.method protected setAssociatedCanvas(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;

    .prologue
    .line 70
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    .line 71
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setBorder(Z)V
    .locals 0
    .param p1, "hasBorder"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mHasBorder:Z

    .line 123
    return-void
.end method

.method protected setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mWidth:I

    .line 79
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mHeight:I

    .line 80
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mTextureWidth:I

    .line 81
    invoke-static {p2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->mTextureHeight:I

    .line 82
    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/BasicTexture;->freeResource()V

    .line 154
    return-void
.end method
