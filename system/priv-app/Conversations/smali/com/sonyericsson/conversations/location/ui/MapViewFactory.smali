.class public final Lcom/sonyericsson/conversations/location/ui/MapViewFactory;
.super Ljava/lang/Object;
.source "MapViewFactory.java"


# static fields
.field private static final KEY_FOR_TEST:Ljava/lang/String; = "0oFcQXZY6qIB8UxzDpxOsXbZtiDZn9OJCndSu6g"

.field private static final TAG:Ljava/lang/String; = "MapViewFactory"

.field private static mIsForTest:Z

.field private static mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/conversations/location/ui/MapViewFactory;->mIsForTest:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static createMapView(Landroid/content/Context;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "view":Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    sget-boolean v2, Lcom/sonyericsson/conversations/location/ui/MapViewFactory;->mIsForTest:Z

    if-eqz v2, :cond_1

    const-string v0, "0oFcQXZY6qIB8UxzDpxOsXbZtiDZn9OJCndSu6g"

    .line 40
    .local v0, "apiKey":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    const-string v2, "MapViewFactory"

    const-string v3, "Get the key!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v1, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    .end local v1    # "view":Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .restart local v1    # "view":Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    :cond_0
    sput-object v1, Lcom/sonyericsson/conversations/location/ui/MapViewFactory;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    .line 45
    return-object v1

    .line 39
    .end local v0    # "apiKey":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMapView()Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/sonyericsson/conversations/location/ui/MapViewFactory;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    return-object v0
.end method

.method public static setIsTestMapView(Z)V
    .locals 0
    .param p0, "isForTest"    # Z

    .prologue
    .line 50
    sput-boolean p0, Lcom/sonyericsson/conversations/location/ui/MapViewFactory;->mIsForTest:Z

    .line 51
    return-void
.end method
