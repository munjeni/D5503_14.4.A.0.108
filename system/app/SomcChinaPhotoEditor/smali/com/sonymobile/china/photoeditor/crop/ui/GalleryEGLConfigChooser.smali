.class Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;
.super Ljava/lang/Object;
.source "GalleryEGLConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final ATTR_ID:[I

.field private static final ATTR_NAME:[Ljava/lang/String;


# instance fields
.field private final mConfigSpec:[I

.field private mStencilBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->ATTR_ID:[I

    .line 105
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "R"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CAVEAT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    return-void

    .line 99
    :array_0
    .array-data 4
        0x3024
        0x3023
        0x3022
        0x3021
        0x3025
        0x3026
        0x3028
        0x3027
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->mConfigSpec:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3021
        0x0
        0x3038
    .end array-data
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/16 v8, 0x3026

    const/4 v7, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    .local v3, "result":Ljavax/microedition/khronos/egl/EGLConfig;
    const v1, 0x7fffffff

    .line 69
    .local v1, "minStencil":I
    const/4 v5, 0x1

    new-array v4, v5, [I

    .line 74
    .local v4, "value":[I
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 75
    aget-object v5, p3, v0

    const/16 v6, 0x3024

    invoke-interface {p1, p2, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    aget v5, v4, v7

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 74
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    aget-object v5, p3, v0

    invoke-interface {p1, p2, v5, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    aget v5, v4, v7

    if-eqz v5, :cond_0

    .line 83
    aget v5, v4, v7

    if-ge v5, v1, :cond_0

    .line 84
    aget v1, v4, v7

    .line 85
    aget-object v3, p3, v0

    goto :goto_1

    .line 88
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eglGetConfigAttrib error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_3
    if-nez v3, :cond_4

    .line 92
    aget-object v3, p3, v7

    .line 93
    :cond_4
    invoke-interface {p1, p2, v3, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 94
    aget v5, v4, v7

    iput v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->mStencilBits:I

    .line 95
    invoke-direct {p0, p1, p2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 96
    return-object v3
.end method

.method private logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 110
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 111
    .local v2, "value":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->ATTR_ID:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 113
    sget-object v3, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->ATTR_ID:[I

    aget v3, v3, v0

    invoke-interface {p1, p2, p3, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 48
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 49
    .local v5, "numConfig":[I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    aget v0, v5, v4

    if-gtz v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    aget v0, v5, v4

    new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 58
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->mConfigSpec:[I

    array-length v4, v3

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public getStencilBits()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GalleryEGLConfigChooser;->mStencilBits:I

    return v0
.end method
