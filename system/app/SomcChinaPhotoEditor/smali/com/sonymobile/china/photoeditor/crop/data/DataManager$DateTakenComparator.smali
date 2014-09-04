.class Lcom/sonymobile/china/photoeditor/crop/data/DataManager$DateTakenComparator;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTakenComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/DataManager$1;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$DateTakenComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;)I
    .locals 4
    .param p1, "item1"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;
    .param p2, "item2"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$DateTakenComparator;->compare(Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;)I

    move-result v0

    return v0
.end method
