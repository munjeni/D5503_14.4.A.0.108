.class public Lcom/sonymobile/china/collage/svg/SVGParserRules;
.super Ljava/lang/Object;
.source "SVGParserRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;
    }
.end annotation


# static fields
.field private static mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    .line 22
    sget-object v0, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;

    const-string v2, "#ff0000"

    const-string v3, "#ee0000"

    const-string v4, "#dd0000"

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;

    const-string v2, "#00ff00"

    const-string v3, "#00ee00"

    const-string v4, "#00dd00"

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;

    const-string v2, "#0000ff"

    const-string v3, "#0000ee"

    const-string v4, "#0000dd"

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;

    const-string v2, "#ffff00"

    const-string v3, "#eeee00"

    const-string v4, "#dddd00"

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;

    const-string v2, "#ff00ff"

    const-string v3, "#ee00ee"

    const-string v4, "#dd00dd"

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;

    const-string v2, "#00ffff"

    const-string v3, "#00eeee"

    const-string v4, "#00dddd"

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static getCrossIndex(Ljava/lang/String;)I
    .locals 2
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget-object v1, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 32
    sget-object v1, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;

    iget-object v1, v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;->mCrossColor:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    .end local v0    # "index":I
    :goto_1
    return v0

    .line 31
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getDeleteIndex(Ljava/lang/String;)I
    .locals 2
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget-object v1, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 41
    sget-object v1, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;

    iget-object v1, v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;->mDeleteColor:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    .end local v0    # "index":I
    :goto_1
    return v0

    .line 40
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getGridIndex(Ljava/lang/String;)I
    .locals 2
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget-object v1, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 50
    sget-object v1, Lcom/sonymobile/china/collage/svg/SVGParserRules;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;

    iget-object v1, v1, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;->mGridColor:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    .end local v0    # "index":I
    :goto_1
    return v0

    .line 49
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
