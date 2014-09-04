.class Lcom/sonymobile/china/collage/svg/SVGHandler$1;
.super Ljava/lang/Object;
.source "SVGHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/collage/svg/SVGHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/china/collage/ImageElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/svg/SVGHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/svg/SVGHandler;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/sonymobile/china/collage/svg/SVGHandler$1;->this$0:Lcom/sonymobile/china/collage/svg/SVGHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/china/collage/ImageElement;Lcom/sonymobile/china/collage/ImageElement;)I
    .locals 2
    .param p1, "lhs"    # Lcom/sonymobile/china/collage/ImageElement;
    .param p2, "rhs"    # Lcom/sonymobile/china/collage/ImageElement;

    .prologue
    .line 325
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 328
    const/4 v0, -0x1

    goto :goto_0

    .line 330
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 321
    check-cast p1, Lcom/sonymobile/china/collage/ImageElement;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/china/collage/ImageElement;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/collage/svg/SVGHandler$1;->compare(Lcom/sonymobile/china/collage/ImageElement;Lcom/sonymobile/china/collage/ImageElement;)I

    move-result v0

    return v0
.end method
