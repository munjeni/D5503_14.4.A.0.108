.class public Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field final mGpsOnColor:I

.field final mGpsOnColorThin:I

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLevelBottom:I

.field mLevelOffset:I

.field mLevelTop:I

.field mLineWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field final mScreenOnColor:I

.field final mScreenOnColorThin:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field mTotalDurationString:Ljava/lang/String;

.field mTotalDurationStringWidth:I

.field final mWakeLockColor:I

.field final mWakeLockColorThin:I

.field mWakeLockLabel:Ljava/lang/String;

.field mWakeLockOffset:I

.field final mWakeLockPaint:Landroid/graphics/Paint;

.field final mWakeLockPath:Landroid/graphics/Path;

.field final mWifiRunningColor:I

.field final mWifiRunningColorThin:I

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 193
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 121
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 122
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 123
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 125
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    .line 126
    new-instance v21, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct/range {v21 .. v21}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 127
    new-instance v21, Landroid/text/TextPaint;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 129
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 130
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 131
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 132
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 133
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 134
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 135
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 136
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 137
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 196
    .local v14, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const v22, 0x7f0a0018

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const v22, 0x7f0a0019

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const v22, 0x7f0a001a

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const v22, 0x7f0a001b

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const v22, 0x7f0a001c

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    const v21, 0x7f0a0024

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnColor:I

    .line 207
    const v21, 0x7f0a0028

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnColorThin:I

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    const v21, 0x7f0a0025

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnColor:I

    .line 210
    const v21, 0x7f0a0029

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnColorThin:I

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    const v21, 0x7f0a0026

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningColor:I

    .line 213
    const v21, 0x7f0a002a

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningColorThin:I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    const v21, 0x7f0a0027

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockColor:I

    .line 216
    const v21, 0x7f0a002b

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockColorThin:I

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const v24, 0x7f0a001d

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x1

    const v24, 0x7f0a001e

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x2

    const v24, 0x7f0a001f

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x3

    const v24, 0x7f0a0020

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x4

    const v24, 0x7f0a0021

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x5

    const v24, 0x7f0a0022

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x6

    const v24, 0x7f0a0023

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    aput v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 232
    sget-object v21, Lcom/android/settings/R$styleable;->BatteryHistoryChart:[I

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 236
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    .line 237
    .local v17, "textColor":Landroid/content/res/ColorStateList;
    const/16 v18, 0xf

    .line 238
    .local v18, "textSize":I
    const/16 v20, -0x1

    .line 239
    .local v20, "typefaceIndex":I
    const/16 v16, -0x1

    .line 241
    .local v16, "styleIndex":I
    const/4 v7, 0x0

    .line 242
    .local v7, "appearance":Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 243
    .local v6, "ap":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_0

    .line 244
    sget-object v21, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 248
    :cond_0
    if-eqz v7, :cond_2

    .line 249
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 250
    .local v12, "n":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_1

    .line 251
    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 253
    .local v8, "attr":I
    packed-switch v8, :pswitch_data_0

    .line 250
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 255
    :pswitch_0
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 256
    goto :goto_1

    .line 259
    :pswitch_1
    move/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 260
    goto :goto_1

    .line 263
    :pswitch_2
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .line 264
    goto :goto_1

    .line 267
    :pswitch_3
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    goto :goto_1

    .line 272
    .end local v8    # "attr":I
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    .end local v11    # "i":I
    .end local v12    # "n":I
    :cond_2
    const/4 v15, 0x0

    .line 276
    .local v15, "shadowcolor":I
    const/4 v9, 0x0

    .local v9, "dx":F
    const/4 v10, 0x0

    .local v10, "dy":F
    const/4 v13, 0x0

    .line 278
    .local v13, "r":F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 279
    .restart local v12    # "n":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v12, :cond_3

    .line 280
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 282
    .restart local v8    # "attr":I
    packed-switch v8, :pswitch_data_1

    .line 279
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 284
    :pswitch_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 285
    goto :goto_3

    .line 288
    :pswitch_5
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 289
    goto :goto_3

    .line 292
    :pswitch_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 293
    goto :goto_3

    .line 296
    :pswitch_7
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 297
    goto :goto_3

    .line 300
    :pswitch_8
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 301
    goto :goto_3

    .line 304
    :pswitch_9
    move/from16 v0, v18

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 305
    goto :goto_3

    .line 308
    :pswitch_a
    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .line 309
    goto :goto_3

    .line 312
    :pswitch_b
    move/from16 v0, v16

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    goto :goto_3

    .line 317
    .end local v8    # "attr":I
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 322
    const/16 v19, 0x0

    .line 323
    .local v19, "tf":Landroid/graphics/Typeface;
    packed-switch v20, :pswitch_data_2

    .line 337
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 339
    if-eqz v15, :cond_4

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v9, v10, v15}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 342
    :cond_4
    return-void

    .line 325
    :pswitch_c
    sget-object v19, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 326
    goto :goto_4

    .line 329
    :pswitch_d
    sget-object v19, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 330
    goto :goto_4

    .line 333
    :pswitch_e
    sget-object v19, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 282
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 323
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "levelh"    # I
    .param p4, "startX"    # I
    .param p5, "y"    # I
    .param p6, "curLevelPath"    # Landroid/graphics/Path;
    .param p7, "lastX"    # I
    .param p8, "lastCharging"    # Z
    .param p9, "lastScreenOn"    # Z
    .param p10, "lastGpsOn"    # Z
    .param p11, "lastWifiRunning"    # Z
    .param p12, "lastWakeLock"    # Z
    .param p13, "lastPath"    # Landroid/graphics/Path;

    .prologue
    .line 428
    if-eqz p6, :cond_2

    .line 429
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 430
    if-eqz p13, :cond_0

    .line 431
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 433
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 435
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 436
    int-to-float v1, p4

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 437
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 440
    :cond_2
    if-eqz p8, :cond_3

    .line 441
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 443
    :cond_3
    if-eqz p9, :cond_4

    .line 444
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 446
    :cond_4
    if-eqz p10, :cond_5

    .line 447
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 449
    :cond_5
    if-eqz p11, :cond_6

    .line 450
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 452
    :cond_6
    if-eqz p12, :cond_7

    .line 453
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_8

    .line 456
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 458
    :cond_8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 684
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 686
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 687
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 688
    .local v7, "height":I
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v9

    .line 689
    .local v9, "layoutRtl":Z
    if-eqz v9, :cond_d

    move v10, v12

    .line 690
    .local v10, "textStartX":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v9, :cond_e

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 693
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v0, :cond_f

    .line 694
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    div-int/lit8 v6, v0, 0x2

    .line 695
    .local v6, "durationHalfWidth":I
    if-eqz v9, :cond_0

    neg-int v6, v6

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    int-to-float v2, v10

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    neg-int v3, v3

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    div-int/lit8 v2, v12, 0x2

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 706
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 713
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 715
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_4

    .line 716
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v0, v7, v0

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v11, v0, v2

    .line 717
    .local v11, "top":I
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    invoke-virtual {v0, p1, v11, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 719
    .end local v11    # "top":I
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 720
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 723
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 725
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v0, :cond_7

    .line 726
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 727
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 730
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v0, :cond_8

    .line 731
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 732
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 735
    :cond_8
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 736
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 739
    :cond_9
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v0, :cond_11

    .line 740
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_a

    .line 741
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    int-to-float v2, v10

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v3, v7, v3

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 744
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v0, :cond_b

    .line 745
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    int-to-float v2, v10

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, v7, v3

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 748
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v0, :cond_c

    .line 749
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    int-to-float v2, v10

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, v7, v3

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 752
    :cond_c
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockLabel:Ljava/lang/String;

    int-to-float v2, v10

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v3, v7, v3

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    int-to-float v2, v10

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, v7, v3

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 756
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    int-to-float v2, v10

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, v7, v3

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 758
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v12

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 760
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 762
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    const/16 v0, 0xa

    if-ge v8, v0, :cond_11

    .line 763
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v8

    div-int/lit8 v2, v2, 0xa

    add-int v13, v0, v2

    .line 764
    .local v13, "y":I
    int-to-float v2, v13

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    int-to-float v4, v13

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 762
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 689
    .end local v6    # "durationHalfWidth":I
    .end local v8    # "i":I
    .end local v10    # "textStartX":I
    .end local v13    # "y":I
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 690
    .restart local v10    # "textStartX":I
    :cond_e
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto/16 :goto_1

    .line 701
    :cond_f
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v6, v0, 0x2

    .line 702
    .restart local v6    # "durationHalfWidth":I
    if-eqz v9, :cond_10

    neg-int v6, v6

    .line 703
    :cond_10
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    div-int/lit8 v2, v12, 0x2

    sub-int/2addr v2, v6

    int-to-float v2, v2

    div-int/lit8 v3, v7, 0x2

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 767
    :cond_11
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 418
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    .line 420
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    .line 421
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 422
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 423
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 39
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 462
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v27, v2, v3

    .line 465
    .local v27, "textHeight":I
    const/4 v2, 0x1

    const/high16 v3, 0x40000000

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 467
    mul-int/lit8 v2, v27, 0x6

    move/from16 v0, p2

    if-le v0, v2, :cond_b

    .line 468
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 469
    mul-int/lit8 v2, v27, 0xf

    move/from16 v0, p2

    if-le v0, v2, :cond_a

    .line 471
    div-int/lit8 v2, v27, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 476
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v2, v2, v27

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 491
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 501
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_f

    .line 502
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v17, v27, v2

    .line 503
    .local v17, "barOffset":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 504
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 505
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    .line 506
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 507
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_c

    move/from16 v2, v17

    :goto_2
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 508
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_d

    move/from16 v2, v17

    :goto_3
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 509
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v3, :cond_e

    .end local v17    # "barOffset":I
    :goto_4
    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 511
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 525
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 535
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v30, v0

    .line 536
    .local v30, "timeStart":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v37, v0

    sub-long v28, v2, v37

    .line 538
    .local v28, "timeChange":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v19, v0

    .line 539
    .local v19, "batLow":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v18, v2, v3

    .line 541
    .local v18, "batChange":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v5, v2, v3

    .line 542
    .local v5, "levelh":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 544
    const/16 v35, 0x0

    .local v35, "x":I
    const/16 v36, 0x0

    .local v36, "y":I
    const/4 v6, 0x0

    .local v6, "startX":I
    const/4 v9, -0x1

    .local v9, "lastX":I
    const/4 v7, -0x1

    .line 545
    .local v7, "lastY":I
    const/16 v23, 0x0

    .line 546
    .local v23, "i":I
    const/4 v8, 0x0

    .line 547
    .local v8, "curLevelPath":Landroid/graphics/Path;
    const/4 v15, 0x0

    .line 548
    .local v15, "lastLinePath":Landroid/graphics/Path;
    const/4 v10, 0x0

    .local v10, "lastCharging":Z
    const/4 v11, 0x0

    .local v11, "lastScreenOn":Z
    const/4 v12, 0x0

    .line 549
    .local v12, "lastGpsOn":Z
    const/4 v13, 0x0

    .local v13, "lastWifiRunning":Z
    const/4 v14, 0x0

    .line 550
    .local v14, "lastWakeLock":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v16, v0

    .line 551
    .local v16, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 552
    new-instance v25, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 553
    .end local v10    # "lastCharging":Z
    .end local v11    # "lastScreenOn":Z
    .end local v12    # "lastGpsOn":Z
    .local v25, "rec":Landroid/os/BatteryStats$HistoryItem;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_21

    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_21

    .line 554
    move-object/from16 v0, v25

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 555
    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, v30

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v37, v0

    mul-long v2, v2, v37

    div-long v2, v2, v28

    long-to-int v0, v2

    move/from16 v35, v0

    .line 556
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, v25

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v3, v3, v19

    add-int/lit8 v4, v5, -0x1

    mul-int/2addr v3, v4

    div-int v3, v3, v18

    sub-int v36, v2, v3

    .line 558
    move/from16 v0, v35

    if-eq v9, v0, :cond_3

    .line 560
    move/from16 v0, v36

    if-eq v7, v0, :cond_3

    .line 563
    move-object/from16 v0, v25

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v32, v0

    .line 564
    .local v32, "value":B
    const/16 v2, 0xe

    move/from16 v0, v32

    if-gt v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    .line 568
    .local v24, "path":Landroid/graphics/Path;
    :goto_7
    move-object/from16 v0, v24

    if-eq v0, v15, :cond_12

    .line 569
    if-eqz v15, :cond_2

    .line 570
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 572
    :cond_2
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 573
    move-object/from16 v15, v24

    .line 578
    :goto_8
    if-nez v8, :cond_13

    .line 579
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 580
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 581
    move/from16 v6, v35

    .line 585
    :goto_9
    move/from16 v9, v35

    .line 586
    move/from16 v7, v36

    .line 590
    .end local v24    # "path":Landroid/graphics/Path;
    .end local v32    # "value":B
    :cond_3
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    const/16 v21, 0x1

    .line 592
    .local v21, "charging":Z
    :goto_a
    move/from16 v0, v21

    if-eq v0, v10, :cond_4

    .line 593
    if-eqz v21, :cond_15

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 598
    :goto_b
    move/from16 v10, v21

    .line 601
    :cond_4
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    const/16 v26, 0x1

    .line 603
    .local v26, "screenOn":Z
    :goto_c
    move/from16 v0, v26

    if-eq v0, v11, :cond_5

    .line 604
    if-eqz v26, :cond_17

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 609
    :goto_d
    move/from16 v11, v26

    .line 612
    :cond_5
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    const/16 v22, 0x1

    .line 614
    .local v22, "gpsOn":Z
    :goto_e
    move/from16 v0, v22

    if-eq v0, v12, :cond_6

    .line 615
    if-eqz v22, :cond_19

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 620
    :goto_f
    move/from16 v12, v22

    .line 623
    :cond_6
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    const/16 v34, 0x1

    .line 625
    .local v34, "wifiRunning":Z
    :goto_10
    move/from16 v0, v34

    if-eq v0, v13, :cond_7

    .line 626
    if-eqz v34, :cond_1b

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 631
    :goto_11
    move/from16 v13, v34

    .line 634
    :cond_7
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x40000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    const/16 v33, 0x1

    .line 636
    .local v33, "wakeLock":Z
    :goto_12
    move/from16 v0, v33

    if-eq v0, v14, :cond_8

    .line 637
    if-eqz v33, :cond_1d

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 642
    :goto_13
    move/from16 v14, v33

    .line 645
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_9

    .line 647
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0xf00

    shr-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    .line 650
    const/16 v20, 0x0

    .line 658
    .local v20, "bin":I
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 673
    .end local v20    # "bin":I
    .end local v21    # "charging":Z
    .end local v22    # "gpsOn":Z
    .end local v26    # "screenOn":Z
    .end local v33    # "wakeLock":Z
    .end local v34    # "wifiRunning":Z
    :cond_9
    :goto_15
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    .line 474
    .end local v5    # "levelh":I
    .end local v6    # "startX":I
    .end local v7    # "lastY":I
    .end local v8    # "curLevelPath":Landroid/graphics/Path;
    .end local v9    # "lastX":I
    .end local v13    # "lastWifiRunning":Z
    .end local v14    # "lastWakeLock":Z
    .end local v15    # "lastLinePath":Landroid/graphics/Path;
    .end local v16    # "N":I
    .end local v18    # "batChange":I
    .end local v19    # "batLow":I
    .end local v23    # "i":I
    .end local v25    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v28    # "timeChange":J
    .end local v30    # "timeStart":J
    .end local v35    # "x":I
    .end local v36    # "y":I
    :cond_a
    div-int/lit8 v2, v27, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_0

    .line 482
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 483
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 484
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnColorThin:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnColorThin:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningColorThin:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockColorThin:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 507
    .restart local v17    # "barOffset":I
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 508
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 509
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 515
    .end local v17    # "barOffset":I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 517
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 518
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 519
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 520
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_5

    .line 565
    .restart local v5    # "levelh":I
    .restart local v6    # "startX":I
    .restart local v7    # "lastY":I
    .restart local v8    # "curLevelPath":Landroid/graphics/Path;
    .restart local v9    # "lastX":I
    .restart local v13    # "lastWifiRunning":Z
    .restart local v14    # "lastWakeLock":Z
    .restart local v15    # "lastLinePath":Landroid/graphics/Path;
    .restart local v16    # "N":I
    .restart local v18    # "batChange":I
    .restart local v19    # "batLow":I
    .restart local v23    # "i":I
    .restart local v25    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v28    # "timeChange":J
    .restart local v30    # "timeStart":J
    .restart local v32    # "value":B
    .restart local v35    # "x":I
    .restart local v36    # "y":I
    :cond_10
    const/16 v2, 0x1d

    move/from16 v0, v32

    if-gt v0, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    .restart local v24    # "path":Landroid/graphics/Path;
    goto/16 :goto_7

    .line 566
    .end local v24    # "path":Landroid/graphics/Path;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    .restart local v24    # "path":Landroid/graphics/Path;
    goto/16 :goto_7

    .line 575
    :cond_12
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    .line 583
    :cond_13
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 590
    .end local v24    # "path":Landroid/graphics/Path;
    .end local v32    # "value":B
    :cond_14
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 596
    .restart local v21    # "charging":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 601
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 607
    .restart local v26    # "screenOn":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 612
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_e

    .line 618
    .restart local v22    # "gpsOn":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    .line 623
    :cond_1a
    const/16 v34, 0x0

    goto/16 :goto_10

    .line 629
    .restart local v34    # "wifiRunning":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11

    .line 634
    :cond_1c
    const/16 v33, 0x0

    goto/16 :goto_12

    .line 640
    .restart local v33    # "wakeLock":Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 651
    :cond_1e
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    .line 652
    const/16 v20, 0x1

    .restart local v20    # "bin":I
    goto/16 :goto_14

    .line 654
    .end local v20    # "bin":I
    :cond_1f
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v20, v2, 0x4

    .line 656
    .restart local v20    # "bin":I
    add-int/lit8 v20, v20, 0x2

    goto/16 :goto_14

    .line 661
    .end local v20    # "bin":I
    .end local v21    # "charging":Z
    .end local v22    # "gpsOn":Z
    .end local v26    # "screenOn":Z
    .end local v33    # "wakeLock":Z
    .end local v34    # "wifiRunning":Z
    :cond_20
    move-object/from16 v0, v25

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    .line 662
    if-eqz v8, :cond_9

    .line 663
    add-int/lit8 v3, v35, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 666
    const/4 v7, -0x1

    move v9, v7

    .line 667
    const/4 v8, 0x0

    .line 668
    const/4 v15, 0x0

    .line 669
    const/4 v14, 0x0

    move v12, v14

    .local v12, "lastGpsOn":I
    move v11, v14

    .local v11, "lastScreenOn":I
    move v10, v14

    .local v10, "lastCharging":I
    goto/16 :goto_15

    .end local v10    # "lastCharging":I
    .end local v11    # "lastScreenOn":I
    .end local v12    # "lastGpsOn":I
    .end local v25    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_21
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    .line 677
    invoke-virtual/range {v2 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 680
    return-void
.end method

.method setStats(Landroid/os/BatteryStats;)V
    .locals 14
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .line 368
    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    .line 370
    .local v7, "uSecTime":J
    iput-wide v7, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 371
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-double v10, v10

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "durationString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b062c

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b062e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 375
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b062f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 376
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b0630

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b0631

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 378
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b0632

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockLabel:Ljava/lang/String;

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b0633

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 381
    const/4 v5, 0x0

    .line 382
    .local v5, "pos":I
    const/4 v3, 0x0

    .line 383
    .local v3, "lastInteresting":I
    const/4 v4, -0x1

    .line 384
    .local v4, "lastLevel":B
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 385
    const/16 v9, 0x64

    iput v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "aggrStates":I
    const/4 v2, 0x1

    .line 388
    .local v2, "first":Z
    invoke-virtual {p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 389
    new-instance v6, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 390
    .local v6, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 391
    add-int/lit8 v5, v5, 0x1

    .line 392
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 393
    if-eqz v2, :cond_1

    .line 394
    const/4 v2, 0x0

    .line 395
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 397
    :cond_1
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v9, v4, :cond_2

    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    .line 398
    :cond_2
    iget-byte v4, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 400
    :cond_3
    move v3, v5

    .line 401
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 402
    iget v9, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v0, v9

    goto :goto_0

    .line 406
    .end local v6    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 407
    const/high16 v9, 0x10000000

    and-int/2addr v9, v0

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 408
    const/high16 v9, 0x4000000

    and-int/2addr v9, v0

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 409
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 410
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    .line 412
    :cond_5
    iget-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v11, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    cmp-long v9, v9, v11

    if-gtz v9, :cond_6

    iget-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 413
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v12, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    .line 414
    return-void

    .line 407
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 408
    :cond_8
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 345
    if-lez p2, :cond_4

    .line 346
    if-nez p1, :cond_1

    .line 347
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 352
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 354
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 355
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 356
    .local v0, "need":I
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 357
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000

    :goto_2
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 363
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 349
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 354
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 357
    goto :goto_2

    .line 359
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 360
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 361
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3
.end method
