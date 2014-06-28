.class Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;
.super Ljava/lang/Object;
.source "VpnNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/VpnNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VpnNetIf"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private ifAddr:[B

.field final ifFlags:I

.field final ifIdx:I

.field final ifName:Ljava/lang/String;

.field final ifType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 449
    const-class v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "idx"    # I
    .param p3, "flags"    # I
    .param p4, "type"    # I

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifName:Ljava/lang/String;

    .line 466
    iput p2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifIdx:I

    .line 467
    iput p3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifFlags:I

    .line 468
    iput p4, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifType:I

    .line 469
    sget-object v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifAddr:[B

    .line 476
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "idx"    # I
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "addr"    # [B

    .prologue
    .line 479
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;-><init>(Ljava/lang/String;III)V

    .line 480
    iput-object p5, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifAddr:[B

    .line 481
    return-void
.end method

.method static readObject(Ljava/io/DataInputStream;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;
    .locals 10
    .param p0, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, "res":Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;
    const/4 v5, 0x0

    .line 495
    .local v5, "addr":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 496
    .local v2, "idx":I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 497
    .local v3, "flags":I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 498
    .local v4, "type":I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 500
    .local v6, "alen":I
    if-lez v6, :cond_1

    .line 501
    const/16 v1, 0x14

    if-le v6, v1, :cond_0

    .line 502
    new-instance v1, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": HW address too long ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    .end local v0    # "res":Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;
    .end local v2    # "idx":I
    .end local v3    # "flags":I
    .end local v4    # "type":I
    .end local v6    # "alen":I
    :catchall_0
    move-exception v1

    sget-object v8, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->TAG:Ljava/lang/String;

    const-string v9, "#readObject(): exiting"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .line 504
    .restart local v0    # "res":Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;
    .restart local v2    # "idx":I
    .restart local v3    # "flags":I
    .restart local v4    # "type":I
    .restart local v6    # "alen":I
    :cond_0
    :try_start_1
    new-array v5, v6, [B

    .line 505
    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 506
    rsub-int/lit8 v1, v6, 0x14

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 509
    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 511
    if-gtz v6, :cond_2

    .line 512
    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->TAG:Ljava/lang/String;

    const-string v8, "#readObject(): invalid name"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v1, Ljava/io/IOException;

    const-string v8, "corrupted name string"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_2
    new-array v7, v6, [B

    .line 516
    .local v7, "name":[B
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 518
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;

    .end local v0    # "res":Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;-><init>(Ljava/lang/String;III[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    .restart local v0    # "res":Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;
    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->TAG:Ljava/lang/String;

    const-string v8, "#readObject(): exiting"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-object v0
.end method
