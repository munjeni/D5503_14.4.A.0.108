.class public Lcom/sonyericsson/conversations/ui/util/DateFormatter;
.super Ljava/lang/Object;
.source "DateFormatter.java"


# static fields
.field private static final FORMAT_LAST:I = 0x8

.field private static final FORMAT_MONTH_DAY_AND_TIME:I = 0x3

.field private static final FORMAT_MONTH_DAY_AND_YEAR:I = 0x4

.field private static final FORMAT_MONTH_DAY_YEAR_AND_TIME:I = 0x5

.field private static final FORMAT_TIME_ONLY:I = 0x0

.field private static final FORMAT_WEEKDAY:I = 0x7

.field private static final FORMAT_WEEKDAY_AND_TIME:I = 0x2

.field private static final FORMAT_YESTERDAY:I = 0x6

.field private static final FORMAT_YESTERDAY_AND_TIME:I = 0x1

.field private static final INTERVAL_FUTURE:I = 0x0

.field private static final INTERVAL_LAST:I = 0x6

.field private static final INTERVAL_OLDER_THAN_ONE_MONTH:I = 0x5

.field private static final INTERVAL_TODAY:I = 0x1

.field private static final INTERVAL_UP_TO_ONE_MONTH:I = 0x4

.field private static final INTERVAL_UP_TO_ONE_WEEK:I = 0x3

.field private static final INTERVAL_YESTERDAY:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFormatters:[Ljava/lang/String;

.field private mIntervals:[J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->createIntervals()[J

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mIntervals:[J

    .line 156
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->createFormatters(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mFormatters:[Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mContext:Landroid/content/Context;

    .line 158
    return-void
.end method

.method private static createFormatters(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/16 v4, 0x8

    new-array v1, v4, [Ljava/lang/String;

    .line 68
    .local v1, "dateFormats":[Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 73
    .local v0, "b24":Z
    if-eqz v0, :cond_0

    .line 74
    const-string v3, "HH:mm"

    .line 81
    .local v3, "timePattern":Ljava/lang/String;
    :goto_0
    const/16 v4, 0x48

    const/16 v5, 0x6b

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 83
    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 84
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070180

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 88
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "E "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 89
    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-object v5, v1, v4

    .line 91
    invoke-static {p0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 92
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x4

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 94
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 95
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 97
    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700dc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 101
    const/4 v4, 0x7

    const-string v5, "E"

    aput-object v5, v1, v4

    .line 103
    return-object v1

    .line 76
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v3    # "timePattern":Ljava/lang/String;
    :cond_0
    const-string v3, "h:mm a"

    .restart local v3    # "timePattern":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static createIntervals()[J
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 109
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 110
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 113
    new-array v1, v8, [J

    .line 115
    .local v1, "intervals":[J
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aput-wide v2, v1, v6

    .line 117
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 118
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aput-wide v2, v1, v4

    .line 120
    const/4 v2, -0x2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 121
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aput-wide v2, v1, v7

    .line 126
    const/4 v2, -0x5

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 127
    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 131
    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 132
    const/4 v2, -0x1

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->add(II)V

    .line 133
    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 135
    const-wide/16 v2, 0x0

    aput-wide v2, v1, v5

    .line 137
    return-object v1
.end method

.method public static getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getInterval(J)I
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, "interval":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mIntervals:[J

    aget-wide v1, v1, v0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 238
    .end local v0    # "interval":I
    :goto_1
    return v0

    .line 233
    .restart local v0    # "interval":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, 0x5

    goto :goto_1
.end method


# virtual methods
.method public format(JZ)Ljava/lang/String;
    .locals 10
    .param p1, "date"    # J
    .param p3, "isDefaultFormatPattern"    # Z

    .prologue
    const-wide/16 v3, 0x0

    .line 169
    if-eqz p3, :cond_0

    .line 170
    const/4 v8, 0x5

    .line 195
    .local v8, "formatter":I
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mFormatters:[Ljava/lang/String;

    aget-object v0, v0, v8

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v8    # "formatter":I
    :goto_1
    return-object v0

    .line 172
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getInterval(J)I

    move-result v9

    .line 173
    .local v9, "interval":I
    packed-switch v9, :pswitch_data_0

    .line 190
    const/4 v8, 0x4

    .restart local v8    # "formatter":I
    goto :goto_0

    .line 175
    .end local v8    # "formatter":I
    :pswitch_0
    const/4 v8, 0x0

    .line 176
    .restart local v8    # "formatter":I
    goto :goto_0

    .line 179
    .end local v8    # "formatter":I
    :pswitch_1
    const/4 v8, 0x1

    .line 180
    .restart local v8    # "formatter":I
    goto :goto_0

    .line 183
    .end local v8    # "formatter":I
    :pswitch_2
    const/4 v8, 0x2

    .line 184
    .restart local v8    # "formatter":I
    goto :goto_0

    .line 187
    .end local v8    # "formatter":I
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-wide v1, p1

    move-wide v5, v3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public formatConversationListDate(J)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getInterval(J)I

    move-result v1

    .line 215
    .local v1, "interval":I
    packed-switch v1, :pswitch_data_0

    .line 226
    const/4 v0, 0x4

    .line 229
    .local v0, "formatter":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->mFormatters:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 217
    .end local v0    # "formatter":I
    :pswitch_0
    const/4 v0, 0x0

    .line 218
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 220
    .end local v0    # "formatter":I
    :pswitch_1
    const/4 v0, 0x6

    .line 221
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 223
    .end local v0    # "formatter":I
    :pswitch_2
    const/4 v0, 0x7

    .line 224
    .restart local v0    # "formatter":I
    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
