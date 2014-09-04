.class public final Lcom/adobe/xmp/impl/ISO8601Converter;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    .locals 1
    .param p0, "iso8601String"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>()V

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;
    .locals 14
    .param p0, "iso8601String"    # Ljava/lang/String;
    .param p1, "binValue"    # Lcom/adobe/xmp/XMPDateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3a

    const/16 v12, 0x5a

    const/16 v11, 0x2b

    const/16 v10, 0x2d

    const/4 v9, 0x5

    .line 90
    if-nez p0, :cond_0

    .line 92
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Parameter must not be null"

    const/4 v9, 0x4

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 277
    :cond_1
    return-object p1

    .line 99
    :cond_2
    new-instance v1, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v1, p0}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "input":Lcom/adobe/xmp/impl/ParseState;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v7

    if-ne v7, v10, :cond_3

    .line 104
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 108
    :cond_3
    const-string v7, "Invalid year in date string"

    const/16 v8, 0x270f

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    .line 109
    .local v6, "value":I
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_4

    .line 111
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Invalid date string, after year"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 114
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    .line 116
    neg-int v6, v6

    .line 118
    :cond_5
    invoke-interface {p1, v6}, Lcom/adobe/xmp/XMPDateTime;->setYear(I)V

    .line 119
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 127
    const-string v7, "Invalid month in date string"

    const/16 v8, 0xc

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    .line 128
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_6

    .line 130
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Invalid date string, after month"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 132
    :cond_6
    invoke-interface {p1, v6}, Lcom/adobe/xmp/XMPDateTime;->setMonth(I)V

    .line 133
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 141
    const-string v7, "Invalid day in date string"

    const/16 v8, 0x1f

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    .line 142
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    const/16 v8, 0x54

    if-eq v7, v8, :cond_7

    .line 144
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Invalid date string, after day"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 146
    :cond_7
    invoke-interface {p1, v6}, Lcom/adobe/xmp/XMPDateTime;->setDay(I)V

    .line 147
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 151
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 154
    const-string v7, "Invalid hour in date string"

    const/16 v8, 0x17

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    .line 155
    invoke-interface {p1, v6}, Lcom/adobe/xmp/XMPDateTime;->setHour(I)V

    .line 156
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 162
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v13, :cond_9

    .line 164
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 165
    const-string v7, "Invalid minute in date string"

    const/16 v8, 0x3b

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    .line 166
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 167
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v13, :cond_8

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v12, :cond_8

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v11, :cond_8

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_8

    .line 169
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Invalid date string, after minute"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 171
    :cond_8
    invoke-interface {p1, v6}, Lcom/adobe/xmp/XMPDateTime;->setMinute(I)V

    .line 174
    :cond_9
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 178
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v13, :cond_10

    .line 180
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 181
    const-string v7, "Invalid whole seconds in date string"

    const/16 v8, 0x3b

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    .line 182
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_a

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v12, :cond_a

    .line 183
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v11, :cond_a

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_a

    .line 185
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Invalid date string, after whole seconds"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 188
    :cond_a
    invoke-interface {p1, v6}, Lcom/adobe/xmp/XMPDateTime;->setSecond(I)V

    .line 189
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_c

    .line 191
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 192
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v0

    .line 193
    .local v0, "digits":I
    const-string v7, "Invalid fractional seconds in date string"

    const v8, 0x3b9ac9ff

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v6

    .line 194
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 195
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v12, :cond_b

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v11, :cond_b

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_b

    .line 197
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Invalid date string, after fractional second"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 200
    :cond_b
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v7

    sub-int v0, v7, v0

    .line 201
    :goto_0
    const/16 v7, 0x9

    if-gt v0, v7, :cond_e

    .line 205
    :goto_1
    const/16 v7, 0x9

    if-lt v0, v7, :cond_f

    .line 209
    invoke-interface {p1, v6}, Lcom/adobe/xmp/XMPDateTime;->setNanoSecond(I)V

    .line 218
    .end local v0    # "digits":I
    :cond_c
    const/4 v5, 0x0

    .line 219
    .local v5, "tzSign":I
    const/4 v3, 0x0

    .line 220
    .local v3, "tzHour":I
    const/4 v4, 0x0

    .line 222
    .local v4, "tzMinute":I
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 227
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v12, :cond_11

    .line 229
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 268
    :cond_d
    :goto_2
    mul-int/lit16 v7, v3, 0xe10

    mul-int/lit16 v7, v7, 0x3e8

    mul-int/lit8 v8, v4, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    add-int/2addr v7, v8

    mul-int v2, v7, v5

    .line 269
    .local v2, "offset":I
    new-instance v7, Ljava/util/SimpleTimeZone;

    const-string v8, ""

    invoke-direct {v7, v2, v8}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v7}, Lcom/adobe/xmp/XMPDateTime;->setTimeZone(Ljava/util/TimeZone;)V

    .line 271
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 273
    new-instance v7, Lcom/adobe/xmp/XMPException;

    .line 274
    const-string v8, "Invalid date string, extra chars at end"

    .line 273
    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 203
    .end local v2    # "offset":I
    .end local v3    # "tzHour":I
    .end local v4    # "tzMinute":I
    .end local v5    # "tzSign":I
    .restart local v0    # "digits":I
    :cond_e
    div-int/lit8 v6, v6, 0xa

    .line 201
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 207
    :cond_f
    mul-int/lit8 v6, v6, 0xa

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "digits":I
    :cond_10
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v12, :cond_c

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v11, :cond_c

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-eq v7, v10, :cond_c

    .line 214
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Invalid date string, after time"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 231
    .restart local v3    # "tzHour":I
    .restart local v4    # "tzMinute":I
    .restart local v5    # "tzSign":I
    :cond_11
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 233
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v11, :cond_12

    .line 235
    const/4 v5, 0x1

    .line 247
    :goto_3
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 249
    const-string v7, "Invalid time zone hour in date string"

    const/16 v8, 0x17

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v3

    .line 250
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 252
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v13, :cond_14

    .line 254
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 257
    const-string v7, "Invalid time zone minute in date string"

    const/16 v8, 0x3b

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    .line 237
    :cond_12
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v7

    if-ne v7, v10, :cond_13

    .line 239
    const/4 v5, -0x1

    goto :goto_3

    .line 243
    :cond_13
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 261
    :cond_14
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Invalid date string, after time zone hour"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7
.end method

