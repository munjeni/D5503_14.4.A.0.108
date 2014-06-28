.class final Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "MockReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoFiMediaPlayer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSignalStrength:I

.field private mVolume:F

.field private mpMusic:Landroid/media/MediaPlayer;

.field private mpNoise:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;Landroid/content/Context;II)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resMusic"    # I
    .param p4, "resNoise"    # I

    .prologue
    .line 834
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 832
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mVolume:F

    .line 835
    iput-object p2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mContext:Landroid/content/Context;

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpMusic:Landroid/media/MediaPlayer;

    .line 837
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpNoise:Landroid/media/MediaPlayer;

    .line 838
    return-void
.end method

.method private adjustVolume()V
    .locals 5

    .prologue
    const/high16 v4, 0x447a0000

    .line 852
    iget v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mSignalStrength:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    iget v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mVolume:F

    mul-float v0, v2, v3

    .line 853
    .local v0, "musicVolume":F
    iget v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mSignalStrength:I

    rsub-int v2, v2, 0x3e8

    int-to-float v2, v2

    const/high16 v3, 0x3f000000

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    iget v3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mVolume:F

    mul-float v1, v2, v3

    .line 855
    .local v1, "noiseVolume":F
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpMusic:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 856
    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpNoise:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 857
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpMusic:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 873
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpNoise:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 874
    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 889
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 893
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpMusic:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 894
    iput-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpMusic:Landroid/media/MediaPlayer;

    .line 895
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpNoise:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 896
    iput-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpNoise:Landroid/media/MediaPlayer;

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # setter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mLoFiPlayer:Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$2102(Lcom/sonyericsson/fmradio/mock/MockReceiver;Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;)Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;

    .line 899
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 885
    return-void
.end method

.method public setSignalStrength(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 841
    iput p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mSignalStrength:I

    .line 842
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->adjustVolume()V

    .line 843
    return-void
.end method

.method public setVolume(FF)V
    .locals 0
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 847
    iput p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mVolume:F

    .line 848
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->adjustVolume()V

    .line 849
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpMusic:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 862
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpMusic:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 864
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpNoise:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpNoise:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 867
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I
    invoke-static {v1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$500(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I

    move-result v1

    # invokes: Lcom/sonyericsson/fmradio/mock/MockReceiver;->updateLowFiPlayer(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1600(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V

    .line 868
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpMusic:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 879
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$LoFiMediaPlayer;->mpNoise:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 880
    return-void
.end method
