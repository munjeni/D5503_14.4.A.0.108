.class public Lcom/sonyericsson/conversations/ui/util/DateSeparators;
.super Ljava/lang/Object;
.source "DateSeparators.java"


# static fields
.field public static final FRIDAY:I = 0x3

.field private static final LAST:I = 0xc

.field public static final MONDAY:I = 0x7

.field public static final NONE:I = -0x1

.field public static final ONE_MONTH_AGO:I = 0xb

.field public static final ONE_WEEK_AGO:I = 0x9

.field public static final SATURDAY:I = 0x2

.field public static final SUNDAY:I = 0x8

.field public static final THURSDAY:I = 0x4

.field public static final TODAY:I = 0x0

.field public static final TUESDAY:I = 0x6

.field public static final TWO_WEEKS_AGO:I = 0xa

.field public static final WEDNESDAY:I = 0x5

.field public static final YESTERDAY:I = 0x1


# instance fields
.field private mDateLimitIndices:[I

.field private mDateLimits:[J


# direct methods
.method public constructor <init>()V
    .locals 14

    .prologue
    const/16 v13, 0xb

    const/16 v12, 0xa

    const/4 v11, -0x1

    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v6, 0xc

    new-array v6, v6, [J

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    .line 73
    new-array v6, v12, [I

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v3, 0x0

    .line 78
    .local v3, "index":I
    invoke-virtual {v0, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 79
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 80
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 81
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 84
    .local v5, "weekDayToday":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    aput-wide v7, v6, v9

    .line 85
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    aput v9, v6, v3

    .line 87
    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 88
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 89
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    const/4 v7, 0x1

    aput v7, v6, v4

    .line 91
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :goto_0
    if-ge v2, v10, :cond_0

    .line 92
    add-int/lit8 v6, v2, 0x9

    sub-int/2addr v6, v5

    rem-int/lit8 v6, v6, 0x7

    add-int/lit8 v1, v6, 0x2

    .line 94
    .local v1, "day":I
    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 95
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    aput-wide v7, v6, v1

    .line 96
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aput v1, v6, v4

    .line 91
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 99
    .end local v1    # "day":I
    :cond_0
    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 100
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    const/16 v7, 0x9

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 101
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    const/16 v7, 0x9

    aput v7, v6, v4

    .line 103
    const/4 v6, -0x7

    invoke-virtual {v0, v10, v6}, Ljava/util/Calendar;->add(II)V

    .line 104
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    aput-wide v7, v6, v12

    .line 105
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    aput v12, v6, v3

    .line 107
    const/16 v6, 0xe

    invoke-virtual {v0, v10, v6}, Ljava/util/Calendar;->add(II)V

    .line 109
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v11}, Ljava/util/Calendar;->add(II)V

    .line 110
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    aput-wide v7, v6, v13

    .line 111
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aput v13, v6, v4

    .line 112
    return-void
.end method


# virtual methods
.method public getSeparator(JJ)I
    .locals 5
    .param p1, "date"    # J
    .param p3, "previousDate"    # J

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 127
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    aget v1, v4, v0

    .line 128
    .local v1, "index":I
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    aget-wide v2, v4, v1

    .line 130
    .local v2, "limit":J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    cmp-long v4, p3, v2

    if-gez v4, :cond_0

    .line 135
    .end local v1    # "index":I
    .end local v2    # "limit":J
    :goto_1
    return v1

    .line 126
    .restart local v1    # "index":I
    .restart local v2    # "limit":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "index":I
    .end local v2    # "limit":J
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 143
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimitIndices:[I

    aget v1, v5, v0

    .line 144
    .local v1, "index":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->mDateLimits:[J

    aget-wide v2, v5, v1

    .line 146
    .local v2, "limit":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Separator["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: limit = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "index":I
    .end local v2    # "limit":J
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
