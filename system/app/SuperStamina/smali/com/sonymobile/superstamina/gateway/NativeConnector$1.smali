.class Lcom/sonymobile/superstamina/gateway/NativeConnector$1;
.super Ljava/lang/Object;
.source "NativeConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/gateway/NativeConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mInputStream:Ljava/io/InputStream;

.field mSocket:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/sonymobile/superstamina/gateway/NativeConnector;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/gateway/NativeConnector;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->this$0:Lcom/sonymobile/superstamina/gateway/NativeConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mInputStream:Ljava/io/InputStream;

    .line 57
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    .line 59
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mSocket:Landroid/net/LocalSocket;

    .line 66
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->this$0:Lcom/sonymobile/superstamina/gateway/NativeConnector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sonymobile/superstamina/gateway/NativeConnector;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->access$000(Lcom/sonymobile/superstamina/gateway/NativeConnector;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->this$0:Lcom/sonymobile/superstamina/gateway/NativeConnector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sonymobile/superstamina/gateway/NativeConnector;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->access$000(Lcom/sonymobile/superstamina/gateway/NativeConnector;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mSocket:Landroid/net/LocalSocket;

    .line 76
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "xssm_wakelock_socket"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 79
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 80
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mInputStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private execute()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 90
    const/16 v9, 0x7c

    new-array v0, v9, [B

    .line 91
    .local v0, "buffer":[B
    const-string v1, ""

    .line 93
    .local v1, "charsLeft":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->mInputStream:Ljava/io/InputStream;

    array-length v10, v0

    invoke-virtual {v9, v0, v8, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 95
    .local v3, "count":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_4

    .line 96
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    # getter for: Lcom/sonymobile/superstamina/gateway/NativeConnector;->UTF_8:Ljava/nio/charset/Charset;
    invoke-static {}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->access$100()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v10, v0, v8, v3, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "rcv":Ljava/lang/String;
    const-string v9, "\u0000"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "commands":[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-nez v9, :cond_1

    const/4 v7, 0x1

    .line 100
    .local v7, "terminatedCorrectly":Z
    :goto_0
    if-eqz v7, :cond_2

    array-length v5, v2

    .line 101
    .local v5, "length":I
    :goto_1
    if-eqz v7, :cond_3

    const-string v1, ""

    .line 103
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_0

    .line 104
    aget-object v9, v2, v4

    invoke-direct {p0, v9}, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->handleCommand(Ljava/lang/String;)V

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v7    # "terminatedCorrectly":Z
    :cond_1
    move v7, v8

    .line 99
    goto :goto_0

    .line 100
    .restart local v7    # "terminatedCorrectly":Z
    :cond_2
    array-length v9, v2

    add-int/lit8 v5, v9, -0x1

    goto :goto_1

    .line 101
    .restart local v5    # "length":I
    :cond_3
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget-object v1, v2, v9

    goto :goto_2

    .line 107
    .end local v2    # "commands":[Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "rcv":Ljava/lang/String;
    .end local v7    # "terminatedCorrectly":Z
    :cond_4
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Got -1 from a read"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private handleCommand(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->this$0:Lcom/sonymobile/superstamina/gateway/NativeConnector;

    # getter for: Lcom/sonymobile/superstamina/gateway/NativeConnector;->mHandler:Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;
    invoke-static {v1}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->access$200(Lcom/sonymobile/superstamina/gateway/NativeConnector;)Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 118
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->this$0:Lcom/sonymobile/superstamina/gateway/NativeConnector;

    # getter for: Lcom/sonymobile/superstamina/gateway/NativeConnector;->mHandler:Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;
    invoke-static {v1}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->access$200(Lcom/sonymobile/superstamina/gateway/NativeConnector;)Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 129
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->connect()V

    .line 130
    invoke-direct {p0}, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->cleanup()V

    .line 136
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;->this$0:Lcom/sonymobile/superstamina/gateway/NativeConnector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in NativeConnector.run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sonymobile/superstamina/gateway/NativeConnector;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->access$000(Lcom/sonymobile/superstamina/gateway/NativeConnector;Ljava/lang/String;)V

    goto :goto_1
.end method
