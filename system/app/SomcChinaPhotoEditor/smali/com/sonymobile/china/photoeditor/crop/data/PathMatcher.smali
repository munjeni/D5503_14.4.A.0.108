.class public Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;
.super Ljava/lang/Object;
.source "PathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$1;,
        Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;
    }
.end annotation


# static fields
.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private mRoot:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$1;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->mRoot:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;

    .line 30
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$1;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->mRoot:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;

    .line 31
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "kind"    # I

    .prologue
    .line 34
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "segments":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->mRoot:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;

    .line 36
    .local v0, "current":Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 37
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;->addChild(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;

    move-result-object v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;->setKind(I)V

    .line 40
    return-void
.end method

.method public getIntVar(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLongVar(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVar(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public match(Lcom/sonymobile/china/photoeditor/crop/data/Path;)I
    .locals 6
    .param p1, "path"    # Lcom/sonymobile/china/photoeditor/crop/data/Path;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/crop/data/Path;->split()[Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "segments":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->mRoot:Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;

    .line 46
    .local v0, "current":Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 47
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;->getChild(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;

    move-result-object v2

    .line 48
    .local v2, "next":Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;
    if-nez v2, :cond_0

    .line 49
    const-string v4, "*"

    invoke-virtual {v0, v4}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;->getChild(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher;->mVariables:Ljava/util/ArrayList;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    move-object v0, v2

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v4, -0x1

    .line 58
    .end local v2    # "next":Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;
    :goto_1
    return v4

    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/PathMatcher$Node;->getKind()I

    move-result v4

    goto :goto_1
.end method
