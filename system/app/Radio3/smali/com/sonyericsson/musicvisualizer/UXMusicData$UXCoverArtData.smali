.class public Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;
.super Ljava/lang/Object;
.source "UXMusicData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/musicvisualizer/UXMusicData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UXCoverArtData"
.end annotation


# instance fields
.field public coverArtByteArray:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/musicvisualizer/UXMusicData$UXCoverArtData;->coverArtByteArray:[B

    return-void
.end method
