.class public Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;
.super Ljava/lang/Object;
.source "UXVisualizerProperty.java"


# instance fields
.field private final mMusicData:Lcom/sonyericsson/musicvisualizer/UXMusicData;

.field private final mTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/musicvisualizer/UXMusicData;Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;)V
    .locals 0
    .param p1, "musicData"    # Lcom/sonyericsson/musicvisualizer/UXMusicData;
    .param p2, "theme"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;->mMusicData:Lcom/sonyericsson/musicvisualizer/UXMusicData;

    .line 18
    iput-object p2, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;->mTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    .line 19
    return-void
.end method


# virtual methods
.method public getTheme()Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;->mTheme:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTheme;

    return-object v0
.end method

.method public getUXMusicData()Lcom/sonyericsson/musicvisualizer/UXMusicData;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXVisualizerProperty;->mMusicData:Lcom/sonyericsson/musicvisualizer/UXMusicData;

    return-object v0
.end method
