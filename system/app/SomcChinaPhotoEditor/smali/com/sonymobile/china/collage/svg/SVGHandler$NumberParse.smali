.class Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
.super Ljava/lang/Object;
.source "SVGHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/svg/SVGHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberParse"
.end annotation


# instance fields
.field private nextCmd:I

.field private numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "nextCmd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput-object p1, p0, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;

    .line 779
    iput p2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->nextCmd:I

    .line 780
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getNextCmd()I
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->nextCmd:I

    return v0
.end method

.method public getNumber(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
