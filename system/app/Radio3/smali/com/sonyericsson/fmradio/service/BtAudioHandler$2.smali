.class Lcom/sonyericsson/fmradio/service/BtAudioHandler$2;
.super Ljava/lang/Object;
.source "BtAudioHandler.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/BtAudioHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/BtAudioHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/BtAudioHandler;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler$2;->this$0:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 62
    const/16 v0, 0x320

    if-ne p2, v0, :cond_0

    .line 63
    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder info: Max duration reached ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 65
    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder info: Max filesize reached ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder info: Other info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    goto :goto_0
.end method
