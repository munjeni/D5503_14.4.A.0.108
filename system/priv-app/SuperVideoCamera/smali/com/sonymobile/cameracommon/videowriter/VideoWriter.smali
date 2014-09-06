.class public Lcom/sonymobile/cameracommon/videowriter/VideoWriter;
.super Ljava/lang/Object;
.source "VideoWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoWriterListener;,
        Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;,
        Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoRecordingTask;,
        Lcom/sonymobile/cameracommon/videowriter/VideoWriter$BaseRecordingTask;,
        Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_MIMETYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final ENABLE_MONITOR_FPS:Z = false

.field private static final I_FRAME_INTERVAL:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_MIMETYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

.field private final mFpsMonitor:Lcom/sonymobile/cameracommon/videowriter/FpsMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private final mListener:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoWriterListener;

.field public final mRecordingTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mReferenceClock:Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;

.field private mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoWriterListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoWriterListener;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mIsRunning:Z

    .line 71
    iput-object p1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mListener:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoWriterListener;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;

    .line 74
    new-instance v0, Lcom/sonymobile/cameracommon/videowriter/FpsMonitor;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/videowriter/FpsMonitor;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mFpsMonitor:Lcom/sonymobile/cameracommon/videowriter/FpsMonitor;

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mRecordingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoWriterListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mListener:Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoWriterListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/videowriter/VideoWriter;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/videowriter/ReferenceClock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->sendOnStartedEvent()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/videowriter/VideoWriter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->sendOnFinishedEvent()V

    return-void
.end method

.method private sendOnFinishedEvent()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$2;-><init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method private sendOnStartedEvent()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$1;-><init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method


# virtual methods
.method public getEglController()Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mIsRunning:Z

    return v0
.end method

.method public start(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 8
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "orientationHint"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "isMicrophoneEnabled"    # Z
    .param p5, "profile"    # Landroid/media/CamcorderProfile;
    .param p6, "sharedEglContext"    # Ljavax/microedition/khronos/egl/EGLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 92
    :cond_0
    new-instance v2, Landroid/media/MediaMuxer;

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 93
    .local v2, "muxer":Landroid/media/MediaMuxer;
    invoke-virtual {v2, p2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 98
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 100
    invoke-static {p5}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->createVideoEncoder(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v3

    .line 102
    .local v3, "videoEncoder":Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 103
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    new-instance v1, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;-><init>()V

    sget-object v4, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    invoke-virtual {v0, v1, v4, p6}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->initialize(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 107
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    iget-object v1, v3, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onSurfaceTextureChanged(Landroid/view/Surface;)V

    .line 109
    if-eqz p4, :cond_1

    .line 110
    iget-object v6, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mRecordingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;

    invoke-static {p5}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;->createAudioEncoder(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;

    move-result-object v4

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoAndAudioRecordingTask;-><init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;Landroid/media/MediaMuxer;Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;I)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 121
    :goto_0
    iput-boolean v7, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mIsRunning:Z

    .line 123
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mRecordingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoRecordingTask;

    invoke-direct {v1, p0, v2, v3}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter$VideoRecordingTask;-><init>(Lcom/sonymobile/cameracommon/videowriter/VideoWriter;Landroid/media/MediaMuxer;Lcom/sonymobile/cameracommon/videowriter/VideoWriter$Encoder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonymobile/cameracommon/videowriter/VideoWriter;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 132
    :cond_0
    return-void
.end method
