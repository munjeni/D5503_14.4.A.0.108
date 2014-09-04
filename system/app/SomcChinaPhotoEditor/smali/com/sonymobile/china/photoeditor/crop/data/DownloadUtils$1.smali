.class final Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils$1;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils;->dump(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 77
    return-void
.end method
