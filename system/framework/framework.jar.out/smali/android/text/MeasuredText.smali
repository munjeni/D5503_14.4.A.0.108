.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 50
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    .prologue
    .line 57
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 58
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 59
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 61
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 62
    monitor-exit v3

    .line 70
    :goto_0
    return-object v1

    .line 65
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 70
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    goto :goto_0

    .line 65
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .param p0, "mt"    # Landroid/text/MeasuredText;

    .prologue
    const/4 v3, 0x0

    .line 74
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 75
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 76
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 78
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 79
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 84
    :cond_0
    monitor-exit v2

    .line 86
    .end local v0    # "i":I
    :cond_1
    return-object v3

    .line 77
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 22
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 174
    if-eqz p3, :cond_0

    .line 175
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 178
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    .line 179
    .local v4, "p":I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 181
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v8, 0x0

    .line 184
    .local v8, "flags":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v21

    .line 201
    :cond_1
    return v21

    .line 182
    .end local v8    # "flags":I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 187
    :cond_3
    const/16 v21, 0x0

    .line 188
    .local v21, "totalAdvance":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v4

    .line 189
    .local v20, "level":I
    move v11, v4

    .local v11, "q":I
    add-int/lit8 v19, v4, 0x1

    .local v19, "i":I
    add-int v18, v4, p2

    .line 190
    .local v18, "e":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v19

    move/from16 v0, v20

    if-eq v2, v0, :cond_5

    .line 191
    :cond_4
    and-int/lit8 v2, v20, 0x1

    if-nez v2, :cond_6

    const/4 v8, 0x0

    .line 192
    .restart local v8    # "flags":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    add-float v21, v21, v2

    .line 194
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 197
    move/from16 v11, v19

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v19

    .line 189
    .end local v8    # "flags":I
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 191
    :cond_6
    const/4 v8, 0x1

    goto :goto_2
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 207
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 208
    .local v1, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 210
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v2, p2

    if-ge v7, v2, :cond_1

    .line 214
    aget-object v8, p2, v7

    .line 215
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 216
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 213
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 223
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v0, :cond_3

    .line 224
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 236
    .local v10, "wid":F
    :goto_2
    if-eqz p4, :cond_2

    .line 237
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_5

    .line 238
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 239
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 246
    :cond_2
    :goto_3
    return v10

    .line 227
    .end local v10    # "wid":F
    :cond_3
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 229
    .restart local v10    # "wid":F
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 230
    .local v9, "w":[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 231
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, "e":I
    :goto_4
    if-ge v7, v6, :cond_4

    .line 232
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 231
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 233
    :cond_4
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 241
    .end local v6    # "e":I
    .end local v9    # "w":[F
    :cond_5
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 242
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IZF)I
    .locals 6
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 250
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 251
    .local v1, "w":[F
    if-eqz p2, :cond_3

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 254
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 255
    cmpg-float v2, p3, v4

    if-gez v2, :cond_1

    .line 258
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 256
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 268
    :goto_2
    return v2

    .line 261
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 262
    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_4

    .line 263
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 264
    cmpg-float v2, p3, v4

    if-gez v2, :cond_6

    .line 267
    :cond_4
    :goto_4
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Landroid/text/MeasuredText;->mWidths:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_7

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 265
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 268
    :cond_7
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "width":F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 275
    .local v1, "w":[F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 276
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return v2
.end method

.method processSpans(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "len"    # I

    .prologue
    .line 96
    instance-of v6, p1, Landroid/text/Spanned;

    if-eqz v6, :cond_3

    move-object v3, p1

    .line 97
    check-cast v3, Landroid/text/Spanned;

    .line 98
    .local v3, "spanned":Landroid/text/Spanned;
    const-class v6, Landroid/text/style/ReplacementSpan;

    invoke-interface {v3, p2, p3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 101
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 102
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    sub-int v5, v6, p2

    .line 103
    .local v5, "startInPara":I
    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    sub-int v0, v6, p2

    .line 105
    .local v0, "endInPara":I
    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 106
    :cond_0
    if-le v0, p4, :cond_1

    move v0, p4

    .line 107
    :cond_1
    move v2, v5

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 108
    iget-object v6, p0, Landroid/text/MeasuredText;->mChars:[C

    const v7, 0xfffc

    aput-char v7, v6, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "endInPara":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "spanned":Landroid/text/Spanned;
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "startInPara":I
    :cond_3
    return-void
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 118
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 119
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    .line 121
    sub-int v2, p3, p2

    .line 122
    .local v2, "len":I
    iput v2, p0, Landroid/text/MeasuredText;->mLen:I

    .line 123
    iput v5, p0, Landroid/text/MeasuredText;->mPos:I

    .line 125
    iget-object v3, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v3, v3

    if-ge v3, v2, :cond_1

    .line 126
    :cond_0
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 128
    :cond_1
    iget-object v3, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/text/MeasuredText;->mChars:[C

    array-length v3, v3

    if-ge v3, v2, :cond_3

    .line 129
    :cond_2
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v3

    new-array v3, v3, [C

    iput-object v3, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 134
    :cond_3
    instance-of v3, p1, Landroid/text/GetSourceChars;

    if-eqz v3, :cond_5

    move-object v3, p1

    .line 135
    check-cast v3, Landroid/text/GetSourceChars;

    iget-object v4, p0, Landroid/text/MeasuredText;->mChars:[C

    invoke-interface {v3, p2, p3, v4, v5}, Landroid/text/GetSourceChars;->getSourceChars(II[CI)V

    .line 140
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v2}, Landroid/text/MeasuredText;->processSpans(Ljava/lang/CharSequence;III)V

    .line 142
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, v3, :cond_4

    sget-object v3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, v3, :cond_4

    sget-object v3, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v3, :cond_6

    :cond_4
    iget-object v3, p0, Landroid/text/MeasuredText;->mChars:[C

    invoke-static {v3, v5, v2}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 146
    iput v0, p0, Landroid/text/MeasuredText;->mDir:I

    .line 147
    iput-boolean v0, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 169
    :goto_1
    invoke-virtual {p0, p1, p2, p3, v2}, Landroid/text/MeasuredText;->processSpans(Ljava/lang/CharSequence;III)V

    .line 171
    return-void

    .line 137
    :cond_5
    iget-object v3, p0, Landroid/text/MeasuredText;->mChars:[C

    invoke-static {p1, p2, p3, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    goto :goto_0

    .line 149
    :cond_6
    iget-object v3, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v3, v3

    if-ge v3, v2, :cond_8

    .line 150
    :cond_7
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 153
    :cond_8
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v3, :cond_9

    .line 154
    const/4 v0, 0x1

    .line 165
    .local v0, "bidiRequest":I
    :goto_2
    iget-object v3, p0, Landroid/text/MeasuredText;->mChars:[C

    iget-object v4, p0, Landroid/text/MeasuredText;->mLevels:[B

    invoke-static {v0, v3, v4, v2, v5}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v3

    iput v3, p0, Landroid/text/MeasuredText;->mDir:I

    .line 166
    iput-boolean v5, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_1

    .line 155
    .end local v0    # "bidiRequest":I
    :cond_9
    sget-object v3, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v3, :cond_a

    .line 156
    const/4 v0, -0x1

    .restart local v0    # "bidiRequest":I
    goto :goto_2

    .line 157
    .end local v0    # "bidiRequest":I
    :cond_a
    sget-object v3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v3, :cond_b

    .line 158
    const/4 v0, 0x2

    .restart local v0    # "bidiRequest":I
    goto :goto_2

    .line 159
    .end local v0    # "bidiRequest":I
    :cond_b
    sget-object v3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v3, :cond_c

    .line 160
    const/4 v0, -0x2

    .restart local v0    # "bidiRequest":I
    goto :goto_2

    .line 162
    .end local v0    # "bidiRequest":I
    :cond_c
    iget-object v3, p0, Landroid/text/MeasuredText;->mChars:[C

    invoke-interface {p4, v3, v5, v2}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v1

    .line 163
    .local v1, "isRtl":Z
    if-eqz v1, :cond_d

    const/4 v0, -0x1

    .restart local v0    # "bidiRequest":I
    :cond_d
    goto :goto_2
.end method

.method setPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 90
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    .line 91
    return-void
.end method
