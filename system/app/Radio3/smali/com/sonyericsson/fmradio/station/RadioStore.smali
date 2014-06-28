.class public interface abstract Lcom/sonyericsson/fmradio/station/RadioStore;
.super Ljava/lang/Object;
.source "RadioStore.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract loadFrequency()I
.end method

.method public abstract loadRegion()I
.end method

.method public abstract readFavorites()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readStations()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveFrequency(I)V
.end method

.method public abstract saveRegion(I)V
.end method

.method public abstract writeFavorites(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract writeStations(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;)V"
        }
    .end annotation
.end method
