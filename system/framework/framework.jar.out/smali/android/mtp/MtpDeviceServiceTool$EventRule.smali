.class public Landroid/mtp/MtpDeviceServiceTool$EventRule;
.super Ljava/lang/Object;
.source "MtpDeviceServiceTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDeviceServiceTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventRule"
.end annotation


# instance fields
.field allDay:Z

.field beginDateTime:Ljava/lang/String;

.field duration:Ljava/lang/String;

.field endDateTime:Ljava/lang/String;

.field endTime:J

.field exDate:Ljava/lang/String;

.field originalInstanceTime:J

.field patternDayOfMonth:I

.field patternDayOfWeek:I

.field patternDeleteDates:Ljava/lang/String;

.field patternDurationInMinutes:I

.field patternInstance:I

.field patternMonthOfYear:I

.field patternOriginalDateTime:Ljava/lang/String;

.field patternPeriod:I

.field patternStartTime:Ljava/lang/String;

.field patternType:I

.field patternValidCount:I

.field patternValidEndDate:Ljava/lang/String;

.field patternValidStartDate:Ljava/lang/String;

.field recur:Ljava/lang/String;

.field startTime:J

.field timeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->allDay:Z

    return-void
.end method


# virtual methods
.method public parseLocalToMtp()V
    .locals 12

    .prologue
    .line 144
    iget-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->duration:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->startTime:J

    iget-object v10, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->duration:Ljava/lang/String;

    # invokes: Landroid/mtp/MtpDeviceServiceTool;->parseDuration(Ljava/lang/String;)J
    invoke-static {v10}, Landroid/mtp/MtpDeviceServiceTool;->access$200(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endTime:J

    .line 145
    :cond_0
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->timeZone:Ljava/lang/String;

    if-nez v8, :cond_1

    const-string v8, "UTC"

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->timeZone:Ljava/lang/String;

    .line 146
    :cond_1
    iget-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->startTime:J

    const-string v10, "UTC"

    # invokes: Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10}, Landroid/mtp/MtpDeviceServiceTool;->access$300(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    .line 147
    iget-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endTime:J

    const-string v10, "UTC"

    # invokes: Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10}, Landroid/mtp/MtpDeviceServiceTool;->access$300(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endDateTime:Ljava/lang/String;

    .line 148
    iget-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->originalInstanceTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 149
    iget-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->originalInstanceTime:J

    iget-object v10, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->timeZone:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Landroid/mtp/MtpDeviceServiceTool;->formatDateTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternOriginalDateTime:Ljava/lang/String;

    .line 151
    :cond_2
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->recur:Ljava/lang/String;

    if-eqz v8, :cond_f

    .line 152
    new-instance v4, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v4}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 153
    .local v4, "eventRecurrence":Lcom/android/calendarcommon2/EventRecurrence;
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->recur:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 155
    iget v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_4

    .line 201
    .end local v4    # "eventRecurrence":Lcom/android/calendarcommon2/EventRecurrence;
    :cond_3
    :goto_0
    return-void

    .line 156
    .restart local v4    # "eventRecurrence":Lcom/android/calendarcommon2/EventRecurrence;
    :cond_4
    iget v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    add-int/lit8 v8, v8, -0x4

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternType:I

    .line 157
    iget-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->startTime:J

    iget-object v10, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->timeZone:Ljava/lang/String;

    # invokes: Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10}, Landroid/mtp/MtpDeviceServiceTool;->access$300(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const-string v9, "Z"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternStartTime:Ljava/lang/String;

    .line 159
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidStartDate:Ljava/lang/String;

    .line 160
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->duration:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 161
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->duration:Ljava/lang/String;

    # invokes: Landroid/mtp/MtpDeviceServiceTool;->getDurationMillis(Ljava/lang/String;)J
    invoke-static {v8}, Landroid/mtp/MtpDeviceServiceTool;->access$400(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDurationInMinutes:I

    .line 163
    :cond_5
    iget-object v7, v4, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    .line 164
    .local v7, "untilDateTime":Ljava/lang/String;
    iget v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidCount:I

    .line 165
    if-eqz v7, :cond_6

    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidCount:I

    if-nez v8, :cond_6

    .line 166
    const-string v8, "T"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidEndDate:Ljava/lang/String;

    .line 168
    :cond_6
    iget v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternPeriod:I

    .line 169
    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    # invokes: Landroid/mtp/MtpDeviceServiceTool;->parseDayofWeekToInt([I)I
    invoke-static {v8}, Landroid/mtp/MtpDeviceServiceTool;->access$500([I)I

    move-result v8

    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDayOfWeek:I

    .line 170
    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    if-nez v8, :cond_a

    const/4 v8, 0x0

    :goto_1
    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDayOfMonth:I

    .line 172
    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    if-nez v8, :cond_b

    const/4 v8, 0x0

    :goto_2
    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternMonthOfYear:I

    .line 174
    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    if-nez v8, :cond_c

    const/4 v8, 0x0

    :goto_3
    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    .line 176
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    if-nez v8, :cond_8

    .line 177
    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    if-eqz v8, :cond_7

    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    array-length v8, v8

    if-nez v8, :cond_d

    :cond_7
    const/4 v8, 0x0

    :goto_4
    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    .line 181
    :cond_8
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    .line 182
    const/4 v8, 0x5

    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    .line 184
    :cond_9
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->exDate:Ljava/lang/String;

    if-eqz v8, :cond_f

    .line 185
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->exDate:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "dates":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v3, "deleteDatesBuilder":Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v6, :cond_e

    aget-object v1, v0, v5

    .line 188
    .local v1, "date":Ljava/lang/String;
    const-string v8, "T"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 170
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "dates":[Ljava/lang/String;
    .end local v3    # "deleteDatesBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_a
    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    goto :goto_1

    .line 172
    :cond_b
    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    goto :goto_2

    .line 174
    :cond_c
    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    goto :goto_3

    .line 177
    :cond_d
    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    goto :goto_4

    .line 190
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "dates":[Ljava/lang/String;
    .restart local v3    # "deleteDatesBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_f

    .line 191
    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDeleteDates:Ljava/lang/String;

    .line 196
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "dates":[Ljava/lang/String;
    .end local v3    # "deleteDatesBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "eventRecurrence":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "untilDateTime":Ljava/lang/String;
    :cond_f
    iget-boolean v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->allDay:Z

    if-eqz v8, :cond_3

    .line 197
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    .line 198
    iget-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endTime:J

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    const-string v10, "UTC"

    # invokes: Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10}, Landroid/mtp/MtpDeviceServiceTool;->access$300(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endDateTime:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public parseMtpToLocal()V
    .locals 14

    .prologue
    .line 59
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->timeZone:Ljava/lang/String;

    if-nez v8, :cond_0

    const-string v8, "UTC"

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->timeZone:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternStartTime:Ljava/lang/String;

    if-eqz v8, :cond_c

    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidStartDate:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidStartDate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternStartTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    .line 62
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    iget-object v9, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->timeZone:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/mtp/MtpDeviceServiceTool;->parseDateTime2445(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->startTime:J

    .line 66
    :goto_0
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endDateTime:Ljava/lang/String;

    if-nez v8, :cond_d

    .line 67
    iget-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->startTime:J

    iget v10, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDurationInMinutes:I

    mul-int/lit8 v10, v10, 0x3c

    int-to-long v10, v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endTime:J

    .line 71
    :goto_1
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternOriginalDateTime:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 72
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternOriginalDateTime:Ljava/lang/String;

    iget-object v9, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->timeZone:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/mtp/MtpDeviceServiceTool;->parseDateTime2445(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->originalInstanceTime:J

    .line 74
    :cond_1
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDurationInMinutes:I

    # invokes: Landroid/mtp/MtpDeviceServiceTool;->getDurPattern(I)Ljava/lang/String;
    invoke-static {v8}, Landroid/mtp/MtpDeviceServiceTool;->access$000(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->duration:Ljava/lang/String;

    .line 75
    new-instance v4, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v4}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 76
    .local v4, "eventRecurrence":Lcom/android/calendarcommon2/EventRecurrence;
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 77
    iget-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endTime:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endTime:J

    .line 78
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->allDay:Z

    .line 80
    :cond_2
    const/4 v8, 0x1

    iget v9, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternType:I

    if-gt v8, v9, :cond_13

    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternType:I

    const/4 v9, 0x4

    if-gt v8, v9, :cond_13

    .line 81
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternType:I

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v8, v8, 0x4

    iput v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 82
    const/high16 v8, 0x10000

    iput v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    .line 83
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidEndDate:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidEndDate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternStartTime:Ljava/lang/String;

    if-nez v8, :cond_e

    const-string v8, "000000"

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    .line 87
    :cond_3
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidCount:I

    if-eqz v8, :cond_4

    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidCount:I

    iput v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    .line 88
    :cond_4
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternPeriod:I

    if-eqz v8, :cond_5

    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternPeriod:I

    iput v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    .line 89
    :cond_5
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDayOfWeek:I

    if-eqz v8, :cond_6

    .line 90
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDayOfWeek:I

    # invokes: Landroid/mtp/MtpDeviceServiceTool;->parseDayofWeekToString(I)[I
    invoke-static {v8}, Landroid/mtp/MtpDeviceServiceTool;->access$100(I)[I

    move-result-object v3

    .line 91
    .local v3, "days":[I
    array-length v8, v3

    iput v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 92
    iput-object v3, v4, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 93
    array-length v8, v3

    new-array v8, v8, [I

    iput-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    .line 95
    .end local v3    # "days":[I
    :cond_6
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDayOfMonth:I

    if-eqz v8, :cond_7

    .line 96
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    .line 97
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget v10, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDayOfMonth:I

    aput v10, v8, v9

    iput-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    .line 99
    :cond_7
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternMonthOfYear:I

    if-eqz v8, :cond_8

    .line 100
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    .line 101
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget v10, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternMonthOfYear:I

    aput v10, v8, v9

    iput-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    .line 103
    :cond_8
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    if-eqz v8, :cond_9

    .line 104
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_f

    const/4 v8, -0x1

    :goto_3
    iput v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    .line 105
    iget v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_10

    iget v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    .line 107
    iget-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    const/4 v9, 0x0

    iget v10, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    aput v10, v8, v9

    .line 113
    :cond_9
    :goto_4
    invoke-virtual {v4}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->recur:Ljava/lang/String;

    .line 114
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDeleteDates:Ljava/lang/String;

    if-eqz v8, :cond_12

    .line 115
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDeleteDates:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "dates":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v6, :cond_11

    aget-object v1, v0, v5

    .line 118
    .local v1, "date":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 120
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternStartTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 64
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "dates":[Ljava/lang/String;
    .end local v4    # "eventRecurrence":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_c
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    const-string v9, "UTC"

    invoke-static {v8, v9}, Landroid/mtp/MtpDeviceServiceTool;->parseDateTime2445(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->startTime:J

    goto/16 :goto_0

    .line 69
    :cond_d
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endDateTime:Ljava/lang/String;

    const-string v9, "UTC"

    invoke-static {v8, v9}, Landroid/mtp/MtpDeviceServiceTool;->parseDateTime2445(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endTime:J

    goto/16 :goto_1

    .line 84
    .restart local v4    # "eventRecurrence":Lcom/android/calendarcommon2/EventRecurrence;
    :cond_e
    iget-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternStartTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 104
    :cond_f
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    goto :goto_3

    .line 109
    :cond_10
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    .line 110
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget v10, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    aput v10, v8, v9

    iput-object v8, v4, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    goto :goto_4

    .line 126
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "dates":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_11
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_12

    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->exDate:Ljava/lang/String;

    .line 138
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "dates":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_12
    :goto_6
    return-void

    .line 131
    :cond_13
    iget v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternType:I

    if-eqz v8, :cond_14

    .line 136
    :cond_14
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/mtp/MtpDeviceServiceTool$EventRule;->recur:Ljava/lang/String;

    goto :goto_6
.end method
