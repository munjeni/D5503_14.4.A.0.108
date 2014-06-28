.class Lcom/sonyericsson/fmradio/mock/MockReceiver$4;
.super Ljava/lang/Object;
.source "MockReceiver.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/mock/MockReceiver$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;->getValidScanTargets()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/fmradio/mock/MockReceiver$Predicate",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$4;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "i"    # Ljava/lang/Integer;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$4;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mChannels:Ljava/util/Map;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$1200(Lcom/sonyericsson/fmradio/mock/MockReceiver;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;

    iget v0, v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;->signalStrength:I

    iget-object v1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$4;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    # getter for: Lcom/sonyericsson/fmradio/mock/MockReceiver;->mTunerThreshold:I
    invoke-static {v1}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->access$900(Lcom/sonyericsson/fmradio/mock/MockReceiver;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 386
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/mock/MockReceiver$4;->apply(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
