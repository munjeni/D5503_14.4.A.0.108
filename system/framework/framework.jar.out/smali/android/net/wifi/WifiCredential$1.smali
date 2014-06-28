.class final Landroid/net/wifi/WifiCredential$1;
.super Ljava/lang/Object;
.source "WifiCredential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiCredential;
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
        "Landroid/net/wifi/WifiCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiCredential;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 337
    new-instance v0, Landroid/net/wifi/WifiCredential;

    invoke-direct {v0}, Landroid/net/wifi/WifiCredential;-><init>()V

    .line 338
    .local v0, "cred":Landroid/net/wifi/WifiCredential;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setId(I)V

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setPriority(I)V

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setRealm(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setDomain(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setRoamingConsortium(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiCredential;->mPcsc:I

    .line 344
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v1, v0, Landroid/net/wifi/WifiCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiCredential;->setProfileName(Ljava/lang/String;)V

    .line 347
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiCredential;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiCredential;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 351
    new-array v0, p1, [Landroid/net/wifi/WifiCredential;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiCredential$1;->newArray(I)[Landroid/net/wifi/WifiCredential;

    move-result-object v0

    return-object v0
.end method
