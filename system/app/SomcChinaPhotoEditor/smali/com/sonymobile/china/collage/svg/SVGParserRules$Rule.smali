.class Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;
.super Ljava/lang/Object;
.source "SVGParserRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/svg/SVGParserRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# instance fields
.field mCrossColor:Ljava/lang/String;

.field mDeleteColor:Ljava/lang/String;

.field mGridColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "gridColor"    # Ljava/lang/String;
    .param p2, "crossColor"    # Ljava/lang/String;
    .param p3, "deleteColor"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;->mGridColor:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;->mCrossColor:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/sonymobile/china/collage/svg/SVGParserRules$Rule;->mDeleteColor:Ljava/lang/String;

    .line 68
    return-void
.end method
