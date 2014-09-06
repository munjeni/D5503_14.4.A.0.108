.class public Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;
    }
.end annotation


# static fields
.field protected static final IS_EGL_DEBUG:Z

.field protected static final IS_GL_DEBUG:Z

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mActionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundThread:Ljava/lang/Thread;

.field private final mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

.field private final mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

.field private mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

.field private mEglConfigChooser:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;

.field private final mGlLock:Ljava/lang/Object;

.field private mIsAlreadyDestroyed:Z

.field private mIsAlreadyInitialized:Z

.field private mIsAlreadyScreenCleared:Z

.field private mIsRenderRequested:Z

.field private mIsSleep:Z

.field protected mOpenGlVersion:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

.field protected mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

.field private mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

.field private mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    .line 87
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .line 143
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    .line 144
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 155
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mOpenGlVersion:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .line 164
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglConfigChooser:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;

    .line 182
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    .line 185
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    .line 191
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    .line 194
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    .line 197
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    .line 198
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    .line 199
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    .line 200
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    .line 206
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 207
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 212
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    .line 87
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .line 143
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    .line 144
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 155
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mOpenGlVersion:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .line 164
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglConfigChooser:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;

    .line 182
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    .line 185
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    .line 191
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    .line 194
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    .line 197
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    .line 198
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    .line 199
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    .line 200
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    .line 206
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 207
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 218
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    .line 87
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .line 143
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    .line 144
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 155
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mOpenGlVersion:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .line 164
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglConfigChooser:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;

    .line 182
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    .line 185
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    .line 191
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    .line 194
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    .line 197
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    .line 198
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    .line 199
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    .line 200
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    .line 206
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 207
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 224
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 225
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    return v0
.end method

.method public static logGlEgl(Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GL/EGL] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public static logPerformance(Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method


# virtual methods
.method protected clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 650
    const/high16 v0, 0x3f800000

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 652
    const/16 v0, 0x4500

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 656
    return-void
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z

    .line 271
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    .line 241
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 382
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iput p2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 385
    iput p3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 387
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    if-nez v0, :cond_2

    .line 389
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 390
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglConfigChooser:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mOpenGlVersion:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->initialize(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;)V

    .line 391
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;)V

    .line 394
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    if-ne v0, v2, :cond_0

    .line 395
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 396
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceCreated()V

    .line 397
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    iget v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    iget v3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceChanged(II)V

    .line 398
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 413
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    .line 415
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v1, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    if-ne v0, v1, :cond_1

    .line 420
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    .line 421
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 427
    :cond_1
    return-void

    .line 402
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;)V

    .line 405
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    if-ne v0, v2, :cond_0

    .line 406
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 407
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-interface {v0, p2, p3}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceChanged(II)V

    .line 408
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 472
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v2

    .line 474
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    .line 475
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    .line 478
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 480
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 485
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v3, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    if-ne v1, v3, :cond_0

    .line 486
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 487
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceDestroyed()V

    .line 488
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 490
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 493
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_1

    .line 497
    :try_start_4
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 504
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v2

    .line 506
    :try_start_5
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->release()V

    .line 507
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 511
    iput v4, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 512
    iput v4, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 518
    return v5

    .line 480
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 490
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 504
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v2

    .line 506
    :try_start_9
    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->release()V

    .line 507
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_0

    .line 507
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    :catchall_4
    move-exception v1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 442
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_0
    iput p2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 445
    iput p3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 448
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;)V

    .line 451
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    if-ne v0, v2, :cond_0

    .line 452
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 453
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    iget v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    iget v3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceChanged(II)V

    .line 454
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 456
    :cond_0
    monitor-exit v1

    .line 461
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 527
    return-void
.end method

.method public recoverEglContext()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 257
    return-void
.end method

.method public requestAction(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;->$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$RenderSyncType:[I

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 368
    :goto_0
    monitor-exit v1

    .line 371
    return-void

    .line 349
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "GLTextureView not initialized"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 353
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 354
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 355
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestRender()V
    .locals 3

    .prologue
    .line 311
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;->$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$RenderSyncType:[I

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 333
    :goto_0
    monitor-exit v1

    .line 336
    return-void

    .line 314
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "GLTextureView not initialized"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 318
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 319
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;->onDrawFrame()V

    .line 320
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onDrawFrameFinished()Z

    .line 321
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    goto :goto_0

    .line 325
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    .line 329
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRenderer(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .prologue
    .line 279
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    if-eqz p1, :cond_0

    .line 281
    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .line 285
    :goto_0
    monitor-exit v1

    .line 286
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSurfaceStateCallback(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    if-eqz p1, :cond_0

    .line 296
    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 300
    :goto_0
    monitor-exit v1

    .line 301
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
