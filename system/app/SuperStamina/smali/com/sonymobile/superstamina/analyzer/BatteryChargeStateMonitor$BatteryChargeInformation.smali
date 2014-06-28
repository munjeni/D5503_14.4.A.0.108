.class Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;
.super Ljava/lang/Object;
.source "BatteryChargeStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryChargeInformation"
.end annotation


# instance fields
.field private health:I

.field private level:I

.field private nextTime:J

.field private plugged:I

.field private previousLevel:I

.field private scale:I

.field private sonyCharger:I

.field private status:I

.field private topLevel:I

.field private valid:Z

.field private voltage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->resetMeasurement()V

    .line 188
    return-void
.end method

.method private checkValid()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 237
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->previousLevel:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 241
    :cond_1
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->level:I

    iget v4, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->previousLevel:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->resetMeasurement()V

    goto :goto_0

    .line 248
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->getCurrentTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->nextTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->filterBatteryData()Z

    move-result v0

    .line 255
    .local v0, "rVal":Z
    if-nez v0, :cond_0

    .line 264
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->level:I

    int-to-long v3, v3

    iget v5, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->scale:I

    int-to-long v5, v5

    const-wide/16 v7, 0xa

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    .line 269
    goto :goto_0
.end method

.method private filterBatteryData()Z
    .locals 7

    .prologue
    const/4 v5, 0x2

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "rVal":Z
    const-wide/32 v1, 0x927c0

    .line 285
    .local v1, "setTime":J
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->health:I

    if-eq v3, v5, :cond_0

    .line 286
    const-wide/32 v1, 0x493e0

    .line 290
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->health:I

    packed-switch v3, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->sonyCharger:I

    if-eqz v3, :cond_1

    .line 309
    const-wide/32 v1, 0x1d4c0

    .line 314
    :cond_1
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 315
    const-wide/32 v1, 0x927c0

    .line 321
    :cond_2
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->plugged:I

    if-ne v3, v5, :cond_3

    .line 322
    const-wide/32 v1, 0x1d4c0

    .line 326
    :cond_3
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->level:I

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    .line 327
    const-wide/32 v1, 0x1d4c0

    .line 331
    :cond_4
    iget v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->voltage:I

    int-to-long v3, v3

    const-wide/16 v5, 0xea6

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 332
    const-wide/32 v1, 0x1d4c0

    .line 336
    :cond_5
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->getCurrentTime()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->nextTime:J

    .line 338
    return v0

    .line 294
    :pswitch_1
    const-wide/32 v1, 0x1d4c0

    .line 295
    goto :goto_0

    .line 297
    :pswitch_2
    const/4 v0, 0x1

    .line 298
    goto :goto_0

    .line 301
    :pswitch_3
    const-wide/32 v1, 0x927c0

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentTime()J
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private resetMeasurement()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 354
    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->previousLevel:I

    .line 355
    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->level:I

    .line 356
    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->topLevel:I

    .line 357
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->nextTime:J

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->valid:Z

    .line 359
    return-void
.end method


# virtual methods
.method public hasEnoughDrop()Z
    .locals 6

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->valid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->level:I

    int-to-long v0, v0

    iget v2, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->topLevel:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsbConnected()Z
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->plugged:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBatteryData(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 195
    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->level:I

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->previousLevel:I

    .line 197
    const-string v0, "level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->level:I

    .line 198
    const-string v0, "scale"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->scale:I

    .line 199
    const-string v0, "voltage"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->voltage:I

    .line 200
    const-string v0, "plugged"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->plugged:I

    .line 201
    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->status:I

    .line 202
    const-string v0, "health"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->health:I

    .line 203
    const-string v0, "invalid_charger"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->sonyCharger:I

    .line 206
    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->level:I

    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->topLevel:I

    if-le v0, v1, :cond_0

    .line 207
    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->level:I

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->topLevel:I

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->checkValid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/BatteryChargeStateMonitor$BatteryChargeInformation;->valid:Z

    .line 211
    return-void
.end method
