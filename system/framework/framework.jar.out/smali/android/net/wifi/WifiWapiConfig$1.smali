.class final Landroid/net/wifi/WifiWapiConfig$1;
.super Ljava/lang/Object;
.source "WifiWapiConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWapiConfig;
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
        "Landroid/net/wifi/WifiWapiConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiWapiConfig;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 103
    new-instance v4, Landroid/net/wifi/WifiWapiConfig;

    invoke-direct {v4}, Landroid/net/wifi/WifiWapiConfig;-><init>()V

    .line 104
    .local v4, "wapiConfig":Landroid/net/wifi/WifiWapiConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/net/wifi/WifiWapiConfig;->psk:Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWapiConfig;->access$002(Landroid/net/wifi/WifiWapiConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    # setter for: Landroid/net/wifi/WifiWapiConfig;->pskType:I
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWapiConfig;->access$102(Landroid/net/wifi/WifiWapiConfig;I)I

    .line 112
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWapiConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiWapiConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiWapiConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 116
    new-array v0, p1, [Landroid/net/wifi/WifiWapiConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWapiConfig$1;->newArray(I)[Landroid/net/wifi/WifiWapiConfig;

    move-result-object v0

    return-object v0
.end method
