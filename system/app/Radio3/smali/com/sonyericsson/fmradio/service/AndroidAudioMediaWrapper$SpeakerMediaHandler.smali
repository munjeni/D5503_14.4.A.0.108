.class Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;
.super Landroid/os/Handler;
.source "AndroidAudioMediaWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpeakerMediaHandler"
.end annotation


# static fields
.field static final DELAY:I = 0x1f4

.field static final MSG_EMPTY:I = 0x2

.field static final MSG_SET_SPEAKER_MEDIA_OFF:I = 0x0

.field static final MSG_SET_SPEAKER_MEDIA_ON:I = 0x1


# instance fields
.field private final mSpeakerOff:Ljava/lang/Runnable;

.field private final mSpeakerOn:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;)V
    .locals 1

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;->this$0:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 118
    new-instance v0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler$1;-><init>(Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;->mSpeakerOn:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler$2;-><init>(Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;->mSpeakerOff:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 107
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;->mSpeakerOn:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;->mSpeakerOff:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public removeMessages()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    return-void
.end method
