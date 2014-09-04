.class public Lcom/sonymobile/china/collage/utils/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SHAKE_THRESHOLD:I = 0x7d0

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_INTERVAL:I = 0x64


# instance fields
.field private mLastUpdateTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/china/collage/utils/ShakeDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mListeners:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 109
    iget-object v2, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;

    .line 111
    .local v1, "listener":Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;
    sget-object v2, Lcom/sonymobile/china/collage/utils/ShakeDetector;->TAG:Ljava/lang/String;

    const-string v3, "listener.onShake();"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-interface {v1}, Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;->onShake()V

    goto :goto_0

    .line 115
    .end local v1    # "listener":Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 121
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 86
    .local v0, "cur":J
    iget-wide v11, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mLastUpdateTime:J

    sub-long v6, v0, v11

    .line 87
    .local v6, "diff":J
    const-wide/16 v11, 0x64

    cmp-long v11, v6, v11

    if-gez v11, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iput-wide v0, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mLastUpdateTime:J

    .line 91
    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v8, v11, v12

    .line 92
    .local v8, "x":F
    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v9, v11, v12

    .line 93
    .local v9, "y":F
    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v10, v11, v12

    .line 94
    .local v10, "z":F
    iget v11, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mLastX:F

    sub-float v3, v8, v11

    .line 95
    .local v3, "deltaX":F
    iget v11, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mLastY:F

    sub-float v4, v9, v11

    .line 96
    .local v4, "deltaY":F
    iget v11, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mLastZ:F

    sub-float v5, v10, v11

    .line 97
    .local v5, "deltaZ":F
    iput v8, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mLastX:F

    .line 98
    iput v9, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mLastY:F

    .line 99
    iput v10, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mLastZ:F

    .line 100
    mul-float v11, v3, v3

    mul-float v12, v4, v4

    add-float/2addr v11, v12

    mul-float v12, v5, v5

    add-float/2addr v11, v12

    invoke-static {v11}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v11

    long-to-float v12, v6

    div-float/2addr v11, v12

    const v12, 0x461c4000

    mul-float v2, v11, v12

    .line 102
    .local v2, "delta":F
    const/high16 v11, 0x44fa0000

    cmpl-float v11, v2, v11

    if-lez v11, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/sonymobile/china/collage/utils/ShakeDetector;->notifyListeners()V

    goto :goto_0
.end method

.method public registerOnShakeListener(Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 52
    iget-object v2, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_1

    .line 53
    sget-object v2, Lcom/sonymobile/china/collage/utils/ShakeDetector;->TAG:Ljava/lang/String;

    const-string v3, "mSensorManager == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 57
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_2

    .line 58
    sget-object v2, Lcom/sonymobile/china/collage/utils/ShakeDetector;->TAG:Ljava/lang/String;

    const-string v3, "fail to retrieve sensor from mSensorManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 63
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 64
    sget-object v2, Lcom/sonymobile/china/collage/utils/ShakeDetector;->TAG:Ljava/lang/String;

    const-string v3, "fail to registerListener in mSensorManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 73
    :cond_0
    return-void
.end method

.method public unregisterOnShakeListener(Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/ShakeDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method
