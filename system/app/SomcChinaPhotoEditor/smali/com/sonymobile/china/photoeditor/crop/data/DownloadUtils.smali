.class public Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/OutputStream;)Z
    .locals 3
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 93
    invoke-static {p0, v0, p2}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils;->dump(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/4 v2, 0x1

    .line 101
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v2

    .line 95
    :catch_0
    move-exception v1

    .line 99
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 101
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static dump(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 71
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 72
    .local v0, "buffer":[B
    array-length v3, v0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 73
    .local v1, "rc":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 74
    .local v2, "thread":Ljava/lang/Thread;
    new-instance v3, Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils$1;

    invoke-direct {v3, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils$1;-><init>(Ljava/lang/Thread;)V

    invoke-interface {p0, v3}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 79
    :goto_0
    if-lez v1, :cond_1

    .line 80
    invoke-interface {p0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 82
    :cond_0
    invoke-virtual {p2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 83
    array-length v3, v0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->setCancelListener(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;)V

    .line 86
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 87
    return-void
.end method

.method public static requestDownload(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z
    .locals 5
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils;->download(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 48
    .local v2, "result":Z
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "result":Z
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 45
    :catch_0
    move-exception v3

    .line 46
    .local v3, "t":Ljava/lang/Throwable;
    :goto_1
    const/4 v2, 0x0

    .line 48
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 45
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static requestDownload(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/net/URL;)[B
    .locals 5
    .param p0, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils;->download(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_0

    .line 66
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v3

    .line 59
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 66
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 66
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 60
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method
