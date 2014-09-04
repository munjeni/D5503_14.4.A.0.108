.class public Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils$NameComparator;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;)I
    .locals 3
    .param p1, "set1"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .param p2, "set2"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 61
    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getPath()Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->getPath()Lcom/sonymobile/china/photoeditor/crop/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/crop/util/MediaSetUtils$NameComparator;->compare(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;)I

    move-result v0

    return v0
.end method
