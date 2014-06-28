.class Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;
.super Ljava/lang/Object;
.source "RadioStationHandler.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/service/RadioStationHandler$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/service/RadioStationHandler;->removeStationRange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/fmradio/service/RadioStationHandler$Predicate",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

.field final synthetic val$a:I

.field final synthetic val$b:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/RadioStationHandler;II)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;->this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    iput p2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;->val$a:I

    iput p3, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;->val$b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Z
    .locals 4
    .param p1, "f"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    iget v2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;->val$a:I

    iget v3, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;->val$b:I

    if-ge v2, v3, :cond_1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;->val$a:I

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;->val$b:I

    if-ge v2, v3, :cond_0

    .line 215
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 213
    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;->val$a:I

    if-gt v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;->val$b:I

    if-ge v2, v3, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 209
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;->apply(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
