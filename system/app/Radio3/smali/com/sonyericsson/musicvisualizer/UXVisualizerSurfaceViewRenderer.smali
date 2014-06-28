.class public Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;
.super Ljava/lang/Object;
.source "UXVisualizerSurfaceViewRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final FPS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "UXVisualizerSurfaceViewRenderer"


# instance fields
.field private dynamicFeature:J

.field private mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

.field private mCurrentPlayState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

.field private mCurrentProperty:Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

.field private mPlayPosition:J

.field private mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

.field private staticFeature:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 14
    .param p1, "theme"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->BeforeInitialize:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    iput-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    .line 33
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mPlayPosition:J

    .line 37
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Pause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    iput-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentPlayState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->staticFeature:I

    .line 53
    const-wide/16 v1, 0x11

    iput-wide v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->dynamicFeature:J

    .line 63
    invoke-static {}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->getInstance()Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    .line 65
    const/4 v13, 0x0

    .line 70
    .local v13, "musicData":Lcom/sonyericsson/musicvisualizer/UXMusicData;
    :try_start_0
    new-instance v0, Lcom/sonyericsson/musicvisualizer/UXMusicData;

    const-wide/32 v1, 0x493e0

    sget-object v3, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->Version0:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    const-string v4, "."

    const-string v5, "."

    const-string v6, "."

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/sonyericsson/musicvisualizer/UXMusicData;-><init>(JLcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLandroid/graphics/Bitmap;[J[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v13    # "musicData":Lcom/sonyericsson/musicvisualizer/UXMusicData;
    .local v0, "musicData":Lcom/sonyericsson/musicvisualizer/UXMusicData;
    :goto_0
    new-instance v1, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;-><init>(Lcom/sonyericsson/musicvisualizer/UXMusicData;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    iput-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentProperty:Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    .line 79
    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreating:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    iput-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    .line 80
    return-void

    .line 73
    .end local v0    # "musicData":Lcom/sonyericsson/musicvisualizer/UXMusicData;
    .restart local v13    # "musicData":Lcom/sonyericsson/musicvisualizer/UXMusicData;
    :catch_0
    move-exception v12

    .line 74
    .local v12, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "UXVisualizerSurfaceViewRenderer"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    move-object v0, v13

    .end local v13    # "musicData":Lcom/sonyericsson/musicvisualizer/UXMusicData;
    .restart local v0    # "musicData":Lcom/sonyericsson/musicvisualizer/UXMusicData;
    goto :goto_0
.end method


# virtual methods
.method changeTheme(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 19
    .param p1, "theme"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .prologue
    .line 130
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "UXVisualizerSurfaceViewRenderer"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeTheme: theme = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v3, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreated:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v3, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Running:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-ne v2, v3, :cond_2

    .line 135
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentProperty:Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    invoke-virtual {v2}, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;->getUXMusicData()Lcom/sonyericsson/musicvisualizer/UXMusicData;

    move-result-object v18

    .line 136
    .local v18, "musicData":Lcom/sonyericsson/musicvisualizer/UXMusicData;
    if-eqz v18, :cond_1

    if-eqz p1, :cond_1

    .line 138
    const/4 v10, 0x0

    .line 139
    .local v10, "numOfLyricRow":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->UXNativeOnThemeChanged(I)I

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    const/16 v3, 0x3c

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mSMFMFData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;

    iget-object v4, v4, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;->ttaState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mMusicLength:J

    long-to-int v5, v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mTrackTitle:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mArtistName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mAlbumTitle:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mSMFMFData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;

    iget-object v9, v9, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;->smfmfByteArray:[B

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mLyricData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;

    iget-object v11, v11, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;->lyricTimeArray:[J

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mLyricData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;

    iget-object v12, v12, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;->lyricStringArray:[Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mCoverArt:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;

    iget-object v13, v13, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;->coverArtByteArray:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentPlayState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->staticFeature:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->dynamicFeature:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v2 .. v17}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->UXNativeOnMusicChanged(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI[J[Ljava/lang/Object;[BIIJ)I

    .line 147
    sget-object v2, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Running:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    .line 149
    new-instance v2, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;-><init>(Lcom/sonyericsson/musicvisualizer/UXMusicData;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentProperty:Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    .line 159
    .end local v10    # "numOfLyricRow":I
    .end local v18    # "musicData":Lcom/sonyericsson/musicvisualizer/UXMusicData;
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentProperty:Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    if-eqz v2, :cond_1

    .line 155
    new-instance v2, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentProperty:Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    invoke-virtual {v3}, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;->getUXMusicData()Lcom/sonyericsson/musicvisualizer/UXMusicData;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;-><init>(Lcom/sonyericsson/musicvisualizer/UXMusicData;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentProperty:Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    goto :goto_0
.end method

.method destroy()V
    .locals 3

    .prologue
    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "UXVisualizerSurfaceViewRenderer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "destroy"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Running:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreated:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-ne v0, v1, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    invoke-virtual {v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->UXNativeShutdown()I

    .line 218
    sget-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Destroyed:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    .line 221
    :cond_1
    return-void
.end method

.method getPlayState()Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentPlayState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    return-object v0
.end method

.method handleTouchEvent(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "UXVisualizerSurfaceViewRenderer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent: x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Running:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->UXNativeOnTouch(II)I

    .line 206
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 110
    sget-boolean v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->sIsLoadedCore:Z

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Running:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    iget-wide v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mPlayPosition:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->UXNativeRender(JZ)I

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->UXNativeRender(JZ)I

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "UXVisualizerSurfaceViewRenderer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged: width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 94
    sget-boolean v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->sIsLoadedCore:Z

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->UXNativeOnScreenChanged(II)I

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreating:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-ne v0, v1, :cond_0

    .line 101
    sget-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreated:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentProperty:Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentProperty:Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;

    invoke-virtual {v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;->getTheme()Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->changeTheme(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 84
    sget-boolean v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->sIsLoadedCore:Z

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    invoke-virtual {v0}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->UXNativeInitialize()I

    goto :goto_0
.end method

.method setPlayState(Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;)V
    .locals 4
    .param p1, "playState"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .prologue
    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "UXVisualizerSurfaceViewRenderer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreated:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Running:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-ne v0, v1, :cond_1

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentPlayState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCore:Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;

    iget-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mCurrentPlayState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->UXNativeOnPlayStateChanged(I)I

    .line 175
    :cond_1
    return-void
.end method

.method setPlaybackPosition(J)V
    .locals 2
    .param p1, "position"    # J

    .prologue
    .line 184
    sget-boolean v0, Lcom/sonyericsson/musicvisualizer/UXVisualizerCore;->sIsLoadedCore:Z

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreated:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Running:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    if-ne v0, v1, :cond_0

    .line 189
    :cond_2
    iput-wide p1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerSurfaceViewRenderer;->mPlayPosition:J

    goto :goto_0
.end method
