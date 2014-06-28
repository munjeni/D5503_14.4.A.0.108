.class public Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;
.super Lcom/google/android/maps/OverlayItem;
.source "AddressMarkOverlayItem.java"


# instance fields
.field private mIsSelected:Z

.field private mLocationAddress:Ljava/lang/String;

.field private mLocationName:Ljava/lang/String;

.field private mLocationUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getLocationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->mLocationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->mLocationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->mLocationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->mIsSelected:Z

    return v0
.end method

.method public setLocationAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLocationAddress"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->mLocationAddress:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLocationName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->mLocationName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setLocationUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->mLocationUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlayItem;->mIsSelected:Z

    .line 67
    return-void
.end method
