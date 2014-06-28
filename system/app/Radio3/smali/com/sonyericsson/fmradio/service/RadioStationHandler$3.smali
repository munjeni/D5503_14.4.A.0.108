.class Lcom/sonyericsson/fmradio/service/RadioStationHandler$3;
.super Ljava/lang/Object;
.source "RadioStationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/service/RadioStationHandler;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

.field final synthetic val$favoriteSnapshot:Ljava/util/Map;

.field final synthetic val$stationSnapshot:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/RadioStationHandler;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$3;->this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$3;->val$stationSnapshot:Ljava/util/Map;

    iput-object p3, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$3;->val$favoriteSnapshot:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$3;->this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStore:Lcom/sonyericsson/fmradio/station/RadioStore;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->access$000(Lcom/sonyericsson/fmradio/service/RadioStationHandler;)Lcom/sonyericsson/fmradio/station/RadioStore;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$3;->val$stationSnapshot:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/station/RadioStore;->writeStations(Ljava/util/Map;)V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$3;->this$0:Lcom/sonyericsson/fmradio/service/RadioStationHandler;

    # getter for: Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStore:Lcom/sonyericsson/fmradio/station/RadioStore;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->access$000(Lcom/sonyericsson/fmradio/service/RadioStationHandler;)Lcom/sonyericsson/fmradio/station/RadioStore;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$3;->val$favoriteSnapshot:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/sonyericsson/fmradio/station/RadioStore;->writeFavorites(Ljava/util/Map;)V

    .line 277
    return-void
.end method
