.class public Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;
.super Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;
.source "DelayedPresetCache.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final COMPUTE_PRESET:I = 0x1

.field private static final NEW_PRESET:I


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mProcessingHandler:Landroid/os/Handler;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;I)V
    .locals 4
    .param p1, "loader"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;I)V

    .line 27
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    .line 33
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    .line 35
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;)V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mUIHandler:Landroid/os/Handler;

    .line 64
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImageProcessing"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    .line 65
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 66
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 67
    .local v0, "lp":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 50
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 59
    :goto_0
    return v3

    .line 52
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .line 53
    .local v0, "cache":Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->compute(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)V

    .line 54
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 55
    .local v1, "uimsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected willCompute(Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;)V
    .locals 3
    .param p1, "cache"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;

    .prologue
    const/4 v2, 0x1

    .line 74
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/DirectPresetCache$CachedPreset;->setBusy(Z)V

    .line 78
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
