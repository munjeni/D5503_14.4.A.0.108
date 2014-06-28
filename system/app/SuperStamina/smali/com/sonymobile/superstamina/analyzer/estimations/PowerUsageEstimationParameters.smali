.class public Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;
.super Ljava/lang/Object;
.source "PowerUsageEstimationParameters.java"


# static fields
.field static final COLUMNS:[Ljava/lang/String;

.field private static final DEFAULT_BATTERY_CAPACITY:I = 0x7d0

.field public static final IDX_BATTERY_NO_XSSM:I = 0x7

.field public static final IDX_BATTERY_XSSM:I = 0x6

.field public static final IDX_BROWSING:I = 0x4

.field public static final IDX_COUNT:I = 0x8

.field public static final IDX_MOVIE:I = 0x2

.field public static final IDX_MUSIC:I = 0x3

.field public static final IDX_STANDBY_NO_XSSM:I = 0x1

.field public static final IDX_STANDBY_XSSM:I = 0x0

.field public static final IDX_TALK_ADD:I = 0x5

.field static final INDEXES:[I

.field public static final TIME_BATTERY:I = 0x5

.field public static final TIME_BROWSER:I = 0x3

.field public static final TIME_MOVIE:I = 0x1

.field public static final TIME_MUSIC:I = 0x2

.field public static final TIME_STANDBY:I = 0x0

.field public static final TIME_TALK:I = 0x4

.field private static mValues:[I


# instance fields
.field private mBatteryCap:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "standby_with_xssm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "standby_without_xssm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "battery_with_xssm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "battery_without_xssm"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->COLUMNS:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->INDEXES:[I

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    return-void

    .line 55
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mBatteryCap:I

    .line 74
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mBatteryCap:I

    .line 75
    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mBatteryCap:I

    if-nez v0, :cond_0

    .line 76
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mBatteryCap:I

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public getEstimate(IIZ)I
    .locals 5
    .param p1, "perc"    # I
    .param p2, "est"    # I
    .param p3, "isXssmOn"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    iget v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mBatteryCap:I

    mul-int/2addr v2, p1

    div-int/lit8 v1, v2, 0x64

    .line 89
    .local v1, "remaining":I
    const/4 v0, 0x0

    .line 90
    .local v0, "mA":I
    packed-switch p2, :pswitch_data_0

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "est="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :pswitch_0
    if-eqz p3, :cond_0

    sget-object v2, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    aget v0, v2, v3

    .line 116
    :goto_0
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    div-int/2addr v2, v0

    return v2

    .line 92
    :cond_0
    sget-object v2, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    aget v0, v2, v4

    goto :goto_0

    .line 95
    :pswitch_1
    sget-object v2, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    const/4 v3, 0x2

    aget v0, v2, v3

    .line 96
    goto :goto_0

    .line 98
    :pswitch_2
    sget-object v2, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    const/4 v3, 0x3

    aget v0, v2, v3

    .line 99
    goto :goto_0

    .line 101
    :pswitch_3
    sget-object v2, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    const/4 v3, 0x4

    aget v0, v2, v3

    .line 102
    goto :goto_0

    .line 105
    :pswitch_4
    if-eqz p3, :cond_1

    sget-object v2, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    aget v0, v2, v3

    .line 106
    :goto_1
    sget-object v2, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 107
    goto :goto_0

    .line 105
    :cond_1
    sget-object v2, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    aget v0, v2, v4

    goto :goto_1

    .line 109
    :pswitch_5
    if-eqz p3, :cond_2

    sget-object v2, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    const/4 v3, 0x6

    aget v0, v2, v3

    .line 110
    :goto_2
    goto :goto_0

    .line 109
    :cond_2
    sget-object v2, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    const/4 v3, 0x7

    aget v0, v2, v3

    goto :goto_2

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getParameters()[I
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 137
    new-array v0, v3, [I

    .line 138
    .local v0, "ret":[I
    sget-object v1, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    return-object v0
.end method

.method public setParameters([I)V
    .locals 5
    .param p1, "values"    # [I

    .prologue
    const/16 v4, 0x8

    .line 124
    array-length v1, p1

    if-eq v1, v4, :cond_0

    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " values, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 129
    sget-object v1, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->mValues:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method
