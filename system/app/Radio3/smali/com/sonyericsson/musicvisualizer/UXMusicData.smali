.class public Lcom/sonyericsson/musicvisualizer/UXMusicData;
.super Ljava/lang/Object;
.source "UXMusicData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;,
        Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;,
        Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;
    }
.end annotation


# instance fields
.field public mAlbumTitle:Ljava/lang/String;

.field public mArtistName:Ljava/lang/String;

.field public mCoverArt:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;

.field public mCoverArtBitmap:Landroid/graphics/Bitmap;

.field public mLyricData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;

.field public mMusicLength:J

.field public mSMFMFData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;

.field public mTrackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLandroid/graphics/Bitmap;[J[Ljava/lang/String;)V
    .locals 3
    .param p1, "musicLengthIn"    # J
    .param p3, "ttaStateIn"    # Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;
    .param p4, "trackTitleIn"    # Ljava/lang/String;
    .param p5, "artistNameIn"    # Ljava/lang/String;
    .param p6, "albumTitleIn"    # Ljava/lang/String;
    .param p7, "smfmfByteArrayIn"    # [B
    .param p8, "coverArtByteArrayIn"    # [B
    .param p9, "coverArtBitmapIn"    # Landroid/graphics/Bitmap;
    .param p10, "lyricTimeArrayIn"    # [J
    .param p11, "lyricStringArrayIn"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mMusicLength:J

    .line 25
    iput-object v2, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mTrackTitle:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mArtistName:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mAlbumTitle:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;

    invoke-direct {v0}, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mCoverArt:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;

    .line 36
    iput-object v2, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mCoverArtBitmap:Landroid/graphics/Bitmap;

    .line 39
    new-instance v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;

    invoke-direct {v0}, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mSMFMFData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;

    .line 42
    new-instance v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;

    invoke-direct {v0}, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mLyricData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;

    .line 48
    iput-wide p1, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mMusicLength:J

    .line 49
    invoke-direct {p0, p4}, Lcom/sonyericsson/musicvisualizer/UXMusicData;->getStringUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mTrackTitle:Ljava/lang/String;

    .line 50
    invoke-direct {p0, p5}, Lcom/sonyericsson/musicvisualizer/UXMusicData;->getStringUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mArtistName:Ljava/lang/String;

    .line 51
    invoke-direct {p0, p6}, Lcom/sonyericsson/musicvisualizer/UXMusicData;->getStringUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mAlbumTitle:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mSMFMFData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;

    iput-object p7, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;->smfmfByteArray:[B

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mSMFMFData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;

    iput-object p3, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;->ttaState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mCoverArt:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;

    iput-object p8, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;->coverArtByteArray:[B

    .line 55
    iput-object p9, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mCoverArtBitmap:Landroid/graphics/Bitmap;

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mLyricData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;

    iput-object p10, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;->lyricTimeArray:[J

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mLyricData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;

    iput-object p11, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;->lyricStringArray:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method private getStringUTF16(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "st"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF_16"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF_16"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public resetMusicData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mCoverArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mCoverArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mCoverArtBitmap:Landroid/graphics/Bitmap;

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mCoverArt:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;

    iput-object v1, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;->coverArtByteArray:[B

    .line 66
    iput-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mAlbumTitle:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mArtistName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mTrackTitle:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mLyricData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;

    iput-object v1, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;->lyricStringArray:[Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mLyricData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;

    iput-object v1, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXLyricData;->lyricTimeArray:[J

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mSMFMFData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;

    iput-object v1, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;->smfmfByteArray:[B

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData;->mSMFMFData:Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;

    iput-object v1, v0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXSmfmfData;->ttaState:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    .line 73
    return-void
.end method
