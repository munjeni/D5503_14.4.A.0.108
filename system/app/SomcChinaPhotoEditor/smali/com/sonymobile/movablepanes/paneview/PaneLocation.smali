.class public Lcom/sonymobile/movablepanes/paneview/PaneLocation;
.super Ljava/lang/Object;
.source "PaneLocation.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/util/Recyclable;


# static fields
.field private static mRecycledLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/movablepanes/paneview/PaneLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public containRegion:Landroid/graphics/Region;

.field public drawRect:Landroid/graphics/Rect;

.field public pane:I

.field public zOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->mRecycledLocations:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->containRegion:Landroid/graphics/Region;

    .line 70
    return-void
.end method

.method public static obtain()Lcom/sonymobile/movablepanes/paneview/PaneLocation;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->mRecycledLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    invoke-direct {v0}, Lcom/sonymobile/movablepanes/paneview/PaneLocation;-><init>()V

    .line 61
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->mRecycledLocations:Ljava/util/ArrayList;

    sget-object v1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->mRecycledLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    if-ne p0, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 103
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 104
    check-cast v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    .line 105
    .local v0, "other":Lcom/sonymobile/movablepanes/paneview/PaneLocation;
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    if-nez v3, :cond_4

    .line 106
    iget-object v3, v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_5

    move v1, v2

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_5
    iget v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    iget v4, v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 111
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 86
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->containRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    .line 88
    sget-object v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->mRecycledLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public set(Lcom/sonymobile/movablepanes/paneview/PaneLocation;)V
    .locals 2
    .param p1, "source"    # Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    .prologue
    .line 78
    iget v0, p1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    iput v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    .line 79
    iget v0, p1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->zOrder:I

    iput v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->zOrder:I

    .line 80
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->containRegion:Landroid/graphics/Region;

    iget-object v1, p1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->containRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 81
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pane "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
