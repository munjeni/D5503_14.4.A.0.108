.class Landroid/mtp/MtpDeviceServiceTool;
.super Ljava/lang/Object;
.source "MtpDeviceServiceTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil;,
        Landroid/mtp/MtpDeviceServiceTool$EventRule;
    }
.end annotation


# static fields
.field private static final FORMAT_DATE:Ljava/lang/String; = "yyyyMMdd"

.field private static final FORMAT_DATE_TIME_T:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss"

.field private static final FORMAT_DATE_TIME_TZ:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss\'Z\'"

.field private static final ONE_DAY_MILLISECONDS:J = 0x5265c00L

.field public static final PC_DAILY:I = 0x1

.field public static final PC_YEARLY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MtpDeviceServiceTool"

.field private static final WEEK_DAY_VALUE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDeviceServiceTool;->WEEK_DAY_VALUE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 18
    invoke-static {p0}, Landroid/mtp/MtpDeviceServiceTool;->getDurPattern(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)[I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 18
    invoke-static {p0}, Landroid/mtp/MtpDeviceServiceTool;->parseDayofWeekToString(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Landroid/mtp/MtpDeviceServiceTool;->parseDuration(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Landroid/mtp/MtpDeviceServiceTool;->getDurationMillis(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500([I)I
    .locals 1
    .param p0, "x0"    # [I

    .prologue
    .line 18
    invoke-static {p0}, Landroid/mtp/MtpDeviceServiceTool;->parseDayofWeekToInt([I)I

    move-result v0

    return v0
.end method

.method public static formatDateTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # J
    .param p2, "timeZoneStr"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 246
    .local v1, "timeZone":Ljava/util/TimeZone;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 248
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strDateTime"    # Ljava/lang/String;

    .prologue
    .line 263
    const-string v0, ".*\\d{8}T\\d{6}\\.\\d.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "\\.\\d"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 266
    .end local p0    # "strDateTime":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getDateTime2445(J)Ljava/lang/String;
    .locals 1
    .param p0, "timeMillis"    # J

    .prologue
    .line 378
    const-string v0, "UTC"

    invoke-static {p0, p1, v0}, Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDateTime2445(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "timeMillis"    # J
    .param p2, "timeZoneStr"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 214
    .local v1, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 215
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getDurPattern(I)Ljava/lang/String;
    .locals 2
    .param p0, "durationMinValue"    # I

    .prologue
    .line 279
    if-lez p0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDurationMillis(Ljava/lang/String;)J
    .locals 2
    .param p0, "durPattern"    # Ljava/lang/String;

    .prologue
    .line 274
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    .line 275
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Landroid/mtp/MtpDeviceServiceTool;->parseDuration(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static parseDateTime2445(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p0, "formatTimeStr"    # Ljava/lang/String;
    .param p1, "timeZoneStr"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 226
    if-nez p0, :cond_0

    .line 240
    :goto_0
    return-wide v4

    .line 228
    :cond_0
    :try_start_0
    const-string/jumbo v1, "yyyyMMdd"

    .line 229
    .local v1, "formatStr":Ljava/lang/String;
    const-string v6, "T"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    const-string v6, "Z"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    .line 233
    :cond_1
    :goto_1
    invoke-static {p0}, Landroid/mtp/MtpDeviceServiceTool;->formatDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 234
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 236
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 237
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    .line 230
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    :cond_2
    const-string/jumbo v1, "yyyyMMdd\'T\'HHmmss"
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    .end local v1    # "formatStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/text/ParseException;
    const-string v6, "MtpDeviceServiceTool"

    const-string/jumbo v7, "parseDateTime2445"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static parseDayofWeekToInt([I)I
    .locals 6
    .param p0, "weekDays"    # [I

    .prologue
    .line 354
    if-nez p0, :cond_1

    const/4 v4, 0x0

    .line 359
    :cond_0
    return v4

    .line 355
    :cond_1
    const/4 v4, 0x0

    .line 356
    .local v4, "res":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 357
    .local v1, "day":I
    shr-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static parseDayofWeekToString(I)[I
    .locals 8
    .param p0, "value"    # I

    .prologue
    const/4 v7, 0x0

    .line 363
    const/4 v5, 0x7

    new-array v0, v5, [I

    .line 364
    .local v0, "array":[I
    const/4 v2, 0x0

    .line 365
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 366
    and-int/lit8 v5, p0, 0x1

    if-lez v5, :cond_0

    .line 367
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    aget v5, v0, v2

    sget-object v6, Landroid/mtp/MtpDeviceServiceTool;->WEEK_DAY_VALUE:[I

    aget v6, v6, v4

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    aput v5, v0, v2

    move v2, v3

    .line 369
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :cond_0
    shr-int/lit8 p0, p0, 0x1

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 371
    :cond_1
    new-array v1, v2, [I

    .line 372
    .local v1, "array2":[I
    invoke-static {v0, v7, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    return-object v1
.end method

.method private static parseDuration(Ljava/lang/String;)J
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 291
    const/4 v8, 0x1

    .line 292
    .local v8, "sign":I
    const/4 v9, 0x0

    .line 293
    .local v9, "weeks":I
    const/4 v1, 0x0

    .line 294
    .local v1, "days":I
    const/4 v2, 0x0

    .line 295
    .local v2, "hours":I
    const/4 v5, 0x0

    .line 296
    .local v5, "minutes":I
    const/4 v7, 0x0

    .line 298
    .local v7, "seconds":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 299
    .local v4, "len":I
    const/4 v3, 0x0

    .line 301
    .local v3, "index":I
    const/4 v12, 0x1

    if-ge v4, v12, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-wide v10

    .line 304
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 305
    .local v0, "c":C
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_3

    .line 306
    const/4 v8, -0x1

    .line 307
    add-int/lit8 v3, v3, 0x1

    .line 311
    :cond_2
    :goto_1
    if-le v4, v3, :cond_0

    .line 314
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 315
    const/16 v12, 0x50

    if-eq v0, v12, :cond_4

    .line 316
    const-string v12, "MtpDeviceServiceTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "parseDuration(str=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\') expected \'P\' at index="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_3
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_2

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 319
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 320
    const/4 v6, 0x0

    .line 321
    .local v6, "n":I
    :goto_2
    if-ge v3, v4, :cond_c

    .line 322
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 323
    const/16 v12, 0x30

    if-lt v0, v12, :cond_6

    const/16 v12, 0x39

    if-gt v0, v12, :cond_6

    .line 324
    mul-int/lit8 v6, v6, 0xa

    .line 325
    add-int/lit8 v12, v0, -0x30

    add-int/2addr v6, v12

    .line 321
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 326
    :cond_6
    const/16 v12, 0x57

    if-ne v0, v12, :cond_7

    .line 327
    move v9, v6

    .line 328
    const/4 v6, 0x0

    goto :goto_3

    .line 329
    :cond_7
    const/16 v12, 0x48

    if-ne v0, v12, :cond_8

    .line 330
    move v2, v6

    .line 331
    const/4 v6, 0x0

    goto :goto_3

    .line 332
    :cond_8
    const/16 v12, 0x4d

    if-ne v0, v12, :cond_9

    .line 333
    move v5, v6

    .line 334
    const/4 v6, 0x0

    goto :goto_3

    .line 335
    :cond_9
    const/16 v12, 0x53

    if-ne v0, v12, :cond_a

    .line 336
    move v7, v6

    .line 337
    const/4 v6, 0x0

    goto :goto_3

    .line 338
    :cond_a
    const/16 v12, 0x44

    if-ne v0, v12, :cond_b

    .line 339
    move v1, v6

    .line 340
    const/4 v6, 0x0

    goto :goto_3

    .line 341
    :cond_b
    const/16 v12, 0x54

    if-eq v0, v12, :cond_5

    .line 343
    const-string v12, "MtpDeviceServiceTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "parseDuration(str=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\') unexpected char \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' at index="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 348
    :cond_c
    mul-int/lit16 v10, v8, 0x3e8

    const v11, 0x93a80

    mul-int/2addr v11, v9

    const v12, 0x15180

    mul-int/2addr v12, v1

    add-int/2addr v11, v12

    mul-int/lit16 v12, v2, 0xe10

    add-int/2addr v11, v12

    mul-int/lit8 v12, v5, 0x3c

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    mul-int/2addr v10, v11

    int-to-long v10, v10

    goto/16 :goto_0
.end method
