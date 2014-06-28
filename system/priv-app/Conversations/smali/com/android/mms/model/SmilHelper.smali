.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_FIT:Ljava/lang/String; = "meet"

.field public static final ELEMENT_TAG_ATTACHMENT:Ljava/lang/String; = "ref"

.field public static final ELEMENT_TAG_AUDIO:Ljava/lang/String; = "audio"

.field public static final ELEMENT_TAG_IMAGE:Ljava/lang/String; = "img"

.field public static final ELEMENT_TAG_REF:Ljava/lang/String; = "ref"

.field public static final ELEMENT_TAG_TEXT:Ljava/lang/String; = "text"

.field public static final ELEMENT_TAG_VIDEO:Ljava/lang/String; = "video"

.field private static final LOCAL_LOGV:Z = false

.field private static final ONLY_TEXT_TAG:Ljava/lang/String; = "Only_Text"

.field private static final TAG:Ljava/lang/String; = "SmilHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "media"    # Lcom/android/mms/model/MediaModel;

    .prologue
    const/4 v1, 0x0

    .line 458
    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 459
    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 460
    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 461
    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 462
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2
    .param p0, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 198
    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 200
    .local v0, "par":Lorg/w3c/dom/smil/SMILParElement;
    const/high16 v1, 0x41000000

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 201
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 202
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v1, 0x0

    .line 468
    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 469
    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 470
    return-void
.end method