.method public static render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 15
    .param p0, "dateTime"    # Lcom/adobe/xmp/XMPDateTime;

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->hasDate()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 320
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v9, "0000"

    new-instance v10, Ljava/text/DecimalFormatSymbols;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v10, v11}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 321
    .local v1, "df":Ljava/text/DecimalFormat;
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v9

    if-nez v9, :cond_0

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 380
    .end local v1    # "df":Ljava/text/DecimalFormat;
    :goto_0
    return-object v9

    .line 328
    .restart local v1    # "df":Ljava/text/DecimalFormat;
    :cond_0
    const-string v9, "\'-\'00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 329
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v9

    if-nez v9, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 336
    :cond_1
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->hasTime()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 342
    const/16 v9, 0x54

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    const-string v9, "00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 344
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 346
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v9

    if-eqz v9, :cond_3

    .line 351
    :cond_2
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v9

    int-to-double v9, v9

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x41cdcd6500000000L

    div-double/2addr v11, v13

    add-double v3, v9, v11

    .line 353
    .local v3, "seconds":D
    const-string v9, ":00.#########"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    .end local v3    # "seconds":D
    :cond_3
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->hasTimeZone()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 361
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 362
    .local v6, "timeInMillis":J
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 363
    .local v2, "offset":I
    if-nez v2, :cond_5

    .line 366
    const/16 v9, 0x5a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    .end local v1    # "df":Ljava/text/DecimalFormat;
    .end local v2    # "offset":I
    .end local v6    # "timeInMillis":J
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 370
    .restart local v1    # "df":Ljava/text/DecimalFormat;
    .restart local v2    # "offset":I
    .restart local v6    # "timeInMillis":J
    :cond_5
    const v9, 0x36ee80

    div-int v5, v2, v9

    .line 371
    .local v5, "thours":I
    const v9, 0x36ee80

    rem-int v9, v2, v9

    const v10, 0xea60

    div-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 372
    .local v8, "tminutes":I
    const-string v9, "+00;-00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 373
    int-to-long v9, v5

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v9, ":00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 375
    int-to-long v9, v8

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
