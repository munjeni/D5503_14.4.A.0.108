.class public Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;
.super Lcom/google/android/maps/MyLocationOverlay;
.source "CurrentLocationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay$CurrentLocationOverlayListener;
    }
.end annotation


# static fields
.field private static final PADDING_ACTIVE_ZOOM:I = 0x32

.field private static final TAG:Ljava/lang/String; = "LocationSharing"


# instance fields
.field private mCurrentLocationOverlayListener:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay$CurrentLocationOverlayListener;

.field private mCurrentPoint:Landroid/graphics/Point;

.field private mHeight:I

.field private mIsLocationChanged:Z

.field private mMarker:Landroid/graphics/Bitmap;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    .line 42
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mCurrentPoint:Landroid/graphics/Point;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mIsLocationChanged:Z

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020027

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mMarker:Landroid/graphics/Bitmap;

    .line 74
    return-void
.end method

.method private inZoomActiveArea(Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "currentPoint"    # Landroid/graphics/Point;

    .prologue
    const/16 v2, 0x32

    .line 104
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-le v0, v2, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mWidth:I

    add-int/lit8 v1, v1, -0x32

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mHeight:I

    add-int/lit8 v1, v1, -0x32

    if-ge v0, v1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected drawMyLocation(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Landroid/location/Location;Lcom/google/android/maps/GeoPoint;J)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "lastFix"    # Landroid/location/Location;
    .param p4, "myLocation"    # Lcom/google/android/maps/GeoPoint;
    .param p5, "when"    # J

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mIsLocationChanged:Z

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "LocationSharing"

    const-string v1, "drawMyLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mHeight:I

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mHeight:I

    .line 85
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mWidth:I

    .line 87
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mCurrentPoint:Landroid/graphics/Point;

    invoke-interface {v0, p4, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mMarker:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mCurrentPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mMarker:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mCurrentPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mMarker:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    :cond_1
    return-void
.end method

.method public notifyCurrentLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mCurrentLocationOverlayListener:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay$CurrentLocationOverlayListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mCurrentLocationOverlayListener:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay$CurrentLocationOverlayListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay$CurrentLocationOverlayListener;->onCurrentLocationChanged(Landroid/location/Location;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 95
    const-string v0, "LocationSharing"

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mCurrentPoint:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->inZoomActiveArea(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->notifyCurrentLocationChanged(Landroid/location/Location;)V

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mIsLocationChanged:Z

    .line 100
    invoke-super {p0, p1}, Lcom/google/android/maps/MyLocationOverlay;->onLocationChanged(Landroid/location/Location;)V

    .line 101
    return-void
.end method

.method public setCurrentLocationOverlayListener(Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay$CurrentLocationOverlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay$CurrentLocationOverlayListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay;->mCurrentLocationOverlayListener:Lcom/sonyericsson/conversations/location/ui/CurrentLocationOverlay$CurrentLocationOverlayListener;

    .line 114
    return-void
.end method
