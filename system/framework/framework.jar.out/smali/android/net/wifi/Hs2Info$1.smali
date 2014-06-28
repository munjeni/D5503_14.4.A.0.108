.class final Landroid/net/wifi/Hs2Info$1;
.super Ljava/lang/Object;
.source "Hs2Info.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/Hs2Info;
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
        "Landroid/net/wifi/Hs2Info;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/Hs2Info;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 105
    new-instance v0, Landroid/net/wifi/Hs2Info;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/Hs2Info;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/net/wifi/Hs2Info$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/Hs2Info;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/Hs2Info;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 109
    new-array v0, p1, [Landroid/net/wifi/Hs2Info;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/net/wifi/Hs2Info$1;->newArray(I)[Landroid/net/wifi/Hs2Info;

    move-result-object v0

    return-object v0
.end method
