.class Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
.super Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field mDecodedTile:Landroid/graphics/Bitmap;

.field mNext:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

.field mTileLevel:I

.field volatile mTileState:I

.field mX:I

.field mY:I

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;III)V
    .locals 1
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "level"    # I

    .prologue
    .line 623
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/UploadedTexture;-><init>()V

    .line 621
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    .line 624
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mX:I

    .line 625
    iput p3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mY:I

    .line 626
    iput p4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileLevel:I

    .line 627
    return-void
.end method


# virtual methods
.method decode()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 637
    const/16 v1, 0x100

    .line 638
    .local v1, "tileLength":I
    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileLevel:I

    shl-int v0, v2, v3

    .line 640
    .local v0, "borderLength":I
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mModel:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->access$400(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileLevel:I

    iget v5, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mX:I

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mY:I

    sub-int/2addr v6, v0

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 642
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getParentTile()Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    .locals 5

    .prologue
    .line 667
    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    iget v4, v4, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevelCount:I

    if-ne v3, v4, :cond_0

    .line 668
    const/4 v3, 0x0

    .line 672
    :goto_0
    return-object v3

    .line 669
    :cond_0
    const/16 v3, 0xfe

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    shl-int v0, v3, v4

    .line 670
    .local v0, "size":I
    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mX:I

    div-int/2addr v3, v0

    mul-int v1, v0, v3

    .line 671
    .local v1, "x":I
    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v2, v0, v3

    .line 672
    .local v2, "y":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    # invokes: Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->getTile(III)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;
    invoke-static {v3, v1, v2, v4}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->access$500(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;III)Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 631
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 632
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 652
    iget v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 653
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 654
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 655
    iput v2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileState:I

    .line 656
    return-object v0

    .line 652
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 677
    const-string v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mX:I

    div-int/lit16 v3, v3, 0xfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mY:I

    div-int/lit16 v3, v3, 0xfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevel:I
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->access$600(Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;

    iget v3, v3, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;->mLevelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 660
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mX:I

    .line 661
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mY:I

    .line 662
    iput p3, p0, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->mTileLevel:I

    .line 663
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Tile;->invalidateContent()V

    .line 664
    return-void
.end method
