.class Lcom/sonymobile/china/photoeditor/crop/data/UriImage$1;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->prepareInputFile(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/data/UriImage;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/UriImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit p0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
