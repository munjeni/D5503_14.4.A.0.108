.class public Lcom/sonyericsson/conversations/location/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final ENCODING:Ljava/lang/String; = "utf-8"

.field public static final GEO_FACTOR:D = 1000000.0

.field public static final GOOGLE_MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field public static final LATITUDE_NORTH_POLE:D = 90.0

.field public static final LATITUDE_SOUTH_POLE:D = -90.0

.field public static final LONGITUDE_EAST_180_DEGREE:D = 180.0

.field public static final LONGITUDE_WEST_180_DEGREE:D = -180.0

.field private static final TAG:Ljava/lang/String; = "LocationUtils"

.field private static final TWO_MINUTES:I = 0x1d4c0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustZoomOfMap(Lcom/google/android/maps/MapView;Ljava/util/ArrayList;)V
    .locals 12
    .param p0, "mapView"    # Lcom/google/android/maps/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/maps/MapView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/maps/GeoPoint;>;"
    const v7, 0x7fffffff

    .line 106
    .local v7, "minLat":I
    const/high16 v5, -0x80000000

    .line 107
    .local v5, "maxLat":I
    const v8, 0x7fffffff

    .line 108
    .local v8, "minLon":I
    const/high16 v6, -0x80000000

    .line 110
    .local v6, "maxLon":I
    if-nez p0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v4

    .line 116
    .local v4, "mapController":Lcom/google/android/maps/MapController;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/GeoPoint;

    .line 117
    .local v1, "item":Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    .line 118
    .local v2, "lat":I
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    .line 120
    .local v3, "lon":I
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 121
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 122
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 123
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 124
    goto :goto_1

    .line 126
    .end local v1    # "item":Lcom/google/android/maps/GeoPoint;
    .end local v2    # "lat":I
    .end local v3    # "lon":I
    :cond_1
    sub-int v9, v5, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v10, v6, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-virtual {v4, v9, v10}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    .line 127
    new-instance v9, Lcom/google/android/maps/GeoPoint;

    add-int v10, v5, v7

    div-int/lit8 v10, v10, 0x2

    add-int v11, v6, v8

    div-int/lit8 v11, v11, 0x2

    invoke-direct {v9, v10, v11}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-virtual {v4, v9}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0
.end method

.method public static generateLocationPicFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, "filename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 73
    .local v1, "file":Ljava/io/File;
    const-string v3, "\'location_\'yyyy\'-\'MM\'-\'dd\'_\'kkmm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    :try_start_0
    const-string v3, ".jpg"

    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 83
    const-string v3, "LocationUtils"

    const-string v4, "IOException when creating the file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static generateUrlPrefix(DD)Ljava/lang/String;
    .locals 6
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "url":Ljava/lang/String;
    const-wide v1, -0x3fa9800000000000L

    cmpl-double v1, p0, v1

    if-ltz v1, :cond_0

    const-wide v1, 0x4056800000000000L

    cmpg-double v1, p0, v1

    if-gtz v1, :cond_0

    const-wide v1, -0x3f99800000000000L

    cmpl-double v1, p2, v1

    if-ltz v1, :cond_0

    const-wide v1, 0x4066800000000000L

    cmpg-double v1, p2, v1

    if-gtz v1, :cond_0

    .line 98
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "http://maps.google.com/maps?f=q&geocode=&q=%.4f,%.4f&z="

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    return-object v0
.end method

