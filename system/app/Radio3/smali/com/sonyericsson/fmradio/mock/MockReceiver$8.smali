.class Lcom/sonyericsson/fmradio/mock/MockReceiver$8;
.super Ljava/lang/Object;
.source "MockReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;->stopScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

.field final synthetic val$c:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/mock/MockReceiver;Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$8;->this$0:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$8;->val$c:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$8;->val$c:Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$Cancellable;->cancel()V

    .line 575
    return-void
.end method
