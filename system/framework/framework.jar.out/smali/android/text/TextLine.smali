.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 64
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 66
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 68
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    return-void
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "needWidth"    # Z

    .prologue
    .line 400
    iget v1, p0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    .line 401
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v13, v1

    .line 402
    .local v13, "w":F
    add-float v7, p5, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 407
    .end local v13    # "w":F
    :goto_1
    return v13

    .line 400
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 407
    :cond_1
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v13

    goto :goto_1
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "contextStart"    # I
    .param p6, "contextEnd"    # I
    .param p7, "runIsRtl"    # Z
    .param p8, "x"    # F
    .param p9, "y"    # I

    .prologue
    .line 994
    if-eqz p7, :cond_0

    const/4 v9, 0x1

    .line 995
    .local v9, "flags":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_1

    .line 996
    sub-int v4, p4, p3

    .line 997
    .local v4, "count":I
    sub-int v6, p6, p5

    .line 998
    .local v6, "contextCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move/from16 v0, p9

    int-to-float v8, v0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p8

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 1005
    .end local v4    # "count":I
    .end local v6    # "contextCount":I
    :goto_1
    return-void

    .line 994
    .end local v9    # "flags":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1001
    .restart local v9    # "flags":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v20, v0

    .line 1002
    .local v20, "delta":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v12, v20, p3

    add-int v13, v20, p4

    add-int v14, v20, p5

    add-int v15, v20, p6

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v10, p1

    move/from16 v16, p8

    move/from16 v18, v9

    move-object/from16 v19, p2

    invoke-virtual/range {v10 .. v19}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "wp"    # Landroid/text/TextPaint;

    .prologue
    .line 694
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 695
    .local v1, "previousTop":I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 696
    .local v2, "previousAscent":I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 697
    .local v3, "previousDescent":I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 698
    .local v4, "previousBottom":I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 700
    .local v5, "previousLeading":I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    .line 702
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 704
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 23
    .param p1, "runIndex"    # I
    .param p2, "runStart"    # I
    .param p3, "runLimit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "after"    # Z

    .prologue
    .line 627
    if-ltz p1, :cond_0

    if-eqz p6, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    :goto_0
    move/from16 v0, p5

    if-ne v0, v3, :cond_4

    .line 631
    :cond_0
    if-eqz p6, :cond_3

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    .line 685
    :cond_1
    :goto_1
    return v20

    .line 627
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 634
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    goto :goto_1

    .line 637
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 638
    .local v2, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 640
    move/from16 v4, p2

    .line 642
    .local v4, "spanStart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_6

    .line 643
    move/from16 v20, p3

    .line 679
    .local v20, "spanLimit":I
    :cond_5
    if-eqz p4, :cond_b

    const/4 v6, 0x1

    .line 680
    .local v6, "flags":I
    :goto_2
    if-eqz p6, :cond_c

    const/4 v8, 0x0

    .line 681
    .local v8, "cursorOpt":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v3, :cond_d

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v20, v4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v20

    goto :goto_1

    .line 645
    .end local v6    # "flags":I
    .end local v8    # "cursorOpt":I
    .end local v20    # "spanLimit":I
    :cond_6
    if-eqz p6, :cond_7

    add-int/lit8 v22, p5, 0x1

    .line 646
    .local v22, "target":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v17, v3, p3

    .line 648
    .local v17, "limit":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    move/from16 v0, v17

    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    .line 650
    .restart local v20    # "spanLimit":I
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v20

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 658
    .local v21, "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 660
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_5

    .line 661
    const/16 v18, 0x0

    .line 662
    .local v18, "replacement":Landroid/text/style/ReplacementSpan;
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_6
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_a

    .line 663
    aget-object v19, v21, v16

    .line 664
    .local v19, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_9

    move-object/from16 v18, v19

    .line 665
    check-cast v18, Landroid/text/style/ReplacementSpan;

    .line 662
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v18    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .end local v20    # "spanLimit":I
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_7
    move/from16 v22, p5

    .line 645
    goto :goto_4

    .line 653
    .restart local v17    # "limit":I
    .restart local v20    # "spanLimit":I
    .restart local v22    # "target":I
    :cond_8
    move/from16 v4, v20

    goto :goto_5

    .line 667
    .restart local v16    # "j":I
    .restart local v18    # "replacement":Landroid/text/style/ReplacementSpan;
    .restart local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_7

    .line 671
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_a
    if-eqz v18, :cond_5

    .line 674
    if-nez p6, :cond_1

    move/from16 v20, v4

    goto/16 :goto_1

    .line 679
    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v18    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 680
    .restart local v6    # "flags":I
    :cond_c
    const/4 v8, 0x2

    goto/16 :goto_3

    .line 685
    .restart local v8    # "cursorOpt":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v3, v20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v3, p5

    move-object v9, v2

    move v13, v6

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    goto/16 :goto_1
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 25
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "runIsRtl"    # Z
    .param p6, "c"    # Landroid/graphics/Canvas;
    .param p7, "x"    # F
    .param p8, "top"    # I
    .param p9, "y"    # I
    .param p10, "bottom"    # I
    .param p11, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p12, "needWidth"    # Z

    .prologue
    .line 832
    const/16 v24, 0x0

    .line 834
    .local v24, "ret":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v2, p3

    .line 835
    .local v5, "textStart":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v2, p4

    .line 837
    .local v6, "textLimit":I
    if-nez p12, :cond_0

    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    .line 838
    :cond_0
    const/4 v8, 0x0

    .line 839
    .local v8, "previousTop":I
    const/4 v9, 0x0

    .line 840
    .local v9, "previousAscent":I
    const/4 v10, 0x0

    .line 841
    .local v10, "previousDescent":I
    const/4 v11, 0x0

    .line 842
    .local v11, "previousBottom":I
    const/4 v12, 0x0

    .line 844
    .local v12, "previousLeading":I
    if-eqz p11, :cond_6

    const/16 v23, 0x1

    .line 846
    .local v23, "needUpdateMetrics":Z
    :goto_0
    if-eqz v23, :cond_1

    .line 847
    move-object/from16 v0, p11

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 849
    move-object/from16 v0, p11

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 850
    move-object/from16 v0, p11

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 851
    move-object/from16 v0, p11

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 852
    move-object/from16 v0, p11

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 853
    move-object/from16 v0, p11

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 856
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p11

    invoke-virtual/range {v2 .. v7}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v24, v0

    .line 858
    if-eqz v23, :cond_2

    move-object/from16 v7, p11

    .line 859
    invoke-static/range {v7 .. v12}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 864
    .end local v8    # "previousTop":I
    .end local v9    # "previousAscent":I
    .end local v10    # "previousDescent":I
    .end local v11    # "previousBottom":I
    .end local v12    # "previousLeading":I
    .end local v23    # "needUpdateMetrics":Z
    :cond_2
    if-eqz p6, :cond_4

    .line 865
    if-eqz p5, :cond_3

    .line 866
    sub-float p7, p7, v24

    .line 868
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v13, p1

    move-object/from16 v14, p6

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, p7

    move/from16 v19, p8

    move/from16 v20, p9

    move/from16 v21, p10

    move-object/from16 v22, p2

    invoke-virtual/range {v13 .. v22}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 872
    :cond_4
    if-eqz p5, :cond_5

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    .end local v24    # "ret":F
    :cond_5
    return v24

    .line 844
    .restart local v8    # "previousTop":I
    .restart local v9    # "previousAscent":I
    .restart local v10    # "previousDescent":I
    .restart local v11    # "previousBottom":I
    .restart local v12    # "previousLeading":I
    .restart local v24    # "ret":F
    :cond_6
    const/16 v23, 0x0

    goto :goto_0
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 29
    .param p1, "start"    # I
    .param p2, "measureLimit"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "c"    # Landroid/graphics/Canvas;
    .param p6, "x"    # F
    .param p7, "top"    # I
    .param p8, "y"    # I
    .param p9, "bottom"    # I
    .param p10, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p11, "needWidth"    # Z

    .prologue
    .line 899
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 901
    .local v3, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 902
    if-eqz p10, :cond_0

    .line 903
    move-object/from16 v0, p10

    invoke-static {v0, v3}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 905
    :cond_0
    const/4 v2, 0x0

    .line 975
    .end local v3    # "wp":Landroid/text/TextPaint;
    :goto_0
    return v2

    .line 908
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v2, :cond_4

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 910
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 911
    move/from16 v5, p2

    .line 912
    .local v5, "mlimit":I
    if-nez p11, :cond_2

    move/from16 v0, p2

    if-ge v5, v0, :cond_3

    :cond_2
    const/4 v15, 0x1

    :goto_1
    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v2 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 916
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v5    # "mlimit":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/TextLine;->mStart:I

    add-int v8, v8, p3

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/TextLine;->mStart:I

    add-int v8, v8, p3

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 924
    move/from16 v27, p6

    .line 925
    .local v27, "originalX":F
    move/from16 v9, p1

    .local v9, "i":I
    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_12

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 927
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p3

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v24, v2, v4

    .line 931
    .local v24, "inext":I
    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 933
    .restart local v5    # "mlimit":I
    const/4 v7, 0x0

    .line 935
    .local v7, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v12, 0x0

    .local v12, "j":I
    move/from16 v25, v12

    .end local v12    # "j":I
    .local v25, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v25

    if-ge v0, v2, :cond_8

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v9

    if-gt v2, v4, :cond_6

    .line 935
    :cond_5
    :goto_4
    add-int/lit8 v12, v25, 0x1

    .end local v25    # "j":I
    .restart local v12    # "j":I
    move/from16 v25, v12

    .end local v12    # "j":I
    .restart local v25    # "j":I
    goto :goto_3

    .line 940
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v28, v2, v25

    .line 941
    .local v28, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v28

    instance-of v2, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_7

    move-object/from16 v7, v28

    .line 942
    check-cast v7, Landroid/text/style/ReplacementSpan;

    goto :goto_4

    .line 946
    :cond_7
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_4

    .line 950
    .end local v28    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_8
    if-eqz v7, :cond_c

    .line 951
    if-nez p11, :cond_9

    move/from16 v0, p2

    if-ge v5, v0, :cond_b

    :cond_9
    const/16 v18, 0x1

    :goto_5
    move-object/from16 v6, p0

    move-object v8, v3

    move v10, v5

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v6 .. v18}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    move/from16 v12, v25

    .line 925
    .end local v25    # "j":I
    .restart local v12    # "j":I
    :cond_a
    move/from16 v9, v24

    goto/16 :goto_2

    .line 951
    .end local v12    # "j":I
    .restart local v25    # "j":I
    :cond_b
    const/16 v18, 0x0

    goto :goto_5

    .line 956
    :cond_c
    move v12, v9

    .end local v25    # "j":I
    .restart local v12    # "j":I
    :goto_6
    if-ge v12, v5, :cond_a

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v13, v2, v4

    .line 960
    .local v13, "jnext":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 961
    const/16 v26, 0x0

    .local v26, "k":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v26

    if-ge v0, v2, :cond_f

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v26

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v13

    if-ge v2, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v26

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v12

    if-gt v2, v4, :cond_e

    .line 961
    :cond_d
    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 966
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v28, v2, v26

    .line 967
    .local v28, "span":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_8

    .line 970
    .end local v28    # "span":Landroid/text/style/CharacterStyle;
    :cond_f
    if-nez p11, :cond_10

    move/from16 v0, p2

    if-ge v13, v0, :cond_11

    :cond_10
    const/16 v23, 0x1

    :goto_9
    move-object/from16 v10, p0

    move-object v11, v3

    move v14, v9

    move/from16 v15, v24

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v10 .. v23}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    .line 956
    move v12, v13

    goto/16 :goto_6

    .line 970
    :cond_11
    const/16 v23, 0x0

    goto :goto_9

    .line 975
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v5    # "mlimit":I
    .end local v7    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v12    # "j":I
    .end local v13    # "jnext":I
    .end local v24    # "inext":I
    .end local v26    # "k":I
    :cond_12
    sub-float v2, p6, v27

    goto/16 :goto_0
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 27
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "c"    # Landroid/graphics/Canvas;
    .param p8, "x"    # F
    .param p9, "top"    # I
    .param p10, "y"    # I
    .param p11, "bottom"    # I
    .param p12, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p13, "needWidth"    # Z

    .prologue
    .line 739
    if-eqz p12, :cond_0

    .line 740
    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 743
    :cond_0
    sub-int v5, p3, p2

    .line 745
    .local v5, "runLen":I
    if-nez v5, :cond_2

    .line 746
    const/16 v26, 0x0

    .line 805
    :cond_1
    :goto_0
    return v26

    .line 749
    :cond_2
    const/16 v26, 0x0

    .line 751
    .local v26, "ret":F
    sub-int v7, p5, p4

    .line 752
    .local v7, "contextLen":I
    if-nez p13, :cond_3

    if-eqz p7, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-nez v2, :cond_3

    if-eqz p6, :cond_4

    .line 753
    :cond_3
    if-eqz p6, :cond_9

    const/4 v8, 0x1

    .line 754
    .local v8, "flags":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_a

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v26

    .line 765
    .end local v8    # "flags":I
    :cond_4
    :goto_2
    if-eqz p7, :cond_8

    .line 766
    if-eqz p6, :cond_5

    .line 767
    sub-float p8, p8, v26

    .line 770
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_6

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v24

    .line 772
    .local v24, "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v25

    .line 774
    .local v25, "previousStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 775
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 776
    move/from16 v0, p9

    int-to-float v11, v0

    add-float v12, p8, v26

    move/from16 v0, p11

    int-to-float v13, v0

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 778
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 779
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 782
    .end local v24    # "previousColor":I
    .end local v25    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_7

    .line 784
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v2, v2, p10

    int-to-float v2, v2

    const v3, 0x3de38e39

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    mul-float/2addr v3, v4

    add-float v11, v2, v3

    .line 786
    .local v11, "underlineTop":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v24

    .line 787
    .restart local v24    # "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v25

    .line 788
    .restart local v25    # "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v23

    .line 790
    .local v23, "previousAntiAlias":Z
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 791
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 793
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 794
    add-float v12, p8, v26

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineThickness:F

    add-float v13, v11, v2

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 796
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 797
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 798
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 801
    .end local v11    # "underlineTop":F
    .end local v23    # "previousAntiAlias":Z
    .end local v24    # "previousColor":I
    .end local v25    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v21, p10, v2

    move-object/from16 v12, p0

    move-object/from16 v13, p7

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p8

    invoke-direct/range {v12 .. v21}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 805
    :cond_8
    if-eqz p6, :cond_1

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    goto/16 :goto_0

    .line 753
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 758
    .restart local v8    # "flags":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v22, v0

    .line 759
    .local v22, "delta":I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v11, v22, p2

    add-int v12, v22, p3

    add-int v13, v22, p4

    add-int v14, v22, p5

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, p1

    move v15, v8

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F

    move-result v26

    goto/16 :goto_2
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12
    .param p1, "start"    # I
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 426
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method static obtain()Landroid/text/TextLine;
    .locals 5

    .prologue
    .line 80
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v3

    .line 81
    :try_start_0
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 82
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v2, v0

    .line 84
    .local v1, "tl":Landroid/text/TextLine;
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 85
    monitor-exit v3

    .line 93
    :goto_0
    return-object v1

    .line 88
    .end local v1    # "tl":Landroid/text/TextLine;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    .line 93
    .restart local v1    # "tl":Landroid/text/TextLine;
    goto :goto_0

    .line 88
    .end local v1    # "tl":Landroid/text/TextLine;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .param p0, "tl"    # Landroid/text/TextLine;

    .prologue
    const/4 v3, 0x0

    .line 104
    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 105
    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 106
    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 108
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 109
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 110
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 112
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 114
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 115
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v1, v0

    .line 119
    :cond_0
    monitor-exit v2

    .line 120
    return-object v3

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "previousTop"    # I
    .param p2, "previousAscent"    # I
    .param p3, "previousDescent"    # I
    .param p4, "previousBottom"    # I
    .param p5, "previousLeading"    # I

    .prologue
    .line 708
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 709
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 710
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 711
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 712
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 713
    return-void
