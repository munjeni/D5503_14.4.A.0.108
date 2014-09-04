.class Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 682
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$1;

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->mHead:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .line 701
    return-void
.end method

.method public pop()Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->mHead:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .line 687
    .local v0, "tile":Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    if-eqz v0, :cond_0

    .line 688
    iget-object v1, v0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mNext:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->mHead:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .line 689
    :cond_0
    return-object v0
.end method

.method public push(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;)Z
    .locals 2
    .param p1, "tile"    # Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .prologue
    .line 693
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->mHead:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 694
    .local v0, "wasEmpty":Z
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->mHead:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    iput-object v1, p1, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mNext:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .line 695
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$TileQueue;->mHead:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    .line 696
    return v0

    .line 693
    .end local v0    # "wasEmpty":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
