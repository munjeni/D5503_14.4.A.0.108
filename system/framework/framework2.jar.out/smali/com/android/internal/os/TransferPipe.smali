.class public final Lcom/android/internal/os/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field mBufferPrefix:Ljava/lang/String;

.field mComplete:Z

.field mEndTime:J

.field mFailure:Ljava/lang/String;

.field final mFds:[Landroid/os/ParcelFileDescriptor;

.field mOutFd:Ljava/io/FileDescriptor;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TransferPipe"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    .line 62
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    .line 63
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    const-wide/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/TransferPipe;->go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 84
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Binder;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 99
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p2, p5, p6}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v1

    .line 92
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    .line 109
    return-void
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    instance-of v1, p0, Landroid/os/Binder;

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 124
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v1

    .line 117
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method closeFd(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 178
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 183
    :cond_0
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getReadFd()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWriteFd()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public go(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 133
    return-void
.end method

.method public go(Ljava/io/FileDescriptor;J)V
    .locals 6
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    .line 145
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 147
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    if-nez v2, :cond_1

    .line 150
    iget-wide v2, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 151
    .local v0, "waitTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 154
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    .end local v0    # "waitTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v2

    .line 158
    .restart local v0    # "waitTime":J
    :cond_0
    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    goto :goto_0

    .line 164
    .end local v0    # "waitTime":J
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 165
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 171
    return-void
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 189
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    .line 193
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 195
    .local v0, "buffer":[B
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 196
    .local v8, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v8, :cond_0

    const/4 v3, 0x0

    .line 197
    .local v3, "fd":Ljava/io/FileDescriptor;
    :goto_0
    if-nez v3, :cond_1

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    const-string v11, "Pipe closed for reading"

    iput-object v11, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :goto_1
    return-void

    .line 196
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    :cond_0
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    goto :goto_0

    .line 202
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 205
    :cond_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 206
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 209
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 210
    .local v1, "bufferPrefix":[B
    const/4 v7, 0x1

    .line 211
    .local v7, "needPrefix":Z
    iget-object v11, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 212
    iget-object v11, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 217
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "size":I
    if-lez v9, :cond_9

    .line 219
    if-nez v1, :cond_3

    .line 220
    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 250
    .end local v9    # "size":I
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/io/IOException;
    monitor-enter p0

    .line 252
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 254
    monitor-exit p0

    goto :goto_1

    .line 255
    :catchall_1
    move-exception v11

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    .line 222
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v9    # "size":I
    :cond_3
    const/4 v10, 0x0

    .line 223
    .local v10, "start":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v9, :cond_8

    .line 224
    :try_start_4
    aget-byte v11, v0, v6

    if-eq v11, v12, :cond_7

    .line 225
    if-le v6, v10, :cond_4

    .line 226
    sub-int v11, v6, v10

    invoke-virtual {v5, v0, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 228
    :cond_4
    move v10, v6

    .line 229
    if-eqz v7, :cond_5

    .line 230
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 231
    const/4 v7, 0x0

    .line 234
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 235
    if-ge v6, v9, :cond_6

    aget-byte v11, v0, v6

    if-ne v11, v12, :cond_5

    .line 236
    :cond_6
    if-ge v6, v9, :cond_7

    .line 237
    const/4 v7, 0x1

    .line 223
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 241
    :cond_8
    if-le v9, v10, :cond_2

    .line 242
    sub-int v11, v9, v10

    invoke-virtual {v5, v0, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 247
    .end local v6    # "i":I
    .end local v10    # "start":I
    :cond_9
    iget-object v11, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v11

    if-eqz v11, :cond_a

    .line 258
    :cond_a
    monitor-enter p0

    .line 259
    const/4 v11, 0x1

    :try_start_5
    iput-boolean v11, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 261
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v11

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v11
.end method

.method public setBufferPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 79
    return-void
.end method
