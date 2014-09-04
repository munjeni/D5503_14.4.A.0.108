.class public Lcom/adobe/xmp/impl/XMPDateTimeImpl;
.super Ljava/lang/Object;
.source "XMPDateTimeImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPDateTime;


# instance fields
.field private day:I

.field private hasDate:Z

.field private hasTime:Z

.field private hasTimeZone:Z

.field private hour:I

.field private minute:I

.field private month:I

.field private nanoSeconds:I

.field private second:I

.field private timeZone:Ljava/util/TimeZone;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 50
    iput-boolean v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    .line 52
    iput-boolean v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    .line 54
    iput-boolean v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "strValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 50
    iput-boolean v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    .line 52
    iput-boolean v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    .line 54
    iput-boolean v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    .line 134
    invoke-static {p1, p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 7
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v4, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v4, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v4, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v4, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v4, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v4, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 44
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 50
    iput-boolean v4, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    .line 52
    iput-boolean v4, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    .line 54
    iput-boolean v4, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    .line 75
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 76
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 81
    .local v2, "zone":Ljava/util/TimeZone;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    .line 82
    .local v1, "intCalendar":Ljava/util/GregorianCalendar;
    new-instance v3, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 84
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 86
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 87
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 88
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 89
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 90
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 91
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 92
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const v4, 0xf4240

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 93
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 96
    iput-boolean v6, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    iput-boolean v6, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    iput-boolean v6, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 34
    iput v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 36
    iput v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 38
    iput v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 40
    iput v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 42
    iput v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 50
    iput-boolean v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    .line 52
    iput-boolean v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    .line 54
    iput-boolean v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    .line 109
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 110
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 112
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 113
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 114
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 115
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 116
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 117
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 118
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const v2, 0xf4240

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 119
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 122
    iput-boolean v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    iput-boolean v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    iput-boolean v3, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    .line 123
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 7
    .param p1, "dt"    # Ljava/lang/Object;

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    move-object v2, p1

    .line 301
    check-cast v2, Lcom/adobe/xmp/XMPDateTime;

    invoke-interface {v2}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 300
    sub-long v0, v3, v5

    .line 302
    .local v0, "d":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 304
    long-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    .line 310
    .end local p1    # "dt":Ljava/lang/Object;
    :goto_0
    return v2

    .line 309
    .restart local p1    # "dt":Ljava/lang/Object;
    :cond_0
    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    check-cast p1, Lcom/adobe/xmp/XMPDateTime;

    .end local p1    # "dt":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 310
    long-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 367
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 368
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 369
    iget-boolean v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 373
    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 374
    const/4 v1, 0x2

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 375
    const/4 v1, 0x5

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 376
    const/16 v1, 0xb

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 377
    const/16 v1, 0xc

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 378
    const/16 v1, 0xd

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 379
    const/16 v1, 0xe

    iget v2, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 381
    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    return v0
.end method

.method public getISO8601String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    invoke-static {p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    return v0
.end method

.method public getNanoSecond()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    return v0
.end method

.method public hasDate()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    return v0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    return v0
.end method

.method public setDay(I)V
    .locals 2
    .param p1, "day"    # I

    .prologue
    const/16 v1, 0x1f

    const/4 v0, 0x1

    .line 202
    if-ge p1, v0, :cond_0

    .line 204
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    .line 215
    :goto_0
    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    .line 216
    return-void

    .line 206
    :cond_0
    if-le p1, v1, :cond_1

    .line 208
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0

    .line 212
    :cond_1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0
.end method

.method public setHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .prologue
    .line 233
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    .line 235
    return-void
.end method

.method public setMinute(I)V
    .locals 2
    .param p1, "minute"    # I

    .prologue
    .line 252
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    .line 254
    return-void
.end method

.method public setMonth(I)V
    .locals 2
    .param p1, "month"    # I

    .prologue
    const/16 v1, 0xc

    const/4 v0, 0x1

    .line 171
    if-ge p1, v0, :cond_0

    .line 173
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    .line 184
    :goto_0
    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    .line 185
    return-void

    .line 175
    :cond_0
    if-le p1, v1, :cond_1

    .line 177
    iput v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0

    .line 181
    :cond_1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0
.end method

.method public setNanoSecond(I)V
    .locals 1
    .param p1, "nanoSecond"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    .line 292
    return-void
.end method

.method public setSecond(I)V
    .locals 2
    .param p1, "second"    # I

    .prologue
    .line 271
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    .line 273
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v0, 0x1

    .line 329
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    .line 330
    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    .line 331
    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    .line 332
    return-void
.end method

.method public setYear(I)V
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 152
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x270f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getISO8601String()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
