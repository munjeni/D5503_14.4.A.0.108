.class public Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;
.super Ljava/io/OutputStream;
.source "InterruptableOutputStream.java"


# static fields
.field private static final MAX_WRITE_BYTES:I = 0x1000


# instance fields
.field private volatile mIsInterrupted:Z

.field private mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->mIsInterrupted:Z

    .line 34
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 59
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->mIsInterrupted:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 66
    return-void
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->mIsInterrupted:Z

    .line 70
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->mIsInterrupted:Z

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 42
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    add-int v1, p2, p3

    .line 47
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 48
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->mIsInterrupted:Z

    if-eqz v2, :cond_0

    .line 49
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 50
    :cond_0
    const/16 v2, 0x1000

    sub-int v3, v1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 51
    .local v0, "bytesCount":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 52
    add-int/2addr p2, v0

    .line 53
    goto :goto_0

    .line 54
    .end local v0    # "bytesCount":I
    :cond_1
    return-void
.end method
