.class Lcom/sonymobile/china/photoeditor/crop/data/LocalSource$IdComparator;
.super Ljava/lang/Object;
.source "LocalSource.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/LocalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/LocalSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/LocalSource$1;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource$IdComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;)I
    .locals 5
    .param p1, "p1"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;
    .param p2, "p2"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;

    .prologue
    .line 266
    iget-object v4, p1, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->path:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "s1":Ljava/lang/String;
    iget-object v4, p2, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;->path:Lcom/sonymobile/china/photoeditor/crop/data/Path;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "s2":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 269
    .local v0, "len1":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 270
    .local v1, "len2":I
    if-ge v0, v1, :cond_0

    .line 271
    const/4 v4, -0x1

    .line 275
    :goto_0
    return v4

    .line 272
    :cond_0
    if-le v0, v1, :cond_1

    .line 273
    const/4 v4, 0x1

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 261
    check-cast p1, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/data/LocalSource$IdComparator;->compare(Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;Lcom/sonymobile/china/photoeditor/crop/data/MediaSource$PathId;)I

    move-result v0

    return v0
.end method