.method private static adjustTextRegions(Lcom/android/mms/model/SlideshowModel;)V
    .locals 11
    .param p0, "model"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v2, 0x0

    .line 122
    if-nez p0, :cond_1

    .line 144
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    .line 127
    .local v7, "layouts":Lcom/android/mms/model/LayoutModel;
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    .line 128
    .local v8, "size":I
    const/4 v0, 0x0

    .line 130
    .local v0, "onlyTextRegion":Lcom/android/mms/model/RegionModel;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 131
    invoke-virtual {p0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    .line 133
    .local v9, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    if-nez v0, :cond_2

    .line 137
    new-instance v0, Lcom/android/mms/model/RegionModel;

    .end local v0    # "onlyTextRegion":Lcom/android/mms/model/RegionModel;
    const-string v1, "Only_Text"

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getRootLayout()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getRootLayout()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 140
    .restart local v0    # "onlyTextRegion":Lcom/android/mms/model/RegionModel;
    :cond_2
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v10

    .line 141
    .local v10, "tModel":Lcom/android/mms/model/TextModel;
    invoke-virtual {v10, v0}, Lcom/android/mms/model/RegionMediaModel;->setRegion(Lcom/android/mms/model/RegionModel;)V

    .line 130
    .end local v10    # "tModel":Lcom/android/mms/model/TextModel;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 209
    .local v0, "mediaElement":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v0, p2}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 210
    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 31
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 310
    new-instance v7, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v7}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 313
    .local v7, "document":Lorg/w3c/dom/smil/SMILDocument;
    const-string v28, "smil"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/smil/SMILElement;

    .line 314
    .local v22, "smilElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 317
    const-string v28, "head"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILElement;

    .line 318
    .local v9, "headElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 321
    const-string v28, "layout"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 323
    .local v13, "layoutElement":Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v9, v13}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 326
    const-string v28, "root-layout"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 328
    .local v19, "rootLayoutElement":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v14

    .line 329
    .local v14, "layouts":Lcom/android/mms/model/LayoutModel;
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v28

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 330
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v28

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 331
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v5

    .line 332
    .local v5, "bgColor":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 333
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 335
    :cond_0
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 338
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v18

    .line 339
    .local v18, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v24, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/model/RegionModel;

    .line 341
    .local v17, "r":Lcom/android/mms/model/RegionModel;
    const-string v28, "region"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 342
    .local v23, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 344
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 345
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 346
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 347
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    .end local v17    # "r":Lcom/android/mms/model/RegionModel;
    .end local v23    # "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const-string v28, "body"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILElement;

    .line 353
    .local v6, "bodyElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 355
    const/16 v27, 0x0

    .line 356
    .local v27, "txtRegionPresentInLayout":Z
    const/4 v12, 0x0

    .line 357
    .local v12, "imgRegionPresentInLayout":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/model/SlideModel;

    .line 359
    .local v20, "slide":Lcom/android/mms/model/SlideModel;
    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v16

    .line 360
    .local v16, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x447a0000

    div-float v28, v28, v29

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    move-object/from16 v28, v16

    .line 362
    check-cast v28, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 365
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/model/MediaModel;

    .line 366
    .local v15, "media":Lcom/android/mms/model/MediaModel;
    const/16 v21, 0x0

    .line 367
    .local v21, "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v25

    .line 368
    .local v25, "src":Ljava/lang/String;
    instance-of v0, v15, Lcom/android/mms/model/TextModel;

    move/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v26, v15

    .line 369
    check-cast v26, Lcom/android/mms/model/TextModel;

    .line 370
    .local v26, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_3

    .line 376
    const-string v28, "text"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v28, v21

    .line 377
    check-cast v28, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v29, "Text"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    move/from16 v3, v27

    invoke-static {v0, v1, v13, v2, v3}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v27

    .line 407
    .end local v26    # "text":Lcom/android/mms/model/TextModel;
    :goto_2
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result v4

    .line 408
    .local v4, "begin":I
    if-eqz v4, :cond_4

    .line 409
    const-string v28, "begin"

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_4
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v8

    .line 412
    .local v8, "duration":I
    if-eqz v8, :cond_5

    .line 413
    int-to-float v0, v8

    move/from16 v28, v0

    const/high16 v29, 0x447a0000

    div-float v28, v28, v29

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 415
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 417
    check-cast v21, Lorg/w3c/dom/events/EventTarget;

    .end local v21    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    goto :goto_1

    .line 382
    .end local v4    # "begin":I
    .end local v8    # "duration":I
    .restart local v21    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_6
    instance-of v0, v15, Lcom/android/mms/model/ImageModel;

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 383
    const-string v28, "img"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v28, v21

    .line 384
    check-cast v28, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v29, "Image"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-static {v0, v1, v13, v2, v12}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v12

    goto :goto_2

    .line 389
    :cond_7
    instance-of v0, v15, Lcom/android/mms/model/VideoModel;

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 390
    const-string v28, "video"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v28, v21

    .line 391
    check-cast v28, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v29, "Image"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-static {v0, v1, v13, v2, v12}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v12

    goto :goto_2

    .line 396
    :cond_8
    instance-of v0, v15, Lcom/android/mms/model/AudioModel;

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 397
    const-string v28, "audio"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    goto/16 :goto_2

    .line 398
    :cond_9
    instance-of v0, v15, Lcom/sonyericsson/conversations/model/AttachmentModel;

    move/from16 v28, v0

    if-eqz v28, :cond_a

    .line 399
    const-string v28, "ref"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    goto/16 :goto_2

    .line 402
    :cond_a
    const-string v28, "SmilHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unsupport media: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 427
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "media":Lcom/android/mms/model/MediaModel;
    .end local v16    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .end local v20    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v21    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v25    # "src":Ljava/lang/String;
    :cond_b
    return-object v7
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 24
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 218
    new-instance v7, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v7}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 222
    .local v7, "document":Lorg/w3c/dom/smil/SMILDocument;
    const-string v22, "smil"

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/smil/SMILElement;

    .line 223
    .local v17, "smil":Lorg/w3c/dom/smil/SMILElement;
    const-string v22, "xmlns"

    const-string v23, "http://www.w3.org/2001/SMIL20/Language"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 227
    const-string v22, "head"

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/smil/SMILElement;

    .line 228
    .local v8, "head":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 230
    const-string v22, "layout"

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 231
    .local v12, "layout":Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v8, v12}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 234
    const-string v22, "body"

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/SMILElement;

    .line 235
    .local v5, "body":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 236
    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v14

    .line 239
    .local v14, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v16

    .line 240
    .local v16, "partsNum":I
    if-nez v16, :cond_1

    .line 302
    :cond_0
    return-object v7

    .line 244
    :cond_1
    const/4 v13, 0x0

    .line 245
    .local v13, "mediaCount":I
    const/16 v18, 0x0

    .line 246
    .local v18, "textCount":I
    const/4 v11, 0x0

    .line 247
    .local v11, "isText":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 249
    .local v15, "part":Lcom/google/android/mms/pdu/PduPart;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 251
    .local v6, "contentType":Ljava/lang/String;
    const-string v22, "text/plain"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "application/vnd.wap.xhtml+xml"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    :cond_2
    const/4 v11, 0x1

    .line 254
    :goto_1
    if-eqz v11, :cond_6

    .line 255
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v22

    if-nez v22, :cond_5

    .line 247
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 251
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 258
    :cond_5
    new-instance v20, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v22

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 260
    .local v20, "tmpData":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_3

    .line 267
    .end local v20    # "tmpData":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    if-eqz v14, :cond_7

    if-gtz v18, :cond_7

    if-lez v13, :cond_8

    .line 268
    :cond_7
    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v14

    .line 269
    const/4 v13, 0x0

    .line 270
    const/16 v18, 0x0

    .line 273
    :cond_8
    if-eqz v11, :cond_9

    .line 274
    const-string v22, "text"

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v19

    .line 276
    .local v19, "textElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 277
    add-int/lit8 v18, v18, 0x1

    .line 278
    goto :goto_2

    .end local v19    # "textElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_9
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 279
    const-string v22, "img"

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v10

    .line 281
    .local v10, "imageElement":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v14, v10}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 282
    add-int/lit8 v13, v13, 0x1

    .line 283
    goto :goto_2

    .end local v10    # "imageElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_a
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 284
    const-string v22, "video"

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    .line 286
    .local v21, "videoElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 287
    add-int/lit8 v13, v13, 0x1

    .line 288
    goto :goto_2

    .end local v21    # "videoElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_b
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 289
    const-string v22, "audio"

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 291
    .local v4, "audioElement":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v14, v4}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 292
    add-int/lit8 v13, v13, 0x1

    .line 293
    goto/16 :goto_2

    .line 295
    .end local v4    # "audioElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_c
    const-string v22, "ref"

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v3

    .line 297
    .local v3, "attachmentElement":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v14, v3}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 298
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 3
    .param p1, "rId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 433
    .local v1, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    .end local v1    # "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .param p0, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 153
    .local v2, "partNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 154
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 155
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v1

    .line 153
    .restart local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .param p0, "model"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->adjustTextRegions(Lcom/android/mms/model/SlideshowModel;)V

    .line 113
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 91
    .local v1, "smilPart":Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 94
    .local v0, "document":Lorg/w3c/dom/smil/SMILDocument;
    if-eqz v1, :cond_0

    .line 95
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 98
    :cond_0
    if-nez v0, :cond_1

    .line 100
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 103
    :cond_1
    return-object v0
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 6
    .param p0, "smilPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 177
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 184
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    .line 185
    .local v2, "document":Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 194
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "data":[B
    .end local v2    # "document":Lorg/w3c/dom/smil/SMILDocument;
    :goto_0
    return-object v4

    .line 187
    :catch_0
    move-exception v3

    .line 188
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "SmilHelper"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 189
    :catch_1
    move-exception v3

    .line 190
    .local v3, "e":Lorg/xml/sax/SAXException;
    const-string v4, "SmilHelper"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 191
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 192
    .local v3, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "SmilHelper"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "srme"    # Lorg/w3c/dom/smil/SMILRegionMediaElement;
    .param p2, "smilLayout"    # Lorg/w3c/dom/smil/SMILLayoutElement;
    .param p3, "regionId"    # Ljava/lang/String;
    .param p4, "regionPresentInLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 446
    .local v0, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 447
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 448
    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 449
    const/4 v1, 0x1

    .line 451
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .param p0, "in"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 166
    return-object p0
.end method
