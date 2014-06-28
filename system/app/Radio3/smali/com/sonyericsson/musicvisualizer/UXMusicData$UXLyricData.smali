.class Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;
.super Ljava/lang/Object;
.source "UXMusicData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/musicvisualizer/UXMusicData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UXLyricData"
.end annotation


# instance fields
.field lyricStringArray:[Ljava/lang/String;

.field lyricTimeArray:[J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;->lyricStringArray:[Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;->lyricTimeArray:[J

    return-void
.end method
