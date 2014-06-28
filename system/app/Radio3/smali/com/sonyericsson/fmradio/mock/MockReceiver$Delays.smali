.class Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;
.super Ljava/lang/Object;
.source "MockReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delays"
.end annotation


# instance fields
.field public fullScan:I

.field public rds:I

.field public scan:I

.field public signalStrength:I

.field public startup:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "fullScan"    # I
    .param p2, "scan"    # I
    .param p3, "startup"    # I
    .param p4, "rds"    # I
    .param p5, "signalStrength"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->fullScan:I

    .line 89
    iput p2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->scan:I

    .line 90
    iput p3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->startup:I

    .line 91
    iput p4, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->rds:I

    .line 92
    iput p5, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;->signalStrength:I

    .line 93
    return-void
.end method
