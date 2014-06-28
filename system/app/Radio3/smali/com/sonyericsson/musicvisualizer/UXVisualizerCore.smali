.class public Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;
.super Ljava/lang/Object;
.source "UXVisualizerCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UXVisualizerCore"

.field private static sInstance:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

.field protected static sIsLoadedCore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    const/4 v1, 0x0

    sput-object v1, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->sInstance:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    .line 20
    sput-boolean v3, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->sIsLoadedCore:Z

    .line 23
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "UXVisualizerCore"

    aput-object v2, v1, v3

    const-string v2, "Load libUXVisualizerCore.so"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 25
    :try_start_0
    const-string v1, "UXVisualizerCore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->sIsLoadedCore:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 27
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 28
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "UXVisualizerCore"

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsatisfiedLinkError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static getInstance()Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->sInstance:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    invoke-direct {v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;-><init>()V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->sInstance:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    .line 36
    :cond_0
    sget-object v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->sInstance:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    return-object v0
.end method


# virtual methods
.method native UXNativeCheckCoverArtRequest()I
.end method

.method native UXNativeInitialize()I
.end method

.method native UXNativeOnCoverArtFetched([Ljava/lang/Object;)I
.end method

.method native UXNativeOnMusicChanged(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI[J[Ljava/lang/Object;[BIIJ)I
.end method

.method native UXNativeOnPlayStateChanged(I)I
.end method

.method native UXNativeOnScreenChanged(II)I
.end method

.method native UXNativeOnThemeChanged(I)I
.end method

.method native UXNativeOnTouch(II)I
.end method

.method native UXNativeRender(JZ)I
.end method

.method native UXNativeShutdown()I
.end method
