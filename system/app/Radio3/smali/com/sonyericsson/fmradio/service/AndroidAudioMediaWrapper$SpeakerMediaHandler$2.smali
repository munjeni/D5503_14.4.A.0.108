.class Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler$2;
.super Ljava/lang/Object;
.source "AndroidAudioMediaWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler$2;->this$1:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler$2;->this$1:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;

    iget-object v0, v0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper$SpeakerMediaHandler;->this$0:Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;

    # getter for: Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->access$000(Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerMediaOn(Z)V

    .line 127
    return-void
.end method
