.class Lcom/sonyericsson/fmradio/service/BtAudioHandler$3;
.super Ljava/lang/Object;
.source "BtAudioHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/service/BtAudioHandler;->startBtMedia(Z)Z
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
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler$3;->this$0:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/BtAudioHandler$3;->this$0:Lcom/sonyericsson/fmradio/service/BtAudioHandler;

    # invokes: Lcom/sonyericsson/fmradio/service/BtAudioHandler;->startBtMediaRecorder()Z
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/BtAudioHandler;->access$000(Lcom/sonyericsson/fmradio/service/BtAudioHandler;)Z

    .line 94
    return-void
.end method
