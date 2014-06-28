.class Lcom/sonyericsson/fmradio/mock/MockReceiver$5;
.super Ljava/lang/Object;
.source "MockReceiver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;->scanHelper(I)V
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
.field final synthetic this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

.field final synthetic val$scanDirection:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;I)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iput p2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->val$scanDirection:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private freqToIndex(Ljava/lang/Integer;)I
    .locals 3
    .param p1, "frequency"    # Ljava/lang/Integer;

    .prologue
    .line 447
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1300(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1300(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private scanDistance(Ljava/lang/Integer;)I
    .locals 7
    .param p1, "fTarget"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    .line 428
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->freqToIndex(Ljava/lang/Integer;)I

    move-result v2

    .line 429
    .local v2, "iTarget":I
    iget-object v5, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFrequency:I
    invoke-static {v5}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$500(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->freqToIndex(Ljava/lang/Integer;)I

    move-result v0

    .line 430
    .local v0, "iCurrent":I
    iget-object v5, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;
    invoke-static {v5}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1300(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->freqToIndex(Ljava/lang/Integer;)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 433
    .local v4, "nTotal":I
    iget v5, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->val$scanDirection:I

    if-ne v5, v6, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 436
    .local v1, "iStart":I
    :goto_0
    iget v5, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->val$scanDirection:I

    if-ne v5, v6, :cond_1

    sub-int v3, v2, v1

    .line 439
    .local v3, "nSteps":I
    :goto_1
    rem-int v5, v3, v4

    add-int/2addr v5, v4

    rem-int/2addr v5, v4

    return v5

    .line 433
    .end local v1    # "iStart":I
    .end local v3    # "nSteps":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 436
    .restart local v1    # "iStart":I
    :cond_1
    sub-int v3, v1, v2

    goto :goto_1
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2
    .param p1, "f0"    # Ljava/lang/Integer;
    .param p2, "f1"    # Ljava/lang/Integer;

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->scanDistance(Ljava/lang/Integer;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->scanDistance(Ljava/lang/Integer;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 421
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/fmradio/mock/MockReceiver$5;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
