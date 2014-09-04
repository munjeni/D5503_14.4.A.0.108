.class public Lcom/sonymobile/china/collage/svg/SVGHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SVGHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    }
.end annotation


# static fields
.field private static final STROKE_COLOR_STR:Ljava/lang/String; = "#FFFFFF"


# instance fields
.field private hidden:Z

.field private hiddenLevel:I

.field mCrossIconSize:[I

.field mDeleteIconSize:[I

.field mDeleteRect:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field mElementsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/ImageElement;",
            ">;"
        }
    .end annotation
.end field

.field mHeight:I

.field mPaneViewHeight:I

.field mPaneViewWidth:I

.field mPlusRect:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field mScale:F

.field mWidth:I


# direct methods
.method public constructor <init>(Ljava/util/List;II[I[I)V
    .locals 3
    .param p2, "paneViewWidth"    # I
    .param p3, "paneViewHeight"    # I
    .param p4, "crossSize"    # [I
    .param p5, "deleteSize"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/ImageElement;",
            ">;II[I[I)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/china/collage/ImageElement;>;"
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPlusRect:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteRect:Ljava/util/HashMap;

    .line 53
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    .line 93
    iput-boolean v1, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    .line 95
    iput v1, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hiddenLevel:I

    .line 76
    iput-object p1, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mElementsList:Ljava/util/List;

    .line 77
    iput p2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPaneViewWidth:I

    .line 78
    iput p3, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPaneViewHeight:I

    .line 79
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mCrossIconSize:[I

    .line 80
    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteIconSize:[I

    .line 81
    return-void
.end method

.method private static doPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 27
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 591
    .local v16, "n":I
    new-instance v17, Lcom/sonymobile/china/collage/svg/SVGParserHelper;

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;-><init>(Ljava/lang/CharSequence;I)V

    .line 592
    .local v17, "ph":Lcom/sonymobile/china/collage/svg/SVGParserHelper;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->skipWhitespace()V

    .line 593
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 594
    .local v3, "p":Landroid/graphics/Path;
    const/4 v12, 0x0

    .line 595
    .local v12, "lastX":F
    const/4 v14, 0x0

    .line 596
    .local v14, "lastY":F
    const/4 v13, 0x0

    .line 597
    .local v13, "lastX1":F
    const/4 v15, 0x0

    .line 598
    .local v15, "lastY1":F
    const/16 v21, 0x0

    .line 599
    .local v21, "subPathStartX":F
    const/16 v22, 0x0

    .line 600
    .local v22, "subPathStartY":F
    const/16 v18, 0x0

    .line 601
    .local v18, "prevCmd":C
    :goto_0
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->pos:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v16

    if-ge v0, v1, :cond_d

    .line 602
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->pos:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 603
    .local v10, "cmd":C
    packed-switch v10, :pswitch_data_0

    .line 627
    :cond_0
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->advance()V

    .line 628
    move/from16 v18, v10

    .line 632
    :goto_1
    const/16 v25, 0x0

    .line 633
    .local v25, "wasCurve":Z
    sparse-switch v10, :sswitch_data_0

    .line 763
    :goto_2
    if-nez v25, :cond_1

    .line 764
    move v13, v12

    .line 765
    move v15, v14

    .line 767
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->skipWhitespace()V

    goto :goto_0

    .line 616
    .end local v25    # "wasCurve":Z
    :pswitch_1
    const/16 v26, 0x6d

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v26, 0x4d

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 617
    :cond_2
    add-int/lit8 v26, v18, -0x1

    move/from16 v0, v26

    int-to-char v10, v0

    .line 618
    goto :goto_1

    .line 619
    :cond_3
    const/16 v26, 0x63

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    const/16 v26, 0x43

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 620
    :cond_4
    move/from16 v10, v18

    .line 621
    goto :goto_1

    .line 622
    :cond_5
    const/16 v26, 0x6c

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    const/16 v26, 0x4c

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 623
    :cond_6
    move/from16 v10, v18

    .line 624
    goto :goto_1

    .line 636
    .restart local v25    # "wasCurve":Z
    :sswitch_0
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v8

    .line 637
    .local v8, "x":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v9

    .line 638
    .local v9, "y":F
    const/16 v26, 0x6d

    move/from16 v0, v26

    if-ne v10, v0, :cond_7

    .line 639
    add-float v21, v21, v8

    .line 640
    add-float v22, v22, v9

    .line 641
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 642
    add-float/2addr v12, v8

    .line 643
    add-float/2addr v14, v9

    goto :goto_2

    .line 645
    :cond_7
    move/from16 v21, v8

    .line 646
    move/from16 v22, v9

    .line 647
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 648
    move v12, v8

    .line 649
    move v14, v9

    .line 651
    goto :goto_2

    .line 655
    .end local v8    # "x":F
    .end local v9    # "y":F
    :sswitch_1
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 656
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 657
    move/from16 v12, v21

    .line 658
    move/from16 v14, v22

    .line 659
    move/from16 v13, v21

    .line 660
    move/from16 v15, v22

    .line 661
    const/16 v25, 0x1

    .line 662
    goto :goto_2

    .line 666
    :sswitch_2
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v8

    .line 667
    .restart local v8    # "x":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v9

    .line 668
    .restart local v9    # "y":F
    const/16 v26, 0x6c

    move/from16 v0, v26

    if-ne v10, v0, :cond_8

    .line 669
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 670
    add-float/2addr v12, v8

    .line 671
    add-float/2addr v14, v9

    goto/16 :goto_2

    .line 673
    :cond_8
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 674
    move v12, v8

    .line 675
    move v14, v9

    .line 677
    goto/16 :goto_2

    .line 681
    .end local v8    # "x":F
    .end local v9    # "y":F
    :sswitch_3
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v8

    .line 682
    .restart local v8    # "x":F
    const/16 v26, 0x68

    move/from16 v0, v26

    if-ne v10, v0, :cond_9

    .line 683
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v8, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 684
    add-float/2addr v12, v8

    goto/16 :goto_2

    .line 686
    :cond_9
    invoke-virtual {v3, v8, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 687
    move v12, v8

    .line 689
    goto/16 :goto_2

    .line 693
    .end local v8    # "x":F
    :sswitch_4
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v9

    .line 694
    .restart local v9    # "y":F
    const/16 v26, 0x76

    move/from16 v0, v26

    if-ne v10, v0, :cond_a

    .line 695
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v0, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 696
    add-float/2addr v14, v9

    goto/16 :goto_2

    .line 698
    :cond_a
    invoke-virtual {v3, v12, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 699
    move v14, v9

    .line 701
    goto/16 :goto_2

    .line 705
    .end local v9    # "y":F
    :sswitch_5
    const/16 v25, 0x1

    .line 706
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v4

    .line 707
    .local v4, "x1":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v5

    .line 708
    .local v5, "y1":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v6

    .line 709
    .local v6, "x2":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v7

    .line 710
    .local v7, "y2":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v8

    .line 711
    .restart local v8    # "x":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v9

    .line 712
    .restart local v9    # "y":F
    const/16 v26, 0x63

    move/from16 v0, v26

    if-ne v10, v0, :cond_b

    .line 713
    add-float/2addr v4, v12

    .line 714
    add-float/2addr v6, v12

    .line 715
    add-float/2addr v8, v12

    .line 716
    add-float/2addr v5, v14

    .line 717
    add-float/2addr v7, v14

    .line 718
    add-float/2addr v9, v14

    .line 720
    :cond_b
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 721
    move v13, v6

    .line 722
    move v15, v7

    .line 723
    move v12, v8

    .line 724
    move v14, v9

    .line 725
    goto/16 :goto_2

    .line 729
    .end local v4    # "x1":F
    .end local v5    # "y1":F
    .end local v6    # "x2":F
    .end local v7    # "y2":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :sswitch_6
    const/16 v25, 0x1

    .line 730
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v6

    .line 731
    .restart local v6    # "x2":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v7

    .line 732
    .restart local v7    # "y2":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v8

    .line 733
    .restart local v8    # "x":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v9

    .line 734
    .restart local v9    # "y":F
    const/16 v26, 0x73

    move/from16 v0, v26

    if-ne v10, v0, :cond_c

    .line 735
    add-float/2addr v6, v12

    .line 736
    add-float/2addr v8, v12

    .line 737
    add-float/2addr v7, v14

    .line 738
    add-float/2addr v9, v14

    .line 740
    :cond_c
    const/high16 v26, 0x40000000

    mul-float v26, v26, v12

    sub-float v4, v26, v13

    .line 741
    .restart local v4    # "x1":F
    const/high16 v26, 0x40000000

    mul-float v26, v26, v14

    sub-float v5, v26, v15

    .line 742
    .restart local v5    # "y1":F
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 743
    move v13, v6

    .line 744
    move v15, v7

    .line 745
    move v12, v8

    .line 746
    move v14, v9

    .line 747
    goto/16 :goto_2

    .line 751
    .end local v4    # "x1":F
    .end local v5    # "y1":F
    .end local v6    # "x2":F
    .end local v7    # "y2":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :sswitch_7
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v19

    .line 752
    .local v19, "rx":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v20

    .line 753
    .local v20, "ry":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v24

    .line 754
    .local v24, "theta":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v26

    move/from16 v0, v26

    float-to-int v11, v0

    .line 755
    .local v11, "largeArc":I
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    .line 756
    .local v23, "sweepArc":I
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v8

    .line 757
    .restart local v8    # "x":F
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/collage/svg/SVGParserHelper;->nextFloat()F

    move-result v9

    .line 758
    .restart local v9    # "y":F
    move v12, v8

    .line 759
    move v14, v9

    .line 760
    goto/16 :goto_2

    .line 769
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "cmd":C
    .end local v11    # "largeArc":I
    .end local v19    # "rx":F
    .end local v20    # "ry":F
    .end local v23    # "sweepArc":I
    .end local v24    # "theta":F
    .end local v25    # "wasCurve":Z
    :cond_d
    return-object v3

    .line 603
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 633
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x43 -> :sswitch_5
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_0
        0x53 -> :sswitch_6
        0x56 -> :sswitch_4
        0x5a -> :sswitch_1
        0x61 -> :sswitch_7
        0x63 -> :sswitch_5
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_0
        0x73 -> :sswitch_6
        0x76 -> :sswitch_4
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    .line 385
    invoke-static {p0, p1}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 393
    .end local p2    # "defaultValue":Ljava/lang/Float;
    :goto_0
    return-object p2

    .line 389
    .restart local p2    # "defaultValue":Ljava/lang/Float;
    :cond_0
    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 393
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0
.end method

.method private static getNumberParseAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 293
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 294
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 295
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/china/collage/svg/SVGHandler;->parseNumbers(Ljava/lang/String;)Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    move-result-object v2

    .line 299
    :goto_1
    return-object v2

    .line 294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 399
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 400
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 401
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    :goto_1
    return-object v2

    .line 400
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static parseNumbers(Ljava/lang/String;)Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 411
    .local v4, "n":I
    const/4 v6, 0x0

    .line 412
    .local v6, "p":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v5, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v7, 0x0

    .line 414
    .local v7, "skipChar":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 415
    if-eqz v7, :cond_0

    .line 416
    const/4 v7, 0x0

    .line 414
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 420
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 457
    :sswitch_0
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 459
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 461
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 462
    .local v1, "f":Ljava/lang/Float;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    const/16 v9, 0x2d

    if-ne v0, v9, :cond_2

    .line 464
    move v6, v2

    goto :goto_1

    .line 443
    .end local v1    # "f":Ljava/lang/Float;
    .end local v8    # "str":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 444
    .restart local v8    # "str":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 446
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 447
    .restart local v1    # "f":Ljava/lang/Float;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .end local v1    # "f":Ljava/lang/Float;
    :cond_1
    move v6, v2

    .line 450
    new-instance v9, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    invoke-direct {v9, v5, v6}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;-><init>(Ljava/util/ArrayList;I)V

    .line 486
    .end local v0    # "c":C
    .end local v8    # "str":Ljava/lang/String;
    :goto_2
    return-object v9

    .line 466
    .restart local v0    # "c":C
    .restart local v1    # "f":Ljava/lang/Float;
    .restart local v8    # "str":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v2, 0x1

    .line 467
    const/4 v7, 0x1

    goto :goto_1

    .line 470
    .end local v1    # "f":Ljava/lang/Float;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 472
    goto :goto_1

    .line 476
    .end local v0    # "c":C
    .end local v8    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "last":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 480
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 486
    :cond_5
    new-instance v9, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    invoke-direct {v9, v5, v6}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;-><init>(Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 481
    :catch_0
    move-exception v9

    goto :goto_3

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x41 -> :sswitch_1
        0x43 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_1
        0x56 -> :sswitch_1
        0x5a -> :sswitch_1
        0x61 -> :sswitch_1
        0x63 -> :sswitch_1
        0x68 -> :sswitch_1
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_1
        0x76 -> :sswitch_1
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 13
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string v9, "matrix("

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 491
    const-string v9, "matrix("

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/china/collage/svg/SVGHandler;->parseNumbers(Ljava/lang/String;)Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    move-result-object v4

    .line 492
    .local v4, "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_8

    .line 493
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 494
    .local v3, "matrix":Landroid/graphics/Matrix;
    const/16 v9, 0x9

    new-array v10, v9, [F

    const/4 v11, 0x0

    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v10, v11

    const/4 v11, 0x1

    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v12, 0x2

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v10, v11

    const/4 v11, 0x2

    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v12, 0x4

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v10, v11

    const/4 v11, 0x3

    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v10, v11

    const/4 v11, 0x4

    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v10, v11

    const/4 v11, 0x5

    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v12, 0x5

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v10, v11

    const/4 v9, 0x6

    const/4 v11, 0x0

    aput v11, v10, v9

    const/4 v9, 0x7

    const/4 v11, 0x0

    aput v11, v10, v9

    const/16 v9, 0x8

    const/high16 v11, 0x3f800000

    aput v11, v10, v9

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->setValues([F)V

    .line 563
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    :goto_0
    return-object v3

    .line 504
    :cond_0
    const-string v9, "translate("

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 505
    const-string v9, "translate("

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/china/collage/svg/SVGHandler;->parseNumbers(Ljava/lang/String;)Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    move-result-object v4

    .line 506
    .restart local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 507
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 508
    .local v7, "tx":F
    const/4 v8, 0x0

    .line 509
    .local v8, "ty":F
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 510
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 512
    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 513
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 516
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    .end local v7    # "tx":F
    .end local v8    # "ty":F
    :cond_2
    const-string v9, "scale("

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 517
    const-string v9, "scale("

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/china/collage/svg/SVGHandler;->parseNumbers(Ljava/lang/String;)Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    move-result-object v4

    .line 518
    .restart local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 519
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 520
    .local v5, "sx":F
    const/4 v6, 0x0

    .line 521
    .local v6, "sy":F
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 522
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 524
    :cond_3
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 525
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_0

    .line 528
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    .end local v5    # "sx":F
    .end local v6    # "sy":F
    :cond_4
    const-string v9, "skewX("

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 529
    const-string v9, "skewX("

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/china/collage/svg/SVGHandler;->parseNumbers(Ljava/lang/String;)Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    move-result-object v4

    .line 530
    .restart local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 531
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 532
    .local v0, "angle":F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 533
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    double-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto/16 :goto_0

    .line 536
    .end local v0    # "angle":F
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    :cond_5
    const-string v9, "skewY("

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 537
    const-string v9, "skewY("

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/china/collage/svg/SVGHandler;->parseNumbers(Ljava/lang/String;)Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    move-result-object v4

    .line 538
    .restart local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 539
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 540
    .restart local v0    # "angle":F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 541
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    const/4 v9, 0x0

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto/16 :goto_0

    .line 544
    .end local v0    # "angle":F
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    :cond_6
    const-string v9, "rotate("

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 545
    const-string v9, "rotate("

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/china/collage/svg/SVGHandler;->parseNumbers(Ljava/lang/String;)Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    move-result-object v4

    .line 546
    .restart local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 547
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 548
    .restart local v0    # "angle":F
    const/4 v1, 0x0

    .line 549
    .local v1, "cx":F
    const/4 v2, 0x0

    .line 550
    .local v2, "cy":F
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_7

    .line 551
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 552
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 554
    :cond_7
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 559
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/16 :goto_0

    .line 563
    .end local v0    # "angle":F
    .end local v1    # "cx":F
    .end local v2    # "cy":F
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "np":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private pushTransformWitScale(Lorg/xml/sax/Attributes;)[Landroid/graphics/Matrix;
    .locals 8
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 366
    const-string v4, "transform"

    invoke-static {v4, p1}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "transform":Ljava/lang/String;
    if-eqz v3, :cond_0

    move v1, v5

    .line 368
    .local v1, "pushed":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 369
    invoke-static {v3}, Lcom/sonymobile/china/collage/svg/SVGHandler;->parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 370
    .local v2, "result":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 371
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v4, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    iget v7, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 372
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/Matrix;

    aput-object v0, v4, v6

    aput-object v2, v4, v5

    .line 378
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    return-object v4

    .end local v1    # "pushed":Z
    .end local v2    # "result":Landroid/graphics/Matrix;
    :cond_0
    move v1, v6

    .line 367
    goto :goto_0

    .line 376
    .restart local v1    # "pushed":Z
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 377
    .restart local v2    # "result":Landroid/graphics/Matrix;
    iget v4, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    iget v7, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 378
    new-array v4, v5, [Landroid/graphics/Matrix;

    aput-object v2, v4, v6

    goto :goto_1
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 305
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v2, "svg"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    iget-object v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPlusRect:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mElementsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteRect:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPlusRect:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 312
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plus or delete rect\'s count doesn\'t match elements\' count, need check src svg mPlusRect.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPlusRect:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mElementsList.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mElementsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDelectRect.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteRect:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mElementsList:Ljava/util/List;

    new-instance v3, Lcom/sonymobile/china/collage/svg/SVGHandler$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/china/collage/svg/SVGHandler$1;-><init>(Lcom/sonymobile/china/collage/svg/SVGHandler;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 334
    iget-object v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mElementsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/ImageElement;

    .line 335
    .local v1, "ie":Lcom/sonymobile/china/collage/ImageElement;
    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getPlusRect()Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_3

    .line 336
    iget-object v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPlusRect:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 337
    iget-object v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPlusRect:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/collage/ImageElement;->setPlusRect(Landroid/graphics/RectF;)V

    .line 341
    :cond_3
    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getDeleteRect()Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_2

    .line 342
    iget-object v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteRect:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 343
    iget-object v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteRect:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/ImageElement;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/collage/ImageElement;->setDeleteRect(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 347
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ie":Lcom/sonymobile/china/collage/ImageElement;
    :cond_4
    const-string v2, "linearGradient"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    const-string v2, "radialGradient"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    const-string v2, "g"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    iget-boolean v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    if-eqz v2, :cond_0

    .line 352
    iget v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hiddenLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hiddenLevel:I

    .line 353
    iget v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hiddenLevel:I

    if-nez v2, :cond_0

    .line 354
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 86
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 39
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v4, "svg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    const-string v4, "width"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v35

    .line 104
    .local v35, "width":F
    const-string v4, "height"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 105
    .local v21, "height":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPaneViewWidth:I

    int-to-float v4, v4

    div-float v4, v4, v35

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    .line 106
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    mul-float v4, v4, v21

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPaneViewHeight:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPaneViewHeight:I

    int-to-float v4, v4

    div-float v4, v4, v21

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    mul-float v4, v4, v35

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mWidth:I

    .line 110
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    mul-float v4, v4, v21

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mHeight:I

    .line 290
    .end local v21    # "height":F
    .end local v35    # "width":F
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    const-string v4, "defs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    const-string v4, "linearGradient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 115
    const-string v4, "radialGradient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    const-string v4, "stop"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    const-string v4, "g"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    if-eqz v4, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hiddenLevel:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hiddenLevel:I

    .line 124
    :cond_3
    const-string v4, "none"

    const-string v5, "display"

    move-object/from16 v0, p4

    invoke-static {v5, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    if-nez v4, :cond_1

    .line 126
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    .line 127
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hiddenLevel:I

    goto :goto_0

    .line 130
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    if-nez v4, :cond_c

    const-string v4, "rect"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 131
    const-string v4, "x"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v36

    .line 132
    .local v36, "x":Ljava/lang/Float;
    if-nez v36, :cond_5

    .line 133
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    .line 135
    :cond_5
    const-string v4, "y"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v38

    .line 136
    .local v38, "y":Ljava/lang/Float;
    if-nez v38, :cond_6

    .line 137
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    .line 139
    :cond_6
    const-string v4, "width"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v35

    .line 140
    .local v35, "width":Ljava/lang/Float;
    const-string v4, "height"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v21

    .line 142
    .local v21, "height":Ljava/lang/Float;
    const-string v4, "fill"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v20

    .line 143
    .local v20, "fillStr":Ljava/lang/String;
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v6, v8

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v8, v10

    invoke-direct {v3, v4, v5, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 144
    .local v3, "orgRect":Landroid/graphics/RectF;
    new-instance v33, Landroid/graphics/RectF;

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 145
    .local v33, "socRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sonymobile/china/collage/svg/SVGHandler;->pushTransformWitScale(Lorg/xml/sax/Attributes;)[Landroid/graphics/Matrix;

    move-result-object v25

    .line 146
    .local v25, "matrixs":[Landroid/graphics/Matrix;
    const/4 v4, 0x0

    aget-object v23, v25, v4

    .line 148
    .local v23, "matrix":Landroid/graphics/Matrix;
    if-eqz v23, :cond_7

    .line 149
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 152
    :cond_7
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/china/collage/svg/SVGParserRules;->getCrossIndex(Ljava/lang/String;)I

    move-result v7

    .line 153
    .local v7, "tempIndex":I
    const/4 v4, -0x1

    if-le v7, v4, :cond_8

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mPlusRect:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mCrossIconSize:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v8, v10

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mCrossIconSize:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mCrossIconSize:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mCrossIconSize:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-direct {v6, v8, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 160
    :cond_8
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/china/collage/svg/SVGParserRules;->getDeleteIndex(Ljava/lang/String;)I

    move-result v7

    .line 161
    const/4 v4, -0x1

    if-le v7, v4, :cond_9

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteRect:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteIconSize:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v8, v10

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteIconSize:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteIconSize:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mDeleteIconSize:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-direct {v6, v8, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 168
    :cond_9
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/china/collage/svg/SVGParserRules;->getGridIndex(Ljava/lang/String;)I

    move-result v7

    .line 169
    const/4 v4, -0x1

    if-le v7, v4, :cond_1

    .line 170
    const-string v4, "stroke"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v34

    .line 171
    .local v34, "strokeStr":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/china/collage/ImageElement;

    sget-object v4, Lcom/sonymobile/china/collage/ImageElement$ElementType;->RECT:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mHeight:I

    const-string v8, "#FFFFFF"

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/china/collage/ImageElement;-><init>(Ljava/lang/Object;Lcom/sonymobile/china/collage/ImageElement$ElementType;IIIZ)V

    .line 174
    .local v2, "element":Lcom/sonymobile/china/collage/ImageElement;
    move-object/from16 v0, v25

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 175
    const/4 v4, 0x1

    aget-object v32, v25, v4

    .line 177
    .local v32, "socM":Landroid/graphics/Matrix;
    const/16 v4, 0x9

    new-array v0, v4, [F

    move-object/from16 v24, v0

    .line 178
    .local v24, "matrixValuesSoc":[F
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 181
    const/16 v26, 0x1

    .line 182
    .local v26, "needVerse":I
    const/4 v4, 0x0

    aget v4, v24, v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    .line 183
    const/16 v26, -0x1

    .line 185
    :cond_a
    const/4 v4, 0x3

    aget v4, v24, v4

    move/from16 v0, v26

    int-to-float v5, v0

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    .line 187
    .local v15, "angle":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/china/collage/ImageElement;->setRotation(F)V

    .line 189
    new-instance v19, Landroid/graphics/Matrix;

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 190
    .local v19, "curM":Landroid/graphics/Matrix;
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 191
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mScale:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 193
    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 195
    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/sonymobile/china/collage/ImageElement;->setOrignalRect(Landroid/graphics/RectF;)V

    .line 199
    .end local v15    # "angle":D
    .end local v19    # "curM":Landroid/graphics/Matrix;
    .end local v24    # "matrixValuesSoc":[F
    .end local v26    # "needVerse":I
    .end local v32    # "socM":Landroid/graphics/Matrix;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mElementsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 197
    :cond_b
    invoke-virtual {v2, v3}, Lcom/sonymobile/china/collage/ImageElement;->setOrignalRect(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 203
    .end local v2    # "element":Lcom/sonymobile/china/collage/ImageElement;
    .end local v3    # "orgRect":Landroid/graphics/RectF;
    .end local v7    # "tempIndex":I
    .end local v20    # "fillStr":Ljava/lang/String;
    .end local v21    # "height":Ljava/lang/Float;
    .end local v23    # "matrix":Landroid/graphics/Matrix;
    .end local v25    # "matrixs":[Landroid/graphics/Matrix;
    .end local v33    # "socRect":Landroid/graphics/RectF;
    .end local v34    # "strokeStr":Ljava/lang/String;
    .end local v35    # "width":Ljava/lang/Float;
    .end local v36    # "x":Ljava/lang/Float;
    .end local v38    # "y":Ljava/lang/Float;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    if-nez v4, :cond_d

    const-string v4, "line"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    if-nez v4, :cond_f

    const-string v4, "circle"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 206
    const-string v4, "cx"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v17

    .line 207
    .local v17, "centerX":Ljava/lang/Float;
    const-string v4, "cy"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v18

    .line 208
    .local v18, "centerY":Ljava/lang/Float;
    const-string v4, "r"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v29

    .line 210
    .local v29, "radius":Ljava/lang/Float;
    if-eqz v17, :cond_1

    if-eqz v18, :cond_1

    if-eqz v29, :cond_1

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sonymobile/china/collage/svg/SVGHandler;->pushTransformWitScale(Lorg/xml/sax/Attributes;)[Landroid/graphics/Matrix;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v23, v4, v5

    .line 212
    .restart local v23    # "matrix":Landroid/graphics/Matrix;
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v37, v0

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v37, v4

    const/4 v4, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v37, v4

    .line 215
    .local v37, "xy":[F
    if-eqz v23, :cond_e

    .line 216
    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 217
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    .line 219
    :cond_e
    const-string v4, "fill"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v20

    .line 220
    .restart local v20    # "fillStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/china/collage/svg/SVGParserRules;->getGridIndex(Ljava/lang/String;)I

    move-result v7

    .line 221
    .restart local v7    # "tempIndex":I
    const/4 v4, -0x1

    if-le v7, v4, :cond_1

    .line 222
    const-string v4, "stroke"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v34

    .line 223
    .restart local v34    # "strokeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mElementsList:Ljava/util/List;

    new-instance v8, Lcom/sonymobile/china/collage/ImageElement;

    new-instance v9, Lcom/sonymobile/china/collage/ImageElement$Circle;

    const/4 v5, 0x0

    aget v5, v37, v5

    const/4 v6, 0x1

    aget v6, v37, v6

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-direct {v9, v5, v6, v10}, Lcom/sonymobile/china/collage/ImageElement$Circle;-><init>(FFF)V

    sget-object v10, Lcom/sonymobile/china/collage/ImageElement$ElementType;->CIRCLE:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mHeight:I

    const-string v5, "#FFFFFF"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/sonymobile/china/collage/ImageElement;-><init>(Ljava/lang/Object;Lcom/sonymobile/china/collage/ImageElement$ElementType;IIIZ)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 228
    .end local v7    # "tempIndex":I
    .end local v17    # "centerX":Ljava/lang/Float;
    .end local v18    # "centerY":Ljava/lang/Float;
    .end local v20    # "fillStr":Ljava/lang/String;
    .end local v23    # "matrix":Landroid/graphics/Matrix;
    .end local v29    # "radius":Ljava/lang/Float;
    .end local v34    # "strokeStr":Ljava/lang/String;
    .end local v37    # "xy":[F
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    if-nez v4, :cond_11

    const-string v4, "ellipse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 229
    const-string v4, "cx"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v17

    .line 230
    .restart local v17    # "centerX":Ljava/lang/Float;
    const-string v4, "cy"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v18

    .line 231
    .restart local v18    # "centerY":Ljava/lang/Float;
    const-string v4, "rx"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v30

    .line 232
    .local v30, "radiusX":Ljava/lang/Float;
    const-string v4, "ry"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v31

    .line 233
    .local v31, "radiusY":Ljava/lang/Float;
    if-eqz v17, :cond_1

    if-eqz v18, :cond_1

    if-eqz v30, :cond_1

    if-eqz v31, :cond_1

    .line 234
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v6, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v8, v10

    invoke-direct {v3, v4, v5, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 236
    .restart local v3    # "orgRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sonymobile/china/collage/svg/SVGHandler;->pushTransformWitScale(Lorg/xml/sax/Attributes;)[Landroid/graphics/Matrix;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v23, v4, v5

    .line 237
    .restart local v23    # "matrix":Landroid/graphics/Matrix;
    if-eqz v23, :cond_10

    .line 238
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 240
    :cond_10
    const-string v4, "fill"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v20

    .line 241
    .restart local v20    # "fillStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/china/collage/svg/SVGParserRules;->getGridIndex(Ljava/lang/String;)I

    move-result v7

    .line 242
    .restart local v7    # "tempIndex":I
    const/4 v4, -0x1

    if-le v7, v4, :cond_1

    .line 243
    const-string v4, "stroke"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v34

    .line 244
    .restart local v34    # "strokeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mElementsList:Ljava/util/List;

    new-instance v8, Lcom/sonymobile/china/collage/ImageElement;

    sget-object v10, Lcom/sonymobile/china/collage/ImageElement$ElementType;->OVAL:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mHeight:I

    const-string v5, "#FFFFFF"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object v9, v3

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/sonymobile/china/collage/ImageElement;-><init>(Ljava/lang/Object;Lcom/sonymobile/china/collage/ImageElement$ElementType;IIIZ)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 248
    .end local v3    # "orgRect":Landroid/graphics/RectF;
    .end local v7    # "tempIndex":I
    .end local v17    # "centerX":Ljava/lang/Float;
    .end local v18    # "centerY":Ljava/lang/Float;
    .end local v20    # "fillStr":Ljava/lang/String;
    .end local v23    # "matrix":Landroid/graphics/Matrix;
    .end local v30    # "radiusX":Ljava/lang/Float;
    .end local v31    # "radiusY":Ljava/lang/Float;
    .end local v34    # "strokeStr":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    if-nez v4, :cond_14

    const-string v4, "polygon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 249
    const-string v4, "points"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getNumberParseAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;

    move-result-object v27

    .line 250
    .local v27, "numbers":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    if-eqz v27, :cond_1

    .line 251
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 252
    .local v9, "p":Landroid/graphics/Path;
    # getter for: Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->numbers:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;->access$000(Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;)Ljava/util/ArrayList;

    move-result-object v28

    .line 253
    .local v28, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 254
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v9, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 255
    const/16 v22, 0x2

    .local v22, "i":I
    :goto_2
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_12

    .line 256
    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v36

    .line 257
    .local v36, "x":F
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v38

    .line 258
    .local v38, "y":F
    move/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    add-int/lit8 v22, v22, 0x2

    goto :goto_2

    .line 260
    .end local v36    # "x":F
    .end local v38    # "y":F
    :cond_12
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sonymobile/china/collage/svg/SVGHandler;->pushTransformWitScale(Lorg/xml/sax/Attributes;)[Landroid/graphics/Matrix;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v23, v4, v5

    .line 262
    .restart local v23    # "matrix":Landroid/graphics/Matrix;
    if-eqz v23, :cond_13

    .line 263
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 265
    :cond_13
    const-string v4, "fill"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v20

    .line 266
    .restart local v20    # "fillStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/china/collage/svg/SVGParserRules;->getGridIndex(Ljava/lang/String;)I

    move-result v7

    .line 267
    .restart local v7    # "tempIndex":I
    const/4 v4, -0x1

    if-le v7, v4, :cond_1

    .line 268
    const-string v4, "stroke"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v34

    .line 269
    .restart local v34    # "strokeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mElementsList:Ljava/util/List;

    new-instance v8, Lcom/sonymobile/china/collage/ImageElement;

    sget-object v10, Lcom/sonymobile/china/collage/ImageElement$ElementType;->POLYGON:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mHeight:I

    const-string v5, "#FFFFFF"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/sonymobile/china/collage/ImageElement;-><init>(Ljava/lang/Object;Lcom/sonymobile/china/collage/ImageElement$ElementType;IIIZ)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 274
    .end local v7    # "tempIndex":I
    .end local v9    # "p":Landroid/graphics/Path;
    .end local v20    # "fillStr":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v23    # "matrix":Landroid/graphics/Matrix;
    .end local v27    # "numbers":Lcom/sonymobile/china/collage/svg/SVGHandler$NumberParse;
    .end local v28    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v34    # "strokeStr":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    if-nez v4, :cond_16

    const-string v4, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 275
    const-string v4, "d"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/china/collage/svg/SVGHandler;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v9

    .line 276
    .restart local v9    # "p":Landroid/graphics/Path;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sonymobile/china/collage/svg/SVGHandler;->pushTransformWitScale(Lorg/xml/sax/Attributes;)[Landroid/graphics/Matrix;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v23, v4, v5

    .line 277
    .restart local v23    # "matrix":Landroid/graphics/Matrix;
    if-eqz v23, :cond_15

    .line 278
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 280
    :cond_15
    const-string v4, "fill"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v20

    .line 281
    .restart local v20    # "fillStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/china/collage/svg/SVGParserRules;->getGridIndex(Ljava/lang/String;)I

    move-result v7

    .line 282
    .restart local v7    # "tempIndex":I
    const/4 v4, -0x1

    if-le v7, v4, :cond_1

    .line 283
    const-string v4, "stroke"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/sonymobile/china/collage/svg/SVGHandler;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v34

    .line 284
    .restart local v34    # "strokeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mElementsList:Ljava/util/List;

    new-instance v8, Lcom/sonymobile/china/collage/ImageElement;

    sget-object v10, Lcom/sonymobile/china/collage/ImageElement$ElementType;->PATH:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->mHeight:I

    const-string v5, "#FFFFFF"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/sonymobile/china/collage/ImageElement;-><init>(Ljava/lang/Object;Lcom/sonymobile/china/collage/ImageElement$ElementType;IIIZ)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 287
    .end local v7    # "tempIndex":I
    .end local v9    # "p":Landroid/graphics/Path;
    .end local v20    # "fillStr":Ljava/lang/String;
    .end local v23    # "matrix":Landroid/graphics/Matrix;
    .end local v34    # "strokeStr":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/china/collage/svg/SVGHandler;->hidden:Z

    if-nez v4, :cond_1

    .line 288
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNRECOGNIZED SVG COMMAND: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
