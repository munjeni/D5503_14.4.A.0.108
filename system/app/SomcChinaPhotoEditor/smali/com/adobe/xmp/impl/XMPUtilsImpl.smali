.class public Lcom/adobe/xmp/impl/XMPUtilsImpl;
.super Ljava/lang/Object;
.source "XMPUtilsImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMMAS:Ljava/lang/String; = ",\uff0c\uff64\ufe50\ufe51\u3001\u060c\u055d"

.field private static final CONTROLS:Ljava/lang/String; = "\u2028\u2029"

.field private static final QUOTES:Ljava/lang/String; = "\"\u00ab\u00bb\u301d\u301e\u301f\u2015\u2039\u203a"

.field private static final SEMICOLA:Ljava/lang/String; = ";\uff1b\ufe54\u061b\u037e"

.field private static final SPACES:Ljava/lang/String; = " \u3000\u303f"

.field private static final UCK_COMMA:I = 0x2

.field private static final UCK_CONTROL:I = 0x5

.field private static final UCK_NORMAL:I = 0x0

.field private static final UCK_QUOTE:I = 0x4

.field private static final UCK_SEMICOLON:I = 0x3

.field private static final UCK_SPACE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/adobe/xmp/impl/XMPUtilsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/xmp/impl/XMPUtilsImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static appendProperties(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;ZZZ)V
    .locals 14
    .param p0, "source"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "destination"    # Lcom/adobe/xmp/XMPMeta;
    .param p2, "doAllProperties"    # Z
    .param p3, "replaceOldValues"    # Z
    .param p4, "deleteEmptyValues"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 519
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    move-object v9, p0

    .line 521
    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .local v9, "src":Lcom/adobe/xmp/impl/XMPMetaImpl;
    move-object v3, p1

    .line 522
    check-cast v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 524
    .local v3, "dest":Lcom/adobe/xmp/impl/XMPMetaImpl;
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 558
    return-void

    .line 526
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/xmp/impl/XMPNode;

    .line 529
    .local v8, "sourceSchema":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    .line 530
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 529
    invoke-static {v10, v11, v12}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 531
    .local v4, "destSchema":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v2, 0x0

    .line 532
    .local v2, "createdSchema":Z
    if-nez v4, :cond_2

    .line 534
    new-instance v4, Lcom/adobe/xmp/impl/XMPNode;

    .end local v4    # "destSchema":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 535
    new-instance v12, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v12}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/adobe/xmp/options/PropertyOptions;->setSchemaNode(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    .line 534
    invoke-direct {v4, v10, v11, v12}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 536
    .restart local v4    # "destSchema":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 537
    const/4 v2, 0x1

    .line 541
    :cond_2
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "ic":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 552
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v10

    if-nez v10, :cond_0

    if-nez v2, :cond_4

    if-eqz p4, :cond_0

    .line 555
    :cond_4
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 543
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adobe/xmp/impl/XMPNode;

    .line 544
    .local v7, "sourceProp":Lcom/adobe/xmp/impl/XMPNode;
    if-nez p2, :cond_6

    .line 545
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/adobe/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 547
    :cond_6
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v3, v7, v4, v0, v1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->appendSubtree(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;ZZ)V

    goto :goto_1
.end method

.method private static appendSubtree(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;ZZ)V
    .locals 18
    .param p0, "destXMP"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "sourceNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "destParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p3, "replaceOldValues"    # Z
    .param p4, "deleteEmptyValues"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    .line 603
    .local v6, "destNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v14, 0x0

    .line 604
    .local v14, "valueIsEmpty":Z
    if-eqz p4, :cond_0

    .line 606
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v15

    invoke-virtual {v15}, Lcom/adobe/xmp/options/PropertyOptions;->isSimple()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    const/4 v14, 0x0

    .line 611
    :cond_0
    :goto_0
    if-eqz p4, :cond_5

    if-eqz v14, :cond_5

    .line 613
    if-eqz v6, :cond_1

    .line 615
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 734
    :cond_1
    :goto_1
    return-void

    .line 607
    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    .line 608
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v14, 0x0

    goto :goto_0

    :cond_4
    const/4 v14, 0x1

    goto :goto_0

    .line 618
    :cond_5
    if-nez v6, :cond_6

    .line 621
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/adobe/xmp/impl/XMPNode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    .line 623
    :cond_6
    if-eqz p3, :cond_7

    .line 626
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v6, v15, v1, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    .line 627
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "destNode":Lcom/adobe/xmp/impl/XMPNode;
    check-cast v6, Lcom/adobe/xmp/impl/XMPNode;

    .line 629
    .restart local v6    # "destNode":Lcom/adobe/xmp/impl/XMPNode;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    .line 636
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    .line 637
    .local v12, "sourceForm":Lcom/adobe/xmp/options/PropertyOptions;
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    .line 638
    .local v3, "destForm":Lcom/adobe/xmp/options/PropertyOptions;
    if-ne v12, v3, :cond_1

    .line 642
    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 649
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/adobe/xmp/impl/XMPNode;

    .line 650
    .local v11, "sourceField":Lcom/adobe/xmp/impl/XMPNode;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v11, v6, v1, v2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->appendSubtree(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;ZZ)V

    .line 652
    if-eqz p4, :cond_8

    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v15

    if-nez v15, :cond_8

    .line 654
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_2

    .line 658
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v11    # "sourceField":Lcom/adobe/xmp/impl/XMPNode;
    :cond_9
    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 663
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "it":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 665
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/adobe/xmp/impl/XMPNode;

    .line 666
    .local v13, "sourceItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 667
    const-string v15, "xml:lang"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 673
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v15

    invoke-virtual {v15}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 672
    invoke-static {v6, v15}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v4

    .line 674
    .local v4, "destIndex":I
    if-eqz p4, :cond_c

    .line 675
    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 676
    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_c

    .line 678
    :cond_b
    const/4 v15, -0x1

    if-eq v4, v15, :cond_a

    .line 680
    invoke-virtual {v6, v4}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(I)V

    .line 681
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v15

    if-nez v15, :cond_a

    .line 683
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_3

    .line 687
    :cond_c
    const/4 v15, -0x1

    if-ne v4, v15, :cond_a

    .line 690
    const-string v15, "x-default"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 691
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v15

    if-nez v15, :cond_e

    .line 693
    :cond_d
    invoke-virtual {v13, v6}, Lcom/adobe/xmp/impl/XMPNode;->cloneSubtree(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_3

    .line 697
    :cond_e
    new-instance v5, Lcom/adobe/xmp/impl/XMPNode;

    .line 698
    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v15

    .line 699
    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 700
    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v17

    .line 697
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v5, v15, v0, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 701
    .local v5, "destItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v13, v5}, Lcom/adobe/xmp/impl/XMPNode;->cloneSubtree(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 702
    const/4 v15, 0x1

    invoke-virtual {v6, v15, v5}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_3

    .line 707
    .end local v4    # "destIndex":I
    .end local v5    # "destItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v13    # "sourceItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_f
    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "is":Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 715
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/adobe/xmp/impl/XMPNode;

    .line 717
    .restart local v13    # "sourceItem":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v10, 0x0

    .line 718
    .local v10, "match":Z
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "id":Ljava/util/Iterator;
    :cond_11
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_12

    .line 726
    if-nez v10, :cond_10

    .line 728
    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "destNode":Lcom/adobe/xmp/impl/XMPNode;
    check-cast v6, Lcom/adobe/xmp/impl/XMPNode;

    .line 729
    .restart local v6    # "destNode":Lcom/adobe/xmp/impl/XMPNode;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_4

    .line 720
    :cond_12
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adobe/xmp/impl/XMPNode;

    .line 721
    .restart local v5    # "destItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-static {v13, v5}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 723
    const/4 v10, 0x1

    goto :goto_5
.end method

.method private static applyQuotes(Ljava/lang/String;CCZ)Ljava/lang/String;
    .locals 10
    .param p0, "item"    # Ljava/lang/String;
    .param p1, "openQuote"    # C
    .param p2, "closeQuote"    # C
    .param p3, "allowCommas"    # Z

    .prologue
    const/4 v9, 0x4

    .line 1007
    if-nez p0, :cond_0

    .line 1009
    const-string p0, ""

    .line 1012
    :cond_0
    const/4 v5, 0x0

    .line 1030
    .local v5, "prevSpace":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v3, v7, :cond_4

    .line 1060
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 1069
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1071
    .local v4, "newItem":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "splitPoint":I
    :goto_2
    if-le v6, v3, :cond_8

    .line 1080
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1082
    move v2, v6

    .local v2, "charOffset":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v2, v7, :cond_9

    .line 1092
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1094
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1097
    .end local v2    # "charOffset":I
    .end local v4    # "newItem":Ljava/lang/StringBuffer;
    .end local v6    # "splitPoint":I
    :cond_3
    return-object p0

    .line 1032
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1033
    .local v0, "ch":C
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v1

    .line 1034
    .local v1, "charKind":I
    if-nez v3, :cond_5

    if-eq v1, v9, :cond_1

    .line 1039
    :cond_5
    const/4 v7, 0x1

    if-ne v1, v7, :cond_7

    .line 1042
    if-nez v5, :cond_1

    .line 1046
    const/4 v5, 0x1

    .line 1030
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1050
    :cond_7
    const/4 v5, 0x0

    .line 1051
    const/4 v7, 0x3

    if-eq v1, v7, :cond_1

    const/4 v7, 0x5

    if-eq v1, v7, :cond_1

    .line 1052
    const/4 v7, 0x2

    if-ne v1, v7, :cond_6

    if-nez p3, :cond_6

    goto :goto_1

    .line 1073
    .end local v0    # "ch":C
    .end local v1    # "charKind":I
    .restart local v4    # "newItem":Ljava/lang/StringBuffer;
    .restart local v6    # "splitPoint":I
    :cond_8
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v7

    if-eq v7, v9, :cond_2

    .line 1071
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1084
    .restart local v2    # "charOffset":I
    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1085
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v7

    if-ne v7, v9, :cond_a

    .line 1086
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1, p2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isSurroundingQuote(CCC)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1088
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1082
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static catenateArrayItems(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "separator"    # Ljava/lang/String;
    .param p4, "quotes"    # Ljava/lang/String;
    .param p5, "allowCommas"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 87
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 89
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 91
    :cond_0
    const-string p3, "; "

    .line 93
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 95
    :cond_2
    const-string p4, "\""

    :cond_3
    move-object v9, p0

    .line 98
    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 99
    .local v9, "xmpImpl":Lcom/adobe/xmp/impl/XMPMetaImpl;
    const/4 v1, 0x0

    .line 100
    .local v1, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v5, 0x0

    .line 104
    .local v5, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v2

    .line 105
    .local v2, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v2, v11, v12}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 106
    if-nez v1, :cond_4

    .line 108
    const-string v10, ""

    .line 142
    :goto_0
    return-object v10

    .line 110
    :cond_4
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 112
    :cond_5
    new-instance v10, Lcom/adobe/xmp/XMPException;

    const-string v11, "Named property must be non-alternate array"

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v10

    .line 116
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->checkSeparator(Ljava/lang/String;)V

    .line 118
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 119
    .local v7, "openQuote":C
    move-object/from16 v0, p4

    invoke-static {v0, v7}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->checkQuotes(Ljava/lang/String;C)C

    move-result v4

    .line 124
    .local v4, "closeQuote":C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v3, "catinatedString":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_8

    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 128
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    check-cast v5, Lcom/adobe/xmp/impl/XMPNode;

    .line 129
    .restart local v5    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 131
    new-instance v10, Lcom/adobe/xmp/XMPException;

    const-string v11, "Array items must be simple"

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v10

    .line 133
    :cond_9
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p5

    invoke-static {v10, v7, v4, v0}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->applyQuotes(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 138
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static checkQuotes(Ljava/lang/String;C)C
    .locals 5
    .param p0, "quotes"    # Ljava/lang/String;
    .param p1, "openQuote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x4

    .line 876
    invoke-static {p1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v0

    .line 877
    .local v0, "charKind":I
    if-eq v0, v4, :cond_0

    .line 879
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Invalid quoting character"

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 882
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 884
    move v1, p1

    .line 896
    .local v1, "closeQuote":C
    :cond_1
    invoke-static {p1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->getClosingQuote(C)C

    move-result v2

    if-eq v1, v2, :cond_3

    .line 898
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Mismatched quote pair"

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 888
    .end local v1    # "closeQuote":C
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 889
    .restart local v1    # "closeQuote":C
    invoke-static {v1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v0

    .line 890
    if-eq v0, v4, :cond_1

    .line 892
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Invalid quoting character"

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 900
    :cond_3
    return v1
.end method

.method private static checkSeparator(Ljava/lang/String;)V
    .locals 6
    .param p0, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 835
    const/4 v1, 0x0

    .line 836
    .local v1, "haveSemicolon":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 854
    if-nez v1, :cond_4

    .line 856
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Separator must have one semicolon"

    invoke-direct {v3, v4, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 838
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v0

    .line 839
    .local v0, "charKind":I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 841
    if-eqz v1, :cond_1

    .line 843
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Separator can have only one semicolon"

    invoke-direct {v3, v4, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 846
    :cond_1
    const/4 v1, 0x1

    .line 836
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 848
    :cond_3
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 850
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Separator can have only spaces and one semicolon"

    invoke-direct {v3, v4, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 858
    .end local v0    # "charKind":I
    :cond_4
    return-void
.end method

.method private static classifyCharacter(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 914
    const-string v0, " \u3000\u303f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_1

    const/16 v0, 0x200b

    if-gt p0, v0, :cond_1

    .line 916
    :cond_0
    const/4 v0, 0x1

    .line 938
    :goto_0
    return v0

    .line 918
    :cond_1
    const-string v0, ",\uff0c\uff64\ufe50\ufe51\u3001\u060c\u055d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 920
    const/4 v0, 0x2

    goto :goto_0

    .line 922
    :cond_2
    const-string v0, ";\uff1b\ufe54\u061b\u037e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 924
    const/4 v0, 0x3

    goto :goto_0

    .line 926
    :cond_3
    const-string v0, "\"\u00ab\u00bb\u301d\u301e\u301f\u2015\u2039\u203a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    const/16 v0, 0x3008

    if-gt v0, p0, :cond_4

    const/16 v0, 0x300f

    if-le p0, v0, :cond_5

    .line 927
    :cond_4
    const/16 v0, 0x2018

    if-gt v0, p0, :cond_6

    const/16 v0, 0x201f

    if-gt p0, v0, :cond_6

    .line 929
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 931
    :cond_6
    const/16 v0, 0x20

    if-lt p0, v0, :cond_7

    const-string v0, "\u2028\u2029"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_8

    .line 933
    :cond_7
    const/4 v0, 0x5

    goto :goto_0

    .line 938
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getClosingQuote(C)C
    .locals 1
    .param p0, "openQuote"    # C

    .prologue
    .line 950
    sparse-switch p0, :sswitch_data_0

    .line 986
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 953
    :sswitch_0
    const/16 v0, 0x22

    goto :goto_0

    .line 958
    :sswitch_1
    const/16 v0, 0xbb

    goto :goto_0

    .line 960
    :sswitch_2
    const/16 v0, 0xab

    goto :goto_0

    .line 962
    :sswitch_3
    const/16 v0, 0x2015

    goto :goto_0

    .line 964
    :sswitch_4
    const/16 v0, 0x2019

    goto :goto_0

    .line 966
    :sswitch_5
    const/16 v0, 0x201b

    goto :goto_0

    .line 968
    :sswitch_6
    const/16 v0, 0x201d

    goto :goto_0

    .line 970
    :sswitch_7
    const/16 v0, 0x201f

    goto :goto_0

    .line 972
    :sswitch_8
    const/16 v0, 0x203a

    goto :goto_0

    .line 974
    :sswitch_9
    const/16 v0, 0x2039

    goto :goto_0

    .line 976
    :sswitch_a
    const/16 v0, 0x3009

    goto :goto_0

    .line 978
    :sswitch_b
    const/16 v0, 0x300b

    goto :goto_0

    .line 980
    :sswitch_c
    const/16 v0, 0x300d

    goto :goto_0

    .line 982
    :sswitch_d
    const/16 v0, 0x300f

    goto :goto_0

    .line 984
    :sswitch_e
    const/16 v0, 0x301f

    goto :goto_0

    .line 950
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0xab -> :sswitch_1
        0xbb -> :sswitch_2
        0x2015 -> :sswitch_3
        0x2018 -> :sswitch_4
        0x201a -> :sswitch_5
        0x201c -> :sswitch_6
        0x201e -> :sswitch_7
        0x2039 -> :sswitch_8
        0x203a -> :sswitch_9
        0x3008 -> :sswitch_a
        0x300a -> :sswitch_b
        0x300c -> :sswitch_c
        0x300e -> :sswitch_d
        0x301d -> :sswitch_e
    .end sparse-switch
.end method

.method private static isClosingingQuote(CCC)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "openQuote"    # C
    .param p2, "closeQuote"    # C

    .prologue
    .line 1121
    if-eq p0, p2, :cond_1

    const/16 v0, 0x301d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x301e

    if-eq p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x301f

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSurroundingQuote(CCC)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "openQuote"    # C
    .param p2, "closeQuote"    # C

    .prologue
    .line 1109
    if-eq p0, p1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isClosingingQuote(CCC)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z
    .locals 14
    .param p0, "leftNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "rightNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    .line 747
    .local v4, "leftForm":Lcom/adobe/xmp/options/PropertyOptions;
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v8

    .line 749
    .local v8, "rightForm":Lcom/adobe/xmp/options/PropertyOptions;
    invoke-virtual {v4, v8}, Lcom/adobe/xmp/options/PropertyOptions;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 821
    :cond_0
    :goto_0
    return v10

    .line 754
    :cond_1
    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v12

    if-nez v12, :cond_3

    .line 757
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v12

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v13

    if-ne v12, v13, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 766
    invoke-virtual {p0, v11}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 767
    invoke-virtual {p1, v11}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 766
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    :cond_2
    move v10, v11

    .line 821
    goto :goto_0

    .line 772
    :cond_3
    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 776
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 783
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/xmp/impl/XMPNode;

    .line 784
    .local v3, "leftField":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {p1, v12, v10}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    .line 786
    .local v7, "rightField":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v7, :cond_0

    invoke-static {v3, v7}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    .line 799
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "leftField":Lcom/adobe/xmp/impl/XMPNode;
    .end local v7    # "rightField":Lcom/adobe/xmp/impl/XMPNode;
    :cond_5
    sget-boolean v12, Lcom/adobe/xmp/impl/XMPUtilsImpl;->$assertionsDisabled:Z

    if-nez v12, :cond_6

    invoke-virtual {v4}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v12

    if-nez v12, :cond_6

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 801
    :cond_6
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "il":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 803
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adobe/xmp/impl/XMPNode;

    .line 805
    .local v5, "leftItem":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v6, 0x0

    .line 806
    .local v6, "match":Z
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ir":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_9

    .line 815
    :goto_1
    if-nez v6, :cond_7

    goto/16 :goto_0

    .line 808
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adobe/xmp/impl/XMPNode;

    .line 809
    .local v9, "rightItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-static {v5, v9}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 811
    const/4 v6, 0x1

    .line 812
    goto :goto_1
.end method

.method public static removeProperties(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 16
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "doAllProperties"    # Z
    .param p4, "includeAliases"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-static/range {p0 .. p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    move-object/from16 v12, p0

    .line 412
    check-cast v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 414
    .local v12, "xmpImpl":Lcom/adobe/xmp/impl/XMPMetaImpl;
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 420
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 422
    :cond_0
    new-instance v13, Lcom/adobe/xmp/XMPException;

    const-string v14, "Property name requires schema namespace"

    .line 423
    const/4 v15, 0x4

    .line 422
    invoke-direct {v13, v14, v15}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v13

    .line 426
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v3

    .line 428
    .local v3, "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v3, v14, v15}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    .line 429
    .local v9, "propNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v9, :cond_3

    .line 431
    if-nez p3, :cond_2

    .line 432
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v13

    .line 433
    invoke-virtual {v13}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v14

    .line 432
    invoke-static {v13, v14}, Lcom/adobe/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 435
    :cond_2
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    .line 436
    .local v7, "parent":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v7, v9}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 437
    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v13

    if-nez v13, :cond_3

    .line 440
    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 502
    .end local v3    # "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    .end local v7    # "parent":Lcom/adobe/xmp/impl/XMPNode;
    .end local v9    # "propNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_3
    return-void

    .line 446
    :cond_4
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_7

    .line 454
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v13, v0, v14}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v11

    .line 455
    .local v11, "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v11, :cond_5

    .line 457
    move/from16 v0, p3

    invoke-static {v11, v0}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->removeSchemaChildren(Lcom/adobe/xmp/impl/XMPNode;Z)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 459
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 463
    :cond_5
    if-eqz p4, :cond_3

    .line 471
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAliases(Ljava/lang/String;)[Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v2

    .line 472
    .local v2, "aliases":[Lcom/adobe/xmp/properties/XMPAliasInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v13, v2

    if-ge v4, v13, :cond_3

    .line 474
    aget-object v5, v2, v4

    .line 475
    .local v5, "info":Lcom/adobe/xmp/properties/XMPAliasInfo;
    invoke-interface {v5}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v13

    .line 476
    invoke-interface {v5}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v14

    .line 475
    invoke-static {v13, v14}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v8

    .line 478
    .local v8, "path":Lcom/adobe/xmp/impl/xpath/XMPPath;
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v8, v14, v15}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 479
    .local v1, "actualProp":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_6

    .line 481
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    .line 482
    .restart local v7    # "parent":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v7, v1}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 472
    .end local v7    # "parent":Lcom/adobe/xmp/impl/XMPNode;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "actualProp":Lcom/adobe/xmp/impl/XMPNode;
    .end local v2    # "aliases":[Lcom/adobe/xmp/properties/XMPAliasInfo;
    .end local v4    # "i":I
    .end local v5    # "info":Lcom/adobe/xmp/properties/XMPAliasInfo;
    .end local v8    # "path":Lcom/adobe/xmp/impl/xpath/XMPPath;
    .end local v11    # "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_7
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 495
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/adobe/xmp/impl/XMPNode;

    .line 496
    .local v10, "schema":Lcom/adobe/xmp/impl/XMPNode;
    move/from16 v0, p3

    invoke-static {v10, v0}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->removeSchemaChildren(Lcom/adobe/xmp/impl/XMPNode;Z)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 498
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private static removeSchemaChildren(Lcom/adobe/xmp/impl/XMPNode;Z)Z
    .locals 4
    .param p0, "schemaNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "doAllProperties"    # Z

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 576
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 577
    .local v0, "currProp":Lcom/adobe/xmp/impl/XMPNode;
    if-nez p1, :cond_2

    .line 578
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 580
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 584
    .end local v0    # "currProp":Lcom/adobe/xmp/impl/XMPNode;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static separateArrayItems(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Z)V
    .locals 22
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "catedStr"    # Ljava/lang/String;
    .param p4, "arrayOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .param p5, "preserveCommas"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static/range {p1 .. p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 174
    invoke-static/range {p2 .. p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 175
    if-nez p3, :cond_0

    .line 177
    new-instance v19, Lcom/adobe/xmp/XMPException;

    const-string v20, "Parameter must not be null"

    const/16 v21, 0x4

    invoke-direct/range {v19 .. v21}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v19

    .line 179
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    move-object/from16 v18, p0

    .line 180
    check-cast v18, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 183
    .local v18, "xmpImpl":Lcom/adobe/xmp/impl/XMPMetaImpl;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->separateFindCreateArray(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Lcom/adobe/xmp/impl/XMPMetaImpl;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 188
    .local v4, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v15, 0x0

    .local v15, "nextKind":I
    const/4 v6, 0x0

    .line 189
    .local v6, "charKind":I
    const/4 v5, 0x0

    .local v5, "ch":C
    const/4 v14, 0x0

    .line 191
    .local v14, "nextChar":C
    const/4 v10, 0x0

    .line 192
    .local v10, "itemEnd":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    .line 193
    .local v8, "endPos":I
    :cond_1
    :goto_0
    if-lt v10, v8, :cond_3

    .line 331
    :cond_2
    return-void

    .line 197
    :cond_3
    move v11, v10

    .local v11, "itemStart":I
    :goto_1
    if-lt v11, v8, :cond_7

    .line 206
    :cond_4
    if-ge v11, v8, :cond_2

    .line 211
    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v6, v0, :cond_b

    .line 215
    move v10, v11

    :goto_2
    if-lt v10, v8, :cond_8

    .line 244
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 314
    .local v12, "itemValue":Ljava/lang/String;
    :cond_6
    :goto_3
    const/4 v9, -0x1

    .line 315
    .local v9, "foundIndex":I
    const/16 v16, 0x1

    .local v16, "oldChild":I
    :goto_4
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_11

    .line 324
    :goto_5
    const/4 v13, 0x0

    .line 325
    .local v13, "newItem":Lcom/adobe/xmp/impl/XMPNode;
    if-gez v9, :cond_1

    .line 327
    new-instance v13, Lcom/adobe/xmp/impl/XMPNode;

    .end local v13    # "newItem":Lcom/adobe/xmp/impl/XMPNode;
    const-string v19, "[]"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v12, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 328
    .restart local v13    # "newItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v4, v13}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 199
    .end local v9    # "foundIndex":I
    .end local v12    # "itemValue":Ljava/lang/String;
    .end local v13    # "newItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v16    # "oldChild":I
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 200
    invoke-static {v5}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v6

    .line 201
    if-eqz v6, :cond_4

    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v6, v0, :cond_4

    .line 197
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 217
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 218
    invoke-static {v5}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v6

    .line 220
    if-eqz v6, :cond_9

    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v6, v0, :cond_9

    .line 221
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v6, v0, :cond_a

    if-eqz p5, :cond_a

    .line 215
    :cond_9
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 225
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    .line 229
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    if-ge v0, v8, :cond_5

    .line 231
    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 232
    invoke-static {v5}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v15

    .line 233
    if-eqz v15, :cond_9

    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v15, v0, :cond_9

    .line 234
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v15, v0, :cond_5

    if-eqz p5, :cond_5

    goto :goto_6

    .line 253
    :cond_b
    move/from16 v17, v5

    .line 254
    .local v17, "openQuote":C
    invoke-static/range {v17 .. v17}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->getClosingQuote(C)C

    move-result v7

    .line 256
    .local v7, "closeQuote":C
    add-int/lit8 v11, v11, 0x1

    .line 257
    const-string v12, ""

    .line 259
    .restart local v12    # "itemValue":Ljava/lang/String;
    move v10, v11

    :goto_7
    if-ge v10, v8, :cond_6

    .line 261
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 262
    invoke-static {v5}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v6

    .line 264
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v6, v0, :cond_c

    move/from16 v0, v17

    invoke-static {v5, v0, v7}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isSurroundingQuote(CCC)Z

    move-result v19

    if-nez v19, :cond_d

    .line 268
    :cond_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 259
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 278
    :cond_d
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    if-ge v0, v8, :cond_e

    .line 280
    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 281
    invoke-static {v14}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v15

    .line 289
    :goto_9
    if-ne v5, v14, :cond_f

    .line 292
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 294
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 285
    :cond_e
    const/4 v15, 0x3

    .line 286
    const/16 v14, 0x3b

    goto :goto_9

    .line 296
    :cond_f
    move/from16 v0, v17

    invoke-static {v5, v0, v7}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isClosingingQuote(CCC)Z

    move-result v19

    if-nez v19, :cond_10

    .line 299
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    .line 305
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 306
    goto/16 :goto_3

    .line 317
    .end local v7    # "closeQuote":C
    .end local v17    # "openQuote":C
    .restart local v9    # "foundIndex":I
    .restart local v16    # "oldChild":I
    :cond_11
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 319
    move/from16 v9, v16

    .line 320
    goto/16 :goto_5

    .line 315
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4
.end method

.method private static separateFindCreateArray(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Lcom/adobe/xmp/impl/XMPMetaImpl;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 8
    .param p0, "schemaNS"    # Ljava/lang/String;
    .param p1, "arrayName"    # Ljava/lang/String;
    .param p2, "arrayOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .param p3, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x66

    .line 346
    invoke-static {p2, v7}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p2

    .line 347
    invoke-virtual {p2}, Lcom/adobe/xmp/options/PropertyOptions;->isOnlyArrayOptions()Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Options can only provide array form"

    const/16 v5, 0x67

    invoke-direct {v3, v4, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 354
    :cond_0
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v2

    .line 355
    .local v2, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    invoke-virtual {p3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v7}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 356
    .local v1, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_3

    .line 360
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 361
    .local v0, "arrayForm":Lcom/adobe/xmp/options/PropertyOptions;
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    :cond_1
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Named property must be non-alternate array"

    invoke-direct {v3, v4, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 366
    :cond_2
    invoke-virtual {p2, v0}, Lcom/adobe/xmp/options/PropertyOptions;->equalArrayTypes(Lcom/adobe/xmp/options/PropertyOptions;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 368
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Mismatch of specified and existing array form"

    invoke-direct {v3, v4, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 376
    .end local v0    # "arrayForm":Lcom/adobe/xmp/options/PropertyOptions;
    :cond_3
    invoke-virtual {p3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    .line 377
    invoke-virtual {p2, v6}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    .line 376
    invoke-static {v3, v2, v6, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 378
    if-nez v1, :cond_4

    .line 380
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Failed to create named array"

    invoke-direct {v3, v4, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 383
    :cond_4
    return-object v1
.end method
