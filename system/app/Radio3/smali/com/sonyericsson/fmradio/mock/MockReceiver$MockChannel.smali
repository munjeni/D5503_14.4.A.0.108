.class public Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;
.super Ljava/lang/Object;
.source "MockReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockChannel"
.end annotation


# instance fields
.field public rds:Ljava/lang/String;

.field public signalStrength:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "signalStrength"    # I
    .param p2, "rds"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;->rds:Ljava/lang/String;

    .line 103
    iput p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$MockChannel;->signalStrength:I

    .line 104
    return-void
.end method