.end method


# virtual methods
.method ascent(I)F
    .locals 9
    .param p1, "pos"    # I

    .prologue
    .line 1015
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v6, :cond_0

    .line 1016
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    .line 1030
    :goto_0
    return v6

    .line 1019
    :cond_0
    iget v6, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p1, v6

    .line 1020
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int/lit8 v7, p1, 0x1

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, p1, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1021
    .local v4, "spans":[Landroid/text/style/MetricAffectingSpan;
    array-length v6, v4

    if-nez v6, :cond_1

    .line 1022
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_0

    .line 1025
    :cond_1
    iget-object v5, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1026
    .local v5, "wp":Landroid/text/TextPaint;
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1027
    move-object v0, v4

    .local v0, "arr$":[Landroid/text/style/MetricAffectingSpan;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1028
    .local v3, "span":Landroid/text/style/MetricAffectingSpan;
    invoke-virtual {v3, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 1027
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1030
    .end local v3    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_2
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 25
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "top"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v2, :cond_2

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_1

    .line 197
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_2

    .line 201
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    goto :goto_0

    .line 206
    :cond_2
    const/16 v17, 0x0

    .line 207
    .local v17, "h":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v22, v0

    .line 208
    .local v22, "runs":[I
    const/16 v16, 0x0

    .line 210
    .local v16, "emojiRect":Landroid/graphics/RectF;
    move-object/from16 v0, v22

    array-length v2, v0

    add-int/lit8 v19, v2, -0x2

    .line 211
    .local v19, "lastRunIndex":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 212
    aget v21, v22, v18

    .line 213
    .local v21, "runStart":I
    add-int/lit8 v2, v18, 0x1

    aget v2, v22, v2

    const v3, 0x3ffffff

    and-int/2addr v2, v3

    add-int v20, v21, v2

    .line 214
    .local v20, "runLimit":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v20

    if-le v0, v2, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v20, v0

    .line 217
    :cond_3
    add-int/lit8 v2, v18, 0x1

    aget v2, v22, v2

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    const/4 v6, 0x1

    .line 219
    .local v6, "runIsRtl":Z
    :goto_2
    move/from16 v4, v21

    .line 220
    .local v4, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_a

    move/from16 v5, v21

    .local v5, "j":I
    :goto_3
    move/from16 v0, v20

    if-gt v5, v0, :cond_f

    .line 221
    const/4 v15, 0x0

    .line 222
    .local v15, "codept":I
    const/4 v13, 0x0

    .line 224
    .local v13, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_4

    move/from16 v0, v20

    if-ge v5, v0, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v15, v2, v5

    .line 226
    const v2, 0xd800

    if-lt v15, v2, :cond_4

    const v2, 0xdc00

    if-ge v15, v2, :cond_4

    add-int/lit8 v2, v5, 0x1

    move/from16 v0, v20

    if-ge v2, v0, :cond_4

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v15

    .line 228
    sget v2, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v15, v2, :cond_b

    sget v2, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v15, v2, :cond_b

    .line 229
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v2, v15}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 237
    :cond_4
    move/from16 v0, v20

    if-eq v5, v0, :cond_5

    const/16 v2, 0x9

    if-eq v15, v2, :cond_5

    if-eqz v13, :cond_8

    .line 238
    :cond_5
    add-float v7, p2, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-eq v5, v2, :cond_c

    :cond_6
    const/4 v11, 0x1

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v2

    add-float v17, v17, v2

    .line 241
    const/16 v2, 0x9

    if-ne v15, v2, :cond_d

    .line 242
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v17, v2, v3

    .line 258
    :cond_7
    :goto_5
    add-int/lit8 v4, v5, 0x1

    .line 220
    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 217
    .end local v4    # "segstart":I
    .end local v5    # "j":I
    .end local v6    # "runIsRtl":Z
    .end local v13    # "bm":Landroid/graphics/Bitmap;
    .end local v15    # "codept":I
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .restart local v4    # "segstart":I
    .restart local v6    # "runIsRtl":Z
    :cond_a
    move/from16 v5, v20

    .line 220
    goto/16 :goto_3

    .line 230
    .restart local v5    # "j":I
    .restart local v13    # "bm":Landroid/graphics/Bitmap;
    .restart local v15    # "codept":I
    :cond_b
    const v2, 0xffff

    if-le v15, v2, :cond_4

    .line 231
    add-int/lit8 v5, v5, 0x1

    .line 232
    goto :goto_6

    .line 238
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 243
    :cond_d
    if-eqz v13, :cond_7

    .line 244
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->ascent(I)F

    move-result v14

    .line 245
    .local v14, "bmAscent":F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v12, v2

    .line 246
    .local v12, "bitmapHeight":F
    neg-float v2, v14

    div-float v23, v2, v12

    .line 247
    .local v23, "scale":F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v24, v2, v23

    .line 249
    .local v24, "width":F
    if-nez v16, :cond_e

    .line 250
    new-instance v16, Landroid/graphics/RectF;

    .end local v16    # "emojiRect":Landroid/graphics/RectF;
    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    .line 252
    .restart local v16    # "emojiRect":Landroid/graphics/RectF;
    :cond_e
    add-float v2, p2, v17

    move/from16 v0, p4

    int-to-float v3, v0

    add-float/2addr v3, v14

    add-float v7, p2, v17

    add-float v7, v7, v24

    move/from16 v0, p4

    int-to-float v8, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 254
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 255
    add-float v17, v17, v24

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 211
    .end local v12    # "bitmapHeight":F
    .end local v13    # "bm":Landroid/graphics/Bitmap;
    .end local v14    # "bmAscent":F
    .end local v15    # "codept":I
    .end local v23    # "scale":F
    .end local v24    # "width":F
    :cond_f
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_1
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 30
    .param p1, "cursor"    # I
    .param p2, "toLeft"    # Z

    .prologue
    .line 459
    const/16 v17, 0x0

    .line 460
    .local v17, "lineStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    .line 461
    .local v16, "lineEnd":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    const/16 v21, 0x1

    .line 462
    .local v21, "paraIsRtl":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v28, v0

    .line 464
    .local v28, "runs":[I
    const/16 v27, 0x0

    .local v27, "runLevel":I
    move/from16 v4, v17

    .local v4, "runStart":I
    move/from16 v5, v16

    .local v5, "runLimit":I
    const/16 v18, -0x1

    .line 465
    .local v18, "newCaret":I
    const/16 v29, 0x0

    .line 467
    .local v29, "trailing":Z
    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 468
    const/4 v3, -0x2

    .line 546
    .local v3, "runIndex":I
    :cond_0
    :goto_1
    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const/4 v8, 0x1

    .line 547
    .local v8, "advance":Z
    :goto_2
    if-eqz v8, :cond_10

    const/4 v2, 0x2

    :goto_3
    add-int v10, v3, v2

    .line 548
    .local v10, "otherRunIndex":I
    if-ltz v10, :cond_18

    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v10, v2, :cond_18

    .line 549
    aget v2, v28, v10

    add-int v11, v17, v2

    .line 550
    .local v11, "otherRunStart":I
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v12, v11, v2

    .line 552
    .local v12, "otherRunLimit":I
    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 553
    move/from16 v12, v16

    .line 555
    :cond_1
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v20, v2, 0x3f

    .line 557
    .local v20, "otherRunLevel":I
    and-int/lit8 v2, v20, 0x1

    if-eqz v2, :cond_11

    const/4 v13, 0x1

    .line 559
    .local v13, "otherRunIsRtl":Z
    :goto_4
    move/from16 v0, p2

    if-ne v0, v13, :cond_12

    const/4 v8, 0x1

    .line 560
    :goto_5
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_15

    .line 561
    if-eqz v8, :cond_13

    move v14, v11

    :goto_6
    move-object/from16 v9, p0

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 564
    if-eqz v8, :cond_14

    .end local v12    # "otherRunLimit":I
    :goto_7
    move/from16 v0, v18

    if-ne v0, v12, :cond_16

    .line 567
    move v3, v10

    .line 568
    move/from16 v27, v20

    .line 569
    goto :goto_1

    .line 461
    .end local v3    # "runIndex":I
    .end local v4    # "runStart":I
    .end local v5    # "runLimit":I
    .end local v8    # "advance":Z
    .end local v10    # "otherRunIndex":I
    .end local v11    # "otherRunStart":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "newCaret":I
    .end local v20    # "otherRunLevel":I
    .end local v21    # "paraIsRtl":Z
    .end local v27    # "runLevel":I
    .end local v28    # "runs":[I
    .end local v29    # "trailing":Z
    :cond_2
    const/16 v21, 0x0

    goto :goto_0

    .line 469
    .restart local v4    # "runStart":I
    .restart local v5    # "runLimit":I
    .restart local v18    # "newCaret":I
    .restart local v21    # "paraIsRtl":Z
    .restart local v27    # "runLevel":I
    .restart local v28    # "runs":[I
    .restart local v29    # "trailing":Z
    :cond_3
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 470
    move-object/from16 v0, v28

    array-length v3, v0

    .restart local v3    # "runIndex":I
    goto :goto_1

    .line 474
    .end local v3    # "runIndex":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "runIndex":I
    :goto_8
    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v3, v2, :cond_7

    .line 475
    aget v2, v28, v3

    add-int v4, v17, v2

    .line 476
    move/from16 v0, p1

    if-lt v0, v4, :cond_a

    .line 477
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v5, v4, v2

    .line 478
    move/from16 v0, v16

    if-le v5, v0, :cond_5

    .line 479
    move/from16 v5, v16

    .line 481
    :cond_5
    move/from16 v0, p1

    if-ge v0, v5, :cond_a

    .line 482
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v27, v2, 0x3f

    .line 484
    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 489
    add-int/lit8 v22, p1, -0x1

    .line 490
    .local v22, "pos":I
    const/16 v23, 0x0

    .local v23, "prevRunIndex":I
    :goto_9
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v23

    if-ge v0, v2, :cond_7

    .line 491
    aget v2, v28, v23

    add-int v26, v17, v2

    .line 492
    .local v26, "prevRunStart":I
    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_9

    .line 493
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v25, v26, v2

    .line 495
    .local v25, "prevRunLimit":I
    move/from16 v0, v25

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 496
    move/from16 v25, v16

    .line 498
    :cond_6
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 499
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v24, v2, 0x3f

    .line 501
    .local v24, "prevRunLevel":I
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 503
    move/from16 v3, v23

    .line 504
    move/from16 v27, v24

    .line 505
    move/from16 v4, v26

    .line 506
    move/from16 v5, v25

    .line 507
    const/16 v29, 0x1

    .line 524
    .end local v22    # "pos":I
    .end local v23    # "prevRunIndex":I
    .end local v24    # "prevRunLevel":I
    .end local v25    # "prevRunLimit":I
    .end local v26    # "prevRunStart":I
    :cond_7
    move-object/from16 v0, v28

    array-length v2, v0

    if-eq v3, v2, :cond_0

    .line 525
    and-int/lit8 v2, v27, 0x1

    if-eqz v2, :cond_b

    const/4 v6, 0x1

    .line 526
    .local v6, "runIsRtl":Z
    :goto_a
    move/from16 v0, p2

    if-ne v0, v6, :cond_c

    const/4 v8, 0x1

    .line 527
    .restart local v8    # "advance":Z
    :goto_b
    if-eqz v8, :cond_d

    move v2, v5

    :goto_c
    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    move/from16 v0, v29

    if-eq v8, v0, :cond_0

    :cond_8
    move-object/from16 v2, p0

    move/from16 v7, p1

    .line 529
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 533
    if-eqz v8, :cond_e

    move v2, v5

    :goto_d
    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    move/from16 v19, v18

    .line 604
    .end local v6    # "runIsRtl":Z
    .end local v18    # "newCaret":I
    .local v19, "newCaret":I
    :goto_e
    return v19

    .line 490
    .end local v8    # "advance":Z
    .end local v19    # "newCaret":I
    .restart local v18    # "newCaret":I
    .restart local v22    # "pos":I
    .restart local v23    # "prevRunIndex":I
    .restart local v26    # "prevRunStart":I
    :cond_9
    add-int/lit8 v23, v23, 0x2

    goto :goto_9

    .line 474
    .end local v22    # "pos":I
    .end local v23    # "prevRunIndex":I
    .end local v26    # "prevRunStart":I
    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_8

    .line 525
    :cond_b
    const/4 v6, 0x0

    goto :goto_a

    .line 526
    .restart local v6    # "runIsRtl":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_b

    .restart local v8    # "advance":Z
    :cond_d
    move v2, v4

    .line 527
    goto :goto_c

    :cond_e
    move v2, v4

    .line 533
    goto :goto_d

    .line 546
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 547
    .restart local v8    # "advance":Z
    :cond_10
    const/4 v2, -0x2

    goto/16 :goto_3

    .line 557
    .restart local v10    # "otherRunIndex":I
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v20    # "otherRunLevel":I
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 559
    .restart local v13    # "otherRunIsRtl":Z
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_13
    move v14, v12

    .line 561
    goto/16 :goto_6

    :cond_14
    move v12, v11

    .line 564
    goto/16 :goto_7

    .line 575
    :cond_15
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    .line 577
    if-eqz v8, :cond_17

    move/from16 v18, v11

    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v20    # "otherRunLevel":I
    :cond_16
    :goto_f
    move/from16 v19, v18

    .line 604
    .end local v18    # "newCaret":I
    .restart local v19    # "newCaret":I
    goto :goto_e

    .end local v19    # "newCaret":I
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v13    # "otherRunIsRtl":Z
    .restart local v18    # "newCaret":I
    .restart local v20    # "otherRunLevel":I
    :cond_17
    move/from16 v18, v12

    .line 577
    goto :goto_f

    .line 582
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v20    # "otherRunLevel":I
    :cond_18
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_1a

    .line 586
    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v18, v2, 0x1

    .line 587
    :goto_10
    goto :goto_f

    .line 586
    :cond_19
    const/16 v18, -0x1

    goto :goto_10

    .line 598
    :cond_1a
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    .line 599
    if-eqz v8, :cond_1b

    move/from16 v18, v16

    :goto_11
    goto :goto_f

    :cond_1b
    move/from16 v18, v17

    goto :goto_11
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 22
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 288
    if-eqz p2, :cond_1

    add-int/lit8 v19, p1, -0x1

    .line 289
    .local v19, "target":I
    :goto_0
    if-gez v19, :cond_2

    .line 290
    const/4 v12, 0x0

    .line 377
    :cond_0
    :goto_1
    return v12

    .end local v19    # "target":I
    :cond_1
    move/from16 v19, p1

    .line 288
    goto :goto_0

    .line 293
    .restart local v19    # "target":I
    :cond_2
    const/4 v12, 0x0

    .line 295
    .local v12, "h":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_4

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_3

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v12

    goto :goto_1

    .line 299
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_4

    .line 300
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v12

    goto :goto_1

    .line 304
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mChars:[C

    .line 305
    .local v10, "chars":[C
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    .line 306
    .local v18, "runs":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, v18

    array-length v1, v0

    if-ge v13, v1, :cond_0

    .line 307
    aget v17, v18, v13

    .line 308
    .local v17, "runStart":I
    add-int/lit8 v1, v13, 0x1

    aget v1, v18, v1

    const v3, 0x3ffffff

    and-int/2addr v1, v3

    add-int v16, v17, v1

    .line 309
    .local v16, "runLimit":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v16

    if-le v0, v1, :cond_5

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    .line 312
    :cond_5
    add-int/lit8 v1, v13, 0x1

    aget v1, v18, v1

    const/high16 v3, 0x4000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    const/4 v5, 0x1

    .line 314
    .local v5, "runIsRtl":Z
    :goto_3
    move/from16 v2, v17

    .line 315
    .local v2, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_a

    move/from16 v4, v17

    .local v4, "j":I
    :goto_4
    move/from16 v0, v16

    if-gt v4, v0, :cond_17

    .line 316
    const/4 v11, 0x0

    .line 317
    .local v11, "codept":I
    const/4 v8, 0x0

    .line 319
    .local v8, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_6

    move/from16 v0, v16

    if-ge v4, v0, :cond_6

    .line 320
    aget-char v11, v10, v4

    .line 321
    const v1, 0xd800

    if-lt v11, v1, :cond_6

    const v1, 0xdc00

    if-ge v11, v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    move/from16 v0, v16

    if-ge v1, v0, :cond_6

    .line 322
    invoke-static {v10, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v11

    .line 323
    sget v1, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v11, v1, :cond_b

    sget v1, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v11, v1, :cond_b

    .line 324
    sget-object v1, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v1, v11}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 332
    :cond_6
    move/from16 v0, v16

    if-eq v4, v0, :cond_7

    const/16 v1, 0x9

    if-eq v11, v1, :cond_7

    if-eqz v8, :cond_c

    .line 333
    :cond_7
    move/from16 v0, v19

    if-lt v0, v2, :cond_d

    move/from16 v0, v19

    if-ge v0, v4, :cond_d

    const/4 v14, 0x1

    .line 334
    .local v14, "inSegment":Z
    :goto_5
    if-nez v14, :cond_8

    if-eqz v8, :cond_8

    .line 339
    if-eqz p2, :cond_e

    add-int/lit8 v15, v19, 0x1

    .line 340
    .local v15, "realtarget":I
    :goto_6
    if-lt v15, v2, :cond_f

    add-int/lit8 v1, v4, 0x1

    if-ge v15, v1, :cond_f

    const/4 v14, 0x1

    .line 343
    .end local v15    # "realtarget":I
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_10

    const/4 v1, 0x1

    :goto_8
    if-ne v1, v5, :cond_11

    const/4 v7, 0x1

    .line 344
    .local v7, "advance":Z
    :goto_9
    if-eqz v14, :cond_12

    if-eqz v7, :cond_12

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    .line 345
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v12, v1

    goto/16 :goto_1

    .line 312
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v7    # "advance":Z
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    .end local v11    # "codept":I
    .end local v14    # "inSegment":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    .restart local v2    # "segstart":I
    .restart local v5    # "runIsRtl":Z
    :cond_a
    move/from16 v4, v16

    .line 315
    goto :goto_4

    .line 325
    .restart local v4    # "j":I
    .restart local v8    # "bm":Landroid/graphics/Bitmap;
    .restart local v11    # "codept":I
    :cond_b
    const v1, 0xffff

    if-le v11, v1, :cond_6

    .line 326
    add-int/lit8 v4, v4, 0x1

    .line 315
    :cond_c
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 333
    :cond_d
    const/4 v14, 0x0

    goto :goto_5

    .restart local v14    # "inSegment":Z
    :cond_e
    move/from16 v15, v19

    .line 339
    goto :goto_6

    .line 340
    .restart local v15    # "realtarget":I
    :cond_f
    const/4 v14, 0x0

    goto :goto_7

    .line 343
    .end local v15    # "realtarget":I
    :cond_10
    const/4 v1, 0x0

    goto :goto_8

    :cond_11
    const/4 v7, 0x0

    goto :goto_9

    .restart local v7    # "advance":Z
    :cond_12
    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    .line 348
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v20

    .line 349
    .local v20, "w":F
    if-eqz v7, :cond_13

    .end local v20    # "w":F
    :goto_b
    add-float v12, v12, v20

    .line 351
    if-eqz v14, :cond_14

    .line 352
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v12, v1

    goto/16 :goto_1

    .line 349
    .restart local v20    # "w":F
    :cond_13
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    goto :goto_b

    .line 355
    .end local v20    # "w":F
    :cond_14
    const/16 v1, 0x9

    if-ne v11, v1, :cond_15

    .line 356
    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v12, v1, v3

    .line 360
    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    .line 365
    :cond_15
    if-eqz v8, :cond_16

    .line 366
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->ascent(I)F

    move-result v9

    .line 367
    .local v9, "bmAscent":F
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float v3, v9

    mul-float/2addr v1, v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v21, v1, v3

    .line 368
    .local v21, "wid":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v21

    add-float/2addr v12, v1

    .line 369
    add-int/lit8 v4, v4, 0x1

    .line 372
    .end local v9    # "bmAscent":F
    .end local v21    # "wid":F
    :cond_16
    add-int/lit8 v2, v4, 0x1

    goto :goto_a

    .line 306
    .end local v7    # "advance":Z
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    .end local v11    # "codept":I
    .end local v14    # "inSegment":Z
    :cond_17
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_2
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 271
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1
    .param p1, "h"    # F

    .prologue
    .line 1040
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    .line 1043
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    goto :goto_0
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 9
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "dir"    # I
    .param p6, "directions"    # Landroid/text/Layout$Directions;
    .param p7, "hasTabs"    # Z
    .param p8, "tabStops"    # Landroid/text/Layout$TabStops;

    .prologue
    .line 137
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 138
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 139
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    .line 140
    sub-int v7, p4, p3

    iput v7, p0, Landroid/text/TextLine;->mLen:I

    .line 141
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 142
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 143
    iget-object v7, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_0

    .line 144
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 146
    :cond_0
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/text/TextLine;->mHasTabs:Z

    .line 147
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "hasReplacement":Z
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 151
    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 152
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 153
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_5

    const/4 v3, 0x1

    .line 156
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-nez p7, :cond_2

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_6

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 158
    iget-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v7, :cond_8

    .line 159
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    array-length v7, v7

    iget v8, p0, Landroid/text/TextLine;->mLen:I

    if-ge v7, v8, :cond_4

    .line 160
    :cond_3
    iget v7, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v7

    new-array v7, v7, [C

    iput-object v7, p0, Landroid/text/TextLine;->mChars:[C

    .line 162
    :cond_4
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 163
    if-eqz v3, :cond_8

    .line 169
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    .line 170
    .local v1, "chars":[C
    move v4, p3

    .local v4, "i":I
    :goto_2
    if-ge v4, p4, :cond_8

    .line 171
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    .line 172
    .local v5, "inext":I
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 174
    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    .line 175
    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    .local v6, "j":I
    sub-int v2, v5, p3

    .local v2, "e":I
    :goto_3
    if-ge v6, v2, :cond_7

    .line 176
    const v7, 0xfeff

    aput-char v7, v1, v6

    .line 175
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 153
    .end local v1    # "chars":[C
    .end local v2    # "e":I
    .end local v4    # "i":I
    .end local v5    # "inext":I
    .end local v6    # "j":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 156
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 170
    .restart local v1    # "chars":[C
    .restart local v4    # "i":I
    .restart local v5    # "inext":I
    :cond_7
    move v4, v5

    goto :goto_2

    .line 182
    .end local v1    # "chars":[C
    .end local v4    # "i":I
    .end local v5    # "inext":I
    :cond_8
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 183
    return-void
.end method
