.class Lcom/sonyericsson/fmradio/service/RadioStationHandler$5;
.super Ljava/lang/Object;
.source "RadioStationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/service/RadioStationHandler;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/RadioStationHandler;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$5;->this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$5;->this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStore:Lcom/sonyericsson/fmradio/station/RadioStore;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->access$000(Lcom/sonyericsson/fmradio/service/RadioStationHandler;)Lcom/sonyericsson/fmradio/station/RadioStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/station/RadioStore;->close()V

    .line 286
    return-void
.end method
