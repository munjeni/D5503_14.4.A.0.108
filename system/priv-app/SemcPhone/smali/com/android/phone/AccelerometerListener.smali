.class public final Lcom/android/phone/AccelerometerListener;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AccelerometerListener$OrientationListener;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mIsEnabled:Z

.field private mListener:Lcom/android/phone/AccelerometerListener$OrientationListener;

.field private mOrientation:I

.field private mPendingOrientation:I

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/phone/AccelerometerListener$OrientationListener;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/android/phone/AccelerometerListener$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AccelerometerListener$1;-><init>(Lcom/android/phone/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/phone/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 149
    new-instance v0, Lcom/android/phone/AccelerometerListener$2;

    invoke-direct {v0, p0}, Lcom/android/phone/AccelerometerListener$2;-><init>(Lcom/android/phone/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/phone/AccelerometerListener;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p2, p0, Lcom/android/phone/AccelerometerListener;->mListener:Lcom/android/phone/AccelerometerListener$OrientationListener;

    .line 73
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 74
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AccelerometerListener;DDD)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/AccelerometerListener;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/android/phone/AccelerometerListener;->onSensorEvent(DDD)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/AccelerometerListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AccelerometerListener;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/phone/AccelerometerListener;->mOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/AccelerometerListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/AccelerometerListener;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/phone/AccelerometerListener;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/AccelerometerListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AccelerometerListener;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/AccelerometerListener;)Lcom/android/phone/AccelerometerListener$OrientationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AccelerometerListener;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener;->mListener:Lcom/android/phone/AccelerometerListener$OrientationListener;

    return-object v0
.end method

.method private onSensorEvent(DDD)V
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 126
    cmpl-double v5, p1, v6

    if-eqz v5, :cond_0

    cmpl-double v5, p3, v6

    if-eqz v5, :cond_0

    cmpl-double v5, p5, v6

    if-nez v5, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    mul-double v5, p1, p1

    mul-double v7, p3, p3

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 131
    .local v3, "xy":D
    invoke-static {v3, v4, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 133
    .local v0, "angle":D
    const-wide v5, 0x4066800000000000L

    mul-double/2addr v5, v0

    const-wide v7, 0x400921fb54442d18L

    div-double v0, v5, v7

    .line 134
    const-wide/high16 v5, 0x4049000000000000L

    cmpl-double v5, v0, v5

    if-lez v5, :cond_2

    const/4 v2, 0x1

    .line 136
    .local v2, "orientation":I
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/phone/AccelerometerListener;->setOrientation(I)V

    goto :goto_0

    .line 134
    .end local v2    # "orientation":I
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private setOrientation(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget v2, p0, Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I

    if-ne v2, p1, :cond_0

    .line 97
    monitor-exit p0

    .line 119
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/android/phone/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget v2, p0, Lcom/android/phone/AccelerometerListener;->mOrientation:I

    if-eq v2, p1, :cond_2

    .line 108
    iput p1, p0, Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I

    .line 109
    iget-object v2, p0, Lcom/android/phone/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 111
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/16 v0, 0x64

    .line 113
    .local v0, "delay":I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/AccelerometerListener;->mHandler:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 118
    .end local v0    # "delay":I
    .end local v1    # "m":Landroid/os/Message;
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 111
    .restart local v1    # "m":Landroid/os/Message;
    :cond_1
    const/16 v0, 0x1f4

    goto :goto_1

    .line 116
    .end local v1    # "m":Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public enable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccelerometerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/AccelerometerListener;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    monitor-enter p0

    .line 80
    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/AccelerometerListener;->mIsEnabled:Z

    if-nez v0, :cond_2

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/AccelerometerListener;->mOrientation:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I

    .line 83
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/AccelerometerListener;->mIsEnabled:Z

    .line 90
    :cond_1
    :goto_0
    monitor-exit p0

    .line 91
    return-void

    .line 85
    :cond_2
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/AccelerometerListener;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/AccelerometerListener;->mIsEnabled:Z

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
