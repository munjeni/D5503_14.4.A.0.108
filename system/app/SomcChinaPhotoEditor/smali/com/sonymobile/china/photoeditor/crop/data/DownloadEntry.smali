.class public Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;
.super Lcom/sonymobile/china/photoeditor/crop/common/Entry;
.source "DownloadEntry.java"


# annotations
.annotation runtime Lcom/sonymobile/china/photoeditor/crop/common/Entry$Table;
    value = "download"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry$Columns;
    }
.end annotation


# static fields
.field public static final SCHEMA:Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;


# instance fields
.field public contentSize:J
    .annotation runtime Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;
        value = "_size"
    .end annotation
.end field

.field public contentUrl:Ljava/lang/String;
    .annotation runtime Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;
        value = "content_url"
    .end annotation
.end field

.field public eTag:Ljava/lang/String;
    .annotation runtime Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;
        value = "etag"
    .end annotation
.end field

.field public hashCode:J
    .annotation runtime Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;
        indexed = true
        value = "hash_code"
    .end annotation
.end field

.field public lastAccessTime:J
    .annotation runtime Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;
        indexed = true
        value = "last_access"
    .end annotation
.end field

.field public lastUpdatedTime:J
    .annotation runtime Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;
        value = "last_updated"
    .end annotation
.end field

.field public path:Ljava/lang/String;
    .annotation runtime Lcom/sonymobile/china/photoeditor/crop/common/Entry$Column;
        value = "_data"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;

    const-class v1, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->SCHEMA:Lcom/sonymobile/china/photoeditor/crop/common/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/common/Entry;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hash_code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->hashCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->contentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->contentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "etag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->eTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "last_access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->lastAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "last_updated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->lastUpdatedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DownloadEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
