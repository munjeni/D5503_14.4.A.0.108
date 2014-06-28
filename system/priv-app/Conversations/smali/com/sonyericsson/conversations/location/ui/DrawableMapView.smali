.class public Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
.super Lcom/google/android/maps/MapView;
.source "DrawableMapView.java"


# static fields
.field public static final DOUBLE_TAP_INTERVAL:I = 0xfa

.field private static final GAP_POINT:Landroid/graphics/Point;

.field private static final INVALID_POINT:I = 0x7fffffff

.field public static final MODE_EDIT:I = 0x1

.field public static final MODE_EDIT_PREVIOUS:I = 0x2

.field public static final MODE_NORMAL:I


# instance fields
.field private mIsDrawable:Z

.field private mLastTouchTime:J

.field private mMode:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->GAP_POINT:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPoints:Ljava/util/List;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mLastTouchTime:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mIsDrawable:Z

    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;
    .param p3, "a"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPoints:Ljava/util/List;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mLastTouchTime:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mIsDrawable:Z

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPoints:Ljava/util/List;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mLastTouchTime:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mIsDrawable:Z

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->init()V

    .line 62
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mMode:I

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->draw(Landroid/graphics/Canvas;)V

    .line 150
    iget v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 151
    :cond_0
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPoints:Ljava/util/List;

    add-int/lit8 v1, v7, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    .line 153
    .local v8, "p1":Landroid/graphics/Point;
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPoints:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 154
    .local v9, "p2":Landroid/graphics/Point;
    sget-object v0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->GAP_POINT:Landroid/graphics/Point;

    if-eq v8, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->GAP_POINT:Landroid/graphics/Point;

    if-ne v9, v0, :cond_2

    .line 151
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 157
    :cond_2
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 158
    .local v6, "from":Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 159
    .local v10, "to":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget v2, v8, Landroid/graphics/Point;->x:I

    iget v3, v8, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-interface {v0, v1, v6}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget v2, v9, Landroid/graphics/Point;->x:I

    iget v3, v9, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-interface {v0, v1, v10}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 161
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 165
    .end local v6    # "from":Landroid/graphics/Point;
    .end local v7    # "i":I
    .end local v8    # "p1":Landroid/graphics/Point;
    .end local v9    # "p2":Landroid/graphics/Point;
    .end local v10    # "to":Landroid/graphics/Point;
    :cond_3
    return-void
.end method

.method public eraseManualDraw()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->invalidate()V

    .line 105
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mMode:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 117
    iget v7, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mMode:I

    if-eq v7, v6, :cond_0

    iget v7, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 118
    :cond_0
    iget-boolean v7, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mIsDrawable:Z

    if-eqz v7, :cond_2

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 121
    .local v2, "eventaction":I
    if-nez v2, :cond_1

    .line 122
    iget-object v7, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPoints:Ljava/util/List;

    sget-object v8, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->GAP_POINT:Landroid/graphics/Point;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v0, v7

    .line 125
    .local v0, "X":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v1, v7

    .line 126
    .local v1, "Y":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v7

    invoke-interface {v7, v0, v1}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    .line 127
    .local v3, "pt":Lcom/google/android/maps/GeoPoint;
    iget-object v7, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPoints:Ljava/util/List;

    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v9

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->invalidate()V

    .line 143
    .end local v0    # "X":I
    .end local v1    # "Y":I
    .end local v2    # "eventaction":I
    .end local v3    # "pt":Lcom/google/android/maps/GeoPoint;
    :cond_2
    :goto_0
    return v6

    .line 132
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 134
    .local v4, "thisTime":J
    iget-wide v6, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mLastTouchTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xfa

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/maps/MapController;->zoomInFixing(II)Z

    .line 137
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mLastTouchTime:J

    .line 143
    .end local v4    # "thisTime":J
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 140
    .restart local v4    # "thisTime":J
    :cond_5
    iput-wide v4, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mLastTouchTime:J

    goto :goto_1
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    return-void
.end method

.method public setDrawable(Z)V
    .locals 0
    .param p1, "isDrawable"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mIsDrawable:Z

    .line 113
    return-void
.end method

.method public setLine(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    return-void
.end method

.method public setMode(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "keepPreDraw"    # Z

    .prologue
    .line 95
    iput p1, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mMode:I

    .line 96
    if-nez p2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->invalidate()V

    .line 100
    :cond_0
    return-void
.end method
