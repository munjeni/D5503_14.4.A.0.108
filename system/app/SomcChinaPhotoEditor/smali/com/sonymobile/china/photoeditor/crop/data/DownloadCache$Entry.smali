.class public Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public cacheFile:Ljava/io/File;

.field protected mId:J

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;JLjava/io/File;)V
    .locals 1
    .param p2, "id"    # J
    .param p4, "cacheFile"    # Ljava/io/File;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-wide p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->mId:J

    .line 345
    invoke-static {p4}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    .line 346
    return-void
.end method


# virtual methods
.method public associateWith(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache$Entry;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->mAssociateMap:Ljava/util/WeakHashMap;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;->access$200(Lcom/sonymobile/china/photoeditor/crop/data/DownloadCache;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-void
.end method
