.class Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;
.super Ljava/lang/Object;
.source "UXMusicData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/musicvisualizer/UXMusicData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UXSmfmfData"
.end annotation


# instance fields
.field smfmfByteArray:[B

.field ttaState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;->ttaState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    .line 82
    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;->smfmfByteArray:[B

    return-void
.end method
