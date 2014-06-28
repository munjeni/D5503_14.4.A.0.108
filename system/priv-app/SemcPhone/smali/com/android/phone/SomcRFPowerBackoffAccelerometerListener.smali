.class public final Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;
.super Ljava/lang/Object;
.source "SomcRFPowerBackoffAccelerometerListener.java"


# static fields
.field private static sIsNoticed:Z


# instance fields
.field private mAccelerometerTriggerOn:Z

.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mRFPowerBackoffFacingDownsideLatitude:I

.field private mRFPowerBackoffFacingDownsideLongitude:I

.field private mRFPowerBackoffFacingUpsideLatitude:I

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mRFPowerBackoffFacingUpsideLatitude:I

    .line 41
    iput v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mRFPowerBackoffFacingDownsideLatitude:I

    .line 43
    iput v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mRFPowerBackoffFacingDownsideLongitude:I

    .line 76
    new-instance v0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener$1;-><init>(Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;)V

    iput-object v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 46
    iput-object p1, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mRFPowerBackoffFacingUpsideLatitude:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mRFPowerBackoffFacingDownsideLatitude:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mRFPowerBackoffFacingDownsideLongitude:I

    .line 55
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 56
    iget-object v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;DDD)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D

    .prologue
    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->setAccelerometerTrigger(DDD)V

    return-void
.end method

.method private setAccelerometerTrigger(DDD)V
    .locals 12
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 87
    sget-boolean v8, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v8, :cond_0

    .line 88
    const-string v8, "RFPowerBackoffAccelerometerListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setAccelerometerTrigger("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v0, p3

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p5

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const-wide/16 v8, 0x0

    cmpl-double v8, p1, v8

    if-eqz v8, :cond_1

    const-wide/16 v8, 0x0

    cmpl-double v8, p3, v8

    if-eqz v8, :cond_1

    const-wide/16 v8, 0x0

    cmpl-double v8, p5, v8

    if-nez v8, :cond_2

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-boolean v7, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mAccelerometerTriggerOn:Z

    .line 95
    .local v7, "triggerValue":Z
    div-double v8, p3, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L

    div-double v5, v8, v10

    .line 96
    .local v5, "lon":D
    mul-double v8, p1, p1

    mul-double v10, p3, p3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double v8, p5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L

    div-double v3, v8, v10

    .line 98
    .local v3, "lat":D
    iget v8, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mRFPowerBackoffFacingUpsideLatitude:I

    int-to-double v8, v8

    cmpl-double v8, v3, v8

    if-gtz v8, :cond_3

    iget v8, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mRFPowerBackoffFacingDownsideLongitude:I

    int-to-double v8, v8

    cmpg-double v8, v5, v8

    if-gez v8, :cond_6

    iget v8, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mRFPowerBackoffFacingDownsideLatitude:I

    int-to-double v8, v8

    cmpl-double v8, v3, v8

    if-lez v8, :cond_6

    const-wide/16 v8, 0x0

    cmpg-double v8, p1, v8

    if-gez v8, :cond_6

    :cond_3
    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mAccelerometerTriggerOn:Z

    .line 101
    sget-boolean v8, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v8, :cond_4

    .line 102
    const-string v8, "RFPowerBackoffAccelerometerListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lat="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  lon="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  sAccelerometerTriggerOn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mAccelerometerTriggerOn:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_4
    sget-boolean v8, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->sIsNoticed:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mAccelerometerTriggerOn:Z

    if-eq v7, v8, :cond_1

    .line 107
    :cond_5
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->sIsNoticed:Z

    .line 109
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.sonymobile.intent.action.RFPOWER_BACKOFF_STATE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "RFPOWER_BACKOFF_STATE"

    iget-boolean v9, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mAccelerometerTriggerOn:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    iget-object v8, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mContext:Landroid/content/Context;

    const-string v9, "com.sonymobile.phone.permission.RFPOWER_BACKOFF_STATE_CHANGED"

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method


# virtual methods
.method public enable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "RFPowerBackoffAccelerometerListener"

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

    iget-boolean v2, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mIsEnabled:Z

    if-nez v0, :cond_2

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mAccelerometerTriggerOn:Z

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->sIsNoticed:Z

    .line 67
    iget-object v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mIsEnabled:Z

    .line 73
    :cond_1
    :goto_0
    monitor-exit p0

    .line 74
    return-void

    .line 69
    :cond_2
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->mIsEnabled:Z

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
