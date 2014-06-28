.class public final Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$NativeDaemonFailureException;,
        Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$NativeDaemonArgumentException;,
        Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;,
        Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Callbacks;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-NativeDaemonConnector"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private mCallbacks:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Callbacks;

.field private mInputStream:Ljava/io/InputStream;

.field private mLocalLog:Landroid/util/LocalLog;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueLock:Ljava/lang/Object;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Callbacks;Ljava/lang/String;I)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Callbacks;
    .param p2, "socketName"    # Ljava/lang/String;
    .param p3, "maxLogSize"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mQueue:Ljava/util/concurrent/BlockingDeque;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mQueueLock:Ljava/lang/Object;

    .line 166
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mCallbacks:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Callbacks;

    .line 167
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocketName:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 169
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, p3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    .line 170
    return-void
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 348
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v1, 0x1

    .line 349
    .local v1, "hasSpaces":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 354
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 355
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 357
    .local v0, "c":C
    if-ne v0, v5, :cond_2

    .line 358
    const-string v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "c":C
    .end local v1    # "hasSpaces":Z
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 359
    .restart local v0    # "c":C
    .restart local v1    # "hasSpaces":Z
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_2
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_3

    .line 360
    const-string v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 362
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 366
    .end local v0    # "c":C
    :cond_4
    if-eqz v1, :cond_5

    .line 367
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    :cond_5
    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 249
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closing output stream for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    iput-object v4, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mInputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 259
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closing input stream for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    :goto_1
    iput-object v4, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mInputStream:Ljava/io/InputStream;

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_2

    .line 269
    :try_start_2
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 273
    :goto_2
    iput-object v4, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 275
    :cond_2
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 262
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing input stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 271
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private connect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 244
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conecting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 219
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 220
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocketName:Ljava/lang/String;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 223
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 225
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mInputStream:Ljava/io/InputStream;

    .line 226
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 228
    const-string v3, "conected"

    invoke-direct {p0, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 232
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 233
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 234
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    .line 236
    .local v1, "cmd":Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;
    # getter for: Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mDisposable:Z
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->access$000(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing disposable command from the queue: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 241
    .end local v1    # "cmd":Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mCallbacks:Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Callbacks;

    invoke-interface {v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Callbacks;->onDaemonConnected()V

    goto/16 :goto_0
.end method

.method private executeImpl(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V
    .locals 18
    .param p1, "cmd"    # Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v11

    .line 280
    .local v11, "sequenceNumber":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 282
    .local v2, "cmdBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 284
    .local v12, "startTime":J
    # getter for: Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->access$100(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v14

    # getter for: Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mArgs:[Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->access$200(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)[Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, "logCmd":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SND -> {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 289
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, "sentCmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v15, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/OutputStream;->write([B)V

    .line 295
    const/16 v14, 0x1000

    new-array v1, v14, [B

    .line 296
    .local v1, "buffer":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mInputStream:Ljava/io/InputStream;

    const/4 v15, 0x0

    const/16 v16, 0x1000

    move/from16 v0, v16

    invoke-virtual {v14, v1, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 297
    .local v3, "count":I
    add-int/lit8 v14, v3, -0x1

    aget-byte v14, v1, v14

    if-eqz v14, :cond_0

    .line 298
    const-string v14, "Protocoll error (invalid response)"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 299
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Protocoll error (invalid response)"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 301
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 302
    new-instance v9, Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v1, v14, v3, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 303
    .local v9, "rawEvent":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RCV <- {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 304
    invoke-static {v9}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    .line 305
    .local v6, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 306
    .local v4, "endTime":J
    sub-long v14, v4, v12

    const-wide/16 v16, 0x1f4

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 307
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NDC Command {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "} took too long ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v4, v12

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 309
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->isClassClientError()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 310
    new-instance v14, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$NativeDaemonArgumentException;

    invoke-direct {v14, v8, v6}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$NativeDaemonArgumentException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v14

    .line 312
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->isClassServerError()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 313
    new-instance v14, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$NativeDaemonFailureException;

    invoke-direct {v14, v8, v6}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v14

    .line 315
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 316
    .local v7, "handler":Landroid/os/Handler;
    if-eqz v7, :cond_4

    .line 317
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getCmdNumber()I

    move-result v14

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    :cond_4
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method private varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 326
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 327
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 330
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    move-object v2, p3

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 332
    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "argString":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 334
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_1
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    invoke-static {p1, v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "argString":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 405
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 407
    const-string v2, "Queue:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    .line 409
    .local v0, "cmd":Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    .end local v0    # "cmd":Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;
    :cond_0
    return-void
.end method

.method public execute(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V
    .locals 3
    .param p1, "cmd"    # Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    .prologue
    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    .line 182
    monitor-exit v2

    .line 187
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public run()V
    .locals 5

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 194
    .local v1, "current":Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;
    :goto_0
    const/4 v1, 0x0

    .line 195
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->connect()V

    .line 196
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingDeque;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;

    move-object v1, v0

    .line 197
    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->executeImpl(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in NativeDaemonConnector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->cleanup()V

    .line 201
    if-eqz v1, :cond_0

    .line 203
    # getter for: Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->mDisposable:Z
    invoke-static {v1}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;->access$000(Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector$Command;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command failed, it\'s disposable, so ignoring it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_1
    const-wide/16 v3, 0x1388

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 206
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command failed, retrying (adding back to queue): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/NativeDaemonConnector;->mQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v3, v1}, Ljava/util/concurrent/BlockingDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1
.end method
