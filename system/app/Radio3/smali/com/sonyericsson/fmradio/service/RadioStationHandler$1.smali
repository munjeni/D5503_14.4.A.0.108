.class Lcom/sonyericsson/fmradio/service/RadioStationHandler$1;
.super Ljava/lang/Object;
.source "RadioStationHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/service/RadioStationHandler;->findClosestStation(I)Ljava/lang/Integer;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

.field final synthetic val$frequency:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/RadioStationHandler;I)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$1;->this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    iput p2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$1;->val$frequency:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 3
    .param p1, "f0"    # Ljava/lang/Integer;
    .param p2, "f1"    # Ljava/lang/Integer;

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$1;->val$frequency:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$1;->val$frequency:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/fmradio/service/RadioStationHandler$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