.method public static getAddressFromLocation(DDI)Ljava/util/List;
    .locals 6
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "http://maps.google.com/maps/api/geocode/json?latlng=%f,%f&sensor=false"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "url":Ljava/lang/String;
    const-string v1, "LocationUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {v0, p4}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->getGeocodingResponse(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getAddressFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 314
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://maps.google.com/maps/api/geocode/json?address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sensor=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 321
    :goto_0
    if-nez v1, :cond_0

    .line 322
    const/4 v2, 0x0

    .line 325
    :goto_1
    return-object v2

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v2, "LocationUtils"

    const-string v3, "UnsupportedEncodingException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v0    # "e1":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v2, "LocationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->getGeocodingResponse(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method public static getGeoByAddress(Landroid/location/Address;)Lcom/google/android/maps/GeoPoint;
    .locals 9
    .param p0, "address"    # Landroid/location/Address;

    .prologue
    const-wide v7, 0x412e848000000000L

    .line 145
    const/4 v4, 0x0

    .line 147
    .local v4, "gp":Lcom/google/android/maps/GeoPoint;
    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v5

    mul-double v0, v5, v7

    .line 149
    .local v0, "geoLatitude":D
    invoke-virtual {p0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v5

    mul-double v2, v5, v7

    .line 150
    .local v2, "geoLongitude":D
    new-instance v4, Lcom/google/android/maps/GeoPoint;

    .end local v4    # "gp":Lcom/google/android/maps/GeoPoint;
    double-to-int v5, v0

    double-to-int v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 151
    .restart local v4    # "gp":Lcom/google/android/maps/GeoPoint;
    const-string v5, "LocationUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGeoByAddress "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "geoLatitude":D
    .end local v2    # "geoLongitude":D
    :cond_0
    return-object v4
.end method

.method public static getGeoByLocation(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;
    .locals 9
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    const-wide v7, 0x412e848000000000L

    .line 132
    const/4 v4, 0x0

    .line 134
    .local v4, "gp":Lcom/google/android/maps/GeoPoint;
    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    mul-double v0, v5, v7

    .line 136
    .local v0, "geoLatitude":D
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    mul-double v2, v5, v7

    .line 137
    .local v2, "geoLongitude":D
    new-instance v4, Lcom/google/android/maps/GeoPoint;

    .end local v4    # "gp":Lcom/google/android/maps/GeoPoint;
    double-to-int v5, v0

    double-to-int v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 138
    .restart local v4    # "gp":Lcom/google/android/maps/GeoPoint;
    const-string v5, "LocationUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGeoByLocation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "geoLatitude":D
    .end local v2    # "geoLongitude":D
    :cond_0
    return-object v4
.end method

.method private static getGeocodingResponse(Ljava/lang/String;I)Ljava/util/List;
    .locals 29
    .param p0, "request"    # Ljava/lang/String;
    .param p1, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    const-string v22, ""

    .line 219
    .local v22, "response":Ljava/lang/String;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v24, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 221
    .local v10, "client":Lorg/apache/http/client/HttpClient;
    const/4 v7, 0x0

    .line 222
    .local v7, "br":Ljava/io/BufferedReader;
    const/16 v16, 0x0

    .line 224
    .local v16, "iStreamReader":Ljava/io/InputStreamReader;
    if-eqz p0, :cond_0

    if-gtz p1, :cond_2

    .line 225
    :cond_0
    const/16 v24, 0x0

    .line 300
    .end local v24    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    :goto_0
    return-object v24

    .line 229
    .restart local v24    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_2
    :try_start_0
    new-instance v26, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-interface {v10, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 230
    .local v14, "hr":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 231
    .local v12, "entity":Lorg/apache/http/HttpEntity;
    new-instance v17, Ljava/io/InputStreamReader;

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v26

    const-string v27, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .end local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    .local v17, "iStreamReader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    .end local v7    # "br":Ljava/io/BufferedReader;
    .local v8, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v25, "sbBuilder":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 235
    .local v9, "buff":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 236
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 238
    .end local v9    # "buff":Ljava/lang/String;
    .end local v25    # "sbBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .line 239
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v14    # "hr":Lorg/apache/http/HttpResponse;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .local v11, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    :try_start_3
    const-string v26, "LocationUtils"

    const-string v27, "Http ClientProtocolException when get response"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    if-eqz v16, :cond_3

    .line 246
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 251
    .end local v11    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    .line 253
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 260
    :cond_4
    :goto_4
    const-string v26, "LocationUtils"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "response is : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/16 v23, 0x0

    .line 264
    .local v23, "responseArray":Lorg/json/JSONArray;
    :try_start_6
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 265
    .local v20, "jsonObject":Lorg/json/JSONObject;
    const-string v26, "results"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v23

    .line 271
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_1

    move/from16 v0, p1

    if-ge v15, v0, :cond_1

    .line 272
    new-instance v6, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 274
    .local v6, "addy":Landroid/location/Address;
    :try_start_7
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 277
    .local v19, "jsl":Lorg/json/JSONObject;
    const-string v26, "formatted_address"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "address":Ljava/lang/String;
    const-string v26, ","

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 279
    const-string v26, ","

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "addressLineArray":[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_6
    array-length v0, v5

    move/from16 v26, v0

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    .line 282
    aget-object v4, v5, v18

    .line 283
    .local v4, "addressLine":Ljava/lang/String;
    move/from16 v0, v18

    invoke-virtual {v6, v0, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    .line 281
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 237
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "addressLine":Ljava/lang/String;
    .end local v5    # "addressLineArray":[Ljava/lang/String;
    .end local v6    # "addy":Landroid/location/Address;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v15    # "i":I
    .end local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    .end local v18    # "j":I
    .end local v19    # "jsl":Lorg/json/JSONObject;
    .end local v20    # "jsonObject":Lorg/json/JSONObject;
    .end local v23    # "responseArray":Lorg/json/JSONArray;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "buff":Ljava/lang/String;
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v14    # "hr":Lorg/apache/http/HttpResponse;
    .restart local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v25    # "sbBuilder":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v22

    .line 244
    if-eqz v17, :cond_6

    .line 246
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 251
    :cond_6
    :goto_7
    if-eqz v8, :cond_7

    .line 253
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    :cond_7
    :goto_8
    move-object/from16 v16, v17

    .end local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .line 258
    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 240
    .end local v9    # "buff":Ljava/lang/String;
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v14    # "hr":Lorg/apache/http/HttpResponse;
    .end local v25    # "sbBuilder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v11

    .line 241
    .local v11, "e":Ljava/io/IOException;
    :goto_9
    :try_start_b
    const-string v26, "LocationUtils"

    const-string v27, "Http IOException when get response"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 244
    if-eqz v16, :cond_8

    .line 246
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 251
    :cond_8
    :goto_a
    if-eqz v7, :cond_4

    .line 253
    :try_start_d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_4

    .line 254
    :catch_2
    move-exception v11

    .line 255
    :goto_b
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 244
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v26

    :goto_c
    if-eqz v16, :cond_9

    .line 246
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 251
    :cond_9
    :goto_d
    if-eqz v7, :cond_a

    .line 253
    :try_start_f
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 244
    :cond_a
    :goto_e
    throw v26

    .line 266
    .restart local v23    # "responseArray":Lorg/json/JSONArray;
    :catch_3
    move-exception v11

    .line 267
    .local v11, "e":Lorg/json/JSONException;
    const-string v26, "LocationUtils"

    const-string v27, "JSONException when parse resluts"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 288
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v3    # "address":Ljava/lang/String;
    .restart local v6    # "addy":Landroid/location/Address;
    .restart local v15    # "i":I
    .restart local v19    # "jsl":Lorg/json/JSONObject;
    .restart local v20    # "jsonObject":Lorg/json/JSONObject;
    :cond_b
    :try_start_10
    const-string v26, "geometry"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 289
    .local v13, "geometry":Lorg/json/JSONObject;
    const-string v26, "location"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 290
    .local v21, "location":Lorg/json/JSONObject;
    const-string v26, "lat"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1}, Landroid/location/Address;->setLatitude(D)V

    .line 291
    const-string v26, "lng"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1}, Landroid/location/Address;->setLongitude(D)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_4

    .line 298
    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v3    # "address":Ljava/lang/String;
    .end local v13    # "geometry":Lorg/json/JSONObject;
    .end local v19    # "jsl":Lorg/json/JSONObject;
    .end local v21    # "location":Lorg/json/JSONObject;
    :goto_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 293
    :catch_4
    move-exception v11

    .line 294
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v26, "LocationUtils"

    const-string v27, "JSONException when parse formatted_address"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f

    .line 247
    .end local v6    # "addy":Landroid/location/Address;
    .end local v11    # "e":Lorg/json/JSONException;
    .end local v15    # "i":I
    .end local v20    # "jsonObject":Lorg/json/JSONObject;
    .end local v23    # "responseArray":Lorg/json/JSONArray;
    :catch_5
    move-exception v11

    .line 248
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 254
    .end local v11    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v11

    .line 255
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 247
    .local v11, "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_7
    move-exception v11

    .line 248
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 254
    .end local v11    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v11

    goto :goto_b

    .line 247
    .restart local v11    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v11

    .line 248
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 247
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "buff":Ljava/lang/String;
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v14    # "hr":Lorg/apache/http/HttpResponse;
    .restart local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v25    # "sbBuilder":Ljava/lang/StringBuilder;
    :catch_a
    move-exception v11

    .line 248
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 254
    .end local v11    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v11

    .line 255
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 244
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v9    # "buff":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v25    # "sbBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v26

    move-object/from16 v16, v17

    .end local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    goto :goto_c

    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v26

    move-object/from16 v16, v17

    .end local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .line 240
    .end local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_9

    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_9

    .line 238
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v14    # "hr":Lorg/apache/http/HttpResponse;
    :catch_e
    move-exception v11

    goto/16 :goto_2

    .end local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v14    # "hr":Lorg/apache/http/HttpResponse;
    .restart local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    :catch_f
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "iStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "iStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_2
.end method

.method public static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 164
    const/4 v10, 0x1

    .line 203
    :goto_0
    return v10

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 169
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 170
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 171
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 176
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 177
    const/4 v10, 0x1

    goto :goto_0

    .line 169
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 170
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 171
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 180
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 181
    const/4 v10, 0x0

    goto :goto_0

    .line 185
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 186
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 187
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 188
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 191
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 196
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    .line 197
    const/4 v10, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 187
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 188
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 198
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 199
    const/4 v10, 0x1

    goto :goto_0

    .line 200
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 201
    const/4 v10, 0x1

    goto :goto_0

    .line 203
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static isGoogleMapsAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 330
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.android.apps.maps"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 333
    const/4 v2, 0x1

    .line 338
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "provider1"    # Ljava/lang/String;
    .param p1, "provider2"    # Ljava/lang/String;

    .prologue
    .line 208
    if-nez p0, :cond_1

    .line 209
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSdCardMounted()Z
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
