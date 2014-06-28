.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnScanListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnScanListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_FULLSCAN:I = 0x2

.field private static final TYPE_ON_SCAN:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnScanListener$Stub;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .line 235
    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 241
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 271
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 288
    :goto_0
    return-void

    .line 273
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 274
    .local v1, "b":Landroid/os/Bundle;
    const-string v7, "tunedFrequency"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 275
    .local v6, "tunedFrequency":I
    const-string v7, "signalStrength"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 276
    .local v4, "signalStrength":I
    const-string v7, "scanDirection"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 277
    .local v3, "scanDirection":I
    const-string v7, "aborted"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 278
    .local v0, "aborted":Z
    iget-object v7, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    invoke-interface {v7, v6, v4, v3, v0}, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;->onScan(IIIZ)V

    goto :goto_0

    .line 281
    .end local v0    # "aborted":Z
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v3    # "scanDirection":I
    .end local v4    # "signalStrength":I
    .end local v6    # "tunedFrequency":I
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 282
    .restart local v1    # "b":Landroid/os/Bundle;
    const-string v7, "frequency"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 283
    .local v2, "frequency":[I
    const-string v7, "signalStrength"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 284
    .local v5, "signalStrengths":[I
    const-string v7, "aborted"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 285
    .restart local v0    # "aborted":Z
    iget-object v7, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    invoke-interface {v7, v2, v5, v0}, Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;->onFullScan([I[IZ)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$300(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onFullScan([I[IZ)V
    .locals 3
    .param p1, "frequency"    # [I
    .param p2, "signalStrength"    # [I
    .param p3, "aborted"    # Z

    .prologue
    .line 257
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 258
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "frequency"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 261
    const-string v2, "signalStrength"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 262
    const-string v2, "aborted"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 264
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    return-void
.end method

.method public onScan(IIIZ)V
    .locals 3
    .param p1, "tunedFrequency"    # I
    .param p2, "signalStrength"    # I
    .param p3, "scanDirection"    # I
    .param p4, "aborted"    # Z

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 246
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "tunedFrequency"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v2, "signalStrength"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string v2, "scanDirection"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v2, "aborted"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnScanListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    return-void
.end method
