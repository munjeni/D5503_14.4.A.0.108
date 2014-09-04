.class public Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathId"
.end annotation


# instance fields
.field public id:I

.field public path:Lcom/sonymobile/china/photoeditor/crop/data/Path;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/Path;I)V
    .locals 0
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;
    .param p2, "id"    # I

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->path:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .line 66
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->id:I

    .line 67
    return-void
.end method
