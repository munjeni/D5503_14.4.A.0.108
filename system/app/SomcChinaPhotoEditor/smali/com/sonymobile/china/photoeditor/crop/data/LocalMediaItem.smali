.class public abstract Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;
.super Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
.source "LocalMediaItem.java"


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public id:I

.field public latitude:D

.field public longitude:D

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V
    .locals 2
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "version"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;J)V

    .line 36
    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    .line 38
    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    .line 52
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getLatLong([D)V
    .locals 3
    .param p1, "latLong"    # [D

    .prologue
    .line 66
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->latitude:D

    aput-wide v1, p1, v0

    .line 67
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->longitude:D

    aput-wide v1, p1, v0

    .line 68
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method protected updateContent(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/sonymobile/china/photoeditor/crop/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaObject;->mDataVersion:J

    .line 80
    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
