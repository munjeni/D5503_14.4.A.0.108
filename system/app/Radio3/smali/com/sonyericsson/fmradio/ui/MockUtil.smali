.class public Lcom/sonyericsson/fmradio/ui/MockUtil;
.super Ljava/lang/Object;
.source "MockUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupFmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x370

    const/16 v7, 0x2bc

    const/16 v6, 0x28a

    const/16 v5, 0x258

    const/16 v4, 0x384

    .line 30
    const-string v1, "fm_receiver"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/sonyericsson/fmradio/mock/MockReceiver;

    sget-object v1, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;->REALISTIC:Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    invoke-direct {v0, v1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;-><init>(Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;)V

    .line 37
    .local v0, "mockReceiver":Lcom/sonyericsson/fmradio/mock/MockReceiver;
    const v1, 0x1a1f8

    const/16 v2, 0x3de

    const-string v3, "Mix Mega"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 38
    const v1, 0x19af0

    const-string v2, "NRJ"

    invoke-virtual {v0, v1, v7, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 39
    const v1, 0x1a0cc

    const-string v2, "Rix FM"

    invoke-virtual {v0, v1, v5, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 40
    const v1, 0x19e74

    const-string v2, "Rockklas"

    invoke-virtual {v0, v1, v6, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 41
    const v1, 0x188f8

    const-string v2, "Din Gata"

    invoke-virtual {v0, v1, v4, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 42
    const v1, 0x1831c

    const-string v2, "Radio AF"

    invoke-virtual {v0, v1, v6, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 43
    const v1, 0x17ed0

    const/16 v2, 0x1f4

    const-string v3, "Clear FM"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 44
    const v1, 0x17ae8

    const/16 v2, 0x38e

    const-string v3, "SR P3"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 45
    const v1, 0x168f0

    const-string v2, "SR P2"

    invoke-virtual {v0, v1, v8, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 46
    const v1, 0x15d9c

    const-string v2, "SR P4"

    invoke-virtual {v0, v1, v8, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 47
    const v1, 0x15ae0

    const-string v2, "SR P1"

    invoke-virtual {v0, v1, v4, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 51
    const v1, 0x17f34

    const-string v2, "Ch1"

    invoke-virtual {v0, v1, v5, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 52
    const v1, 0x17f98

    const-string v2, "Ch2"

    invoke-virtual {v0, v1, v7, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 53
    const v1, 0x17ffc

    const/16 v2, 0x320

    const-string v3, "Ch3"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 54
    const v1, 0x18060

    const-string v2, "Ch4"

    invoke-virtual {v0, v1, v4, v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 55
    const v1, 0x180c4

    const/16 v2, 0x3e8

    const-string v3, "Ch5"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 56
    const v1, 0x18128

    const/16 v2, 0x385

    const-string v3, "Ch6"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 57
    const v1, 0x1818c

    const/16 v2, 0x321

    const-string v3, "Ch7"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 58
    const v1, 0x181f0

    const/16 v2, 0x2bd

    const-string v3, "Ch8"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 59
    const v1, 0x18254

    const/16 v2, 0x259

    const-string v3, "Ch9"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->addChannel(IILjava/lang/String;)V

    .line 60
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/FmService;->setReceiver(Lcom/stericsson/hardware/fm/FmReceiver;)V

    .line 63
    new-instance v1, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;

    const/high16 v2, 0x7f040000

    const v3, 0x7f040002

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;-><init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/mock/MockReceiver;II)V

    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmService;->setAudioMediaWrapper(Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;)V

    goto/16 :goto_0
.end method
