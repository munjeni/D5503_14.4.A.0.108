.class public Lcom/sonymobile/android/addoncamera/supervideo/device/PlatformDependencyResolver;
.super Ljava/lang/Object;
.source "PlatformDependencyResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/device/PlatformDependencyResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/device/PlatformDependencyResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFocusMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 156
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->getDefaultValue()Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->getValueForVideo()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 166
    .end local v0    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getDefaultHdrVideo(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 143
    const-string v1, "sony-video-hdr-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "hdrVideo":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    const/4 v1, 0x0

    .line 151
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "off"

    goto :goto_0
.end method

.method public static getDefaultMetering(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 114
    const-string v1, "sony-metering-mode"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "metering":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 122
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "center-weighted"

    goto :goto_0
.end method

.method public static getDefaultSceneMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "scene":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "auto"

    goto :goto_0
.end method

.method public static getDefaultSteadyShot(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 128
    const-string v1, "sony-vs-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "steadyShot":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    const/4 v1, 0x0

    .line 137
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "normal"

    goto :goto_0
.end method

.method public static getOptimalPreviewFpsRange(Landroid/hardware/Camera$Parameters;Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;)[I
    .locals 10
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "videoSize"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 88
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v5

    .line 90
    .local v5, "supprotedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v6, -0x1

    .line 91
    .local v6, "targetFps":I
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getVideoFrameRate()I

    move-result v7

    mul-int/lit16 v6, v7, 0x3e8

    .line 95
    :cond_0
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 96
    .local v3, "optimized":[I
    aput v8, v3, v8

    .line 97
    aput v8, v3, v9

    .line 98
    if-eqz v5, :cond_2

    .line 99
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 100
    .local v4, "range":[I
    aget v2, v4, v8

    .line 101
    .local v2, "min":I
    aget v1, v4, v9

    .line 102
    .local v1, "max":I
    if-gt v1, v6, :cond_1

    aget v7, v3, v9

    if-gt v7, v1, :cond_1

    .line 103
    aput v2, v3, v8

    .line 104
    aput v1, v3, v9

    goto :goto_0

    .line 108
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v4    # "range":[I
    :cond_2
    return-object v3
.end method

.method public static getOptimalPreviewSize(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "capRect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v9, 0x42c80000

    const/4 v10, 0x0

    .line 35
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "allSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v4, 0x0

    .line 38
    .local v4, "optimalSize":Landroid/hardware/Camera$Size;
    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v1, v7

    .line 43
    .local v1, "capAspect":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 44
    .local v6, "size":Landroid/hardware/Camera$Size;
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v5, v7

    .line 45
    .local v5, "previewAspect":I
    if-ne v1, v5, :cond_0

    .line 49
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-gt v7, v8, :cond_0

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gt v7, v8, :cond_0

    .line 54
    if-nez v4, :cond_1

    .line 55
    move-object v4, v6

    goto :goto_0

    .line 57
    :cond_1
    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    if-ge v7, v8, :cond_0

    .line 60
    move-object v4, v6

    goto :goto_0

    .line 68
    .end local v1    # "capAspect":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "previewAspect":I
    .end local v6    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    if-eqz v4, :cond_3

    .line 69
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    :goto_1
    return-object v7

    .line 73
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 74
    .local v2, "defaultSize":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_4

    .line 75
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 80
    :cond_4
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    goto :goto_1
.end method
