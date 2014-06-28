.class Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;
.super Ljava/lang/Thread;
.source "SomcTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToneGeneratorEventThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/phone/SomcTonePlayer;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcTonePlayer;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->this$0:Lcom/android/phone/SomcTonePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private initHandler()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread$1;-><init>(Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;)V

    iput-object v0, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->mHandler:Landroid/os/Handler;

    .line 249
    return-void
.end method


# virtual methods
.method public isHandlerCreated()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->initHandler()V

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 220
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 222
    return-void

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 4
    .param p1, "msg_id"    # I
    .param p2, "msg_content"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 258
    if-eq v2, p1, :cond_0

    if-ne v3, p1, :cond_1

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-object v1, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    :cond_1
    if-nez p2, :cond_2

    .line 264
    iget-object v1, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    :goto_0
    return-void

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 267
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 268
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 276
    return-void
.end method
