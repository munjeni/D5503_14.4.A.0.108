.class Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;
.super Ljava/lang/Thread;
.source "ExtendedGLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderingThread"
.end annotation


# instance fields
.field private final mInterval:I

.field private mIsAlive:Z

.field final synthetic this$0:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;I)V
    .locals 1
    .param p2, "interval"    # I

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->mIsAlive:Z

    .line 55
    iput p2, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->mInterval:I

    .line 56
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->mIsAlive:Z

    .line 63
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 67
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->mIsAlive:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->requestRender()V

    .line 72
    :try_start_0
    iget v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->mInterval:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
