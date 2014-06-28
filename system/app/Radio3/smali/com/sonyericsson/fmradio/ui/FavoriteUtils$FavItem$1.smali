.class final Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem$1;
.super Ljava/lang/Object;
.source "FavoriteUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 163
    new-instance v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;-><init>(Landroid/os/Parcel;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 167
    new-array v0, p1, [Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem$1;->newArray(I)[Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    move-result-object v0

    return-object v0
.end method
