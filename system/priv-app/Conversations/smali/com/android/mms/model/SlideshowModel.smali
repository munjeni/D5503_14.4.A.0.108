.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static final REGION_HEIGHT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SlideshowModel"

.field private static final regionElementComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private mIsBrief:Z

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field private mSlideNodeNum:I

.field private final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/android/mms/model/SlideshowModel$1;

    invoke-direct {v0}, Lcom/android/mms/model/SlideshowModel$1;-><init>()V

    sput-object v0, Lcom/android/mms/model/SlideshowModel;->regionElementComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 73
    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlideNodeNum:I

    .line 79
    iput-boolean v0, p0, Lcom/android/mms/model/SlideshowModel;->mIsBrief:Z

    .line 83
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 85
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    .line 86
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p3, "documentCache"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p4, "pbCache"    # Lcom/google/android/mms/pdu/PduBody;
    .param p5, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 73
    iput v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlideNodeNum:I

    .line 79
    iput-boolean v2, p0, Lcom/android/mms/model/SlideshowModel;->mIsBrief:Z

    .line 92
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 93
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 94
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 97
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 98
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 99
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 100
    invoke-virtual {v1, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 102
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/ContentResolver;Z)V
    .locals 0
    .param p1, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p3, "documentCache"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p4, "pbCache"    # Lcom/google/android/mms/pdu/PduBody;
    .param p5, "contentResolver"    # Landroid/content/ContentResolver;
    .param p6, "isBrief"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/ContentResolver;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/ContentResolver;)V

    .line 109
    iput-boolean p6, p0, Lcom/android/mms/model/SlideshowModel;->mIsBrief:Z

    .line 110
    return-void
.end method

.method public static createBriefFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 62
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p2, "isBrief"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v27

    .line 135
    .local v27, "document":Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v52

    .line 136
    .local v52, "sle":Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v60

    .line 137
    .local v60, "srle":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface/range {v60 .. v60}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v22

    .line 138
    .local v22, "w":I
    invoke-interface/range {v60 .. v60}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v23

    .line 139
    .local v23, "h":I
    if-eqz v22, :cond_0

    if-nez v23, :cond_1

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v22

    .line 141
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v23

    .line 142
    move-object/from16 v0, v60

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 143
    move-object/from16 v0, v60

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 147
    :cond_1
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v48, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v42, "oneMediaRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v41

    .line 150
    .local v41, "nlRegions":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v49

    .line 153
    .local v49, "regionsNum":I
    const/16 v46, 0x0

    .line 155
    .local v46, "realWidth":I
    const/16 v45, 0x0

    .line 157
    .local v45, "realHeight":I
    const/16 v61, 0x0

    .line 158
    .local v61, "textTop":I
    const/16 v35, 0x0

    .line 160
    .local v35, "imageTop":I
    const/16 v47, 0x0

    .line 161
    .local v47, "referTop":I
    const/16 v57, 0x1

    .line 162
    .local v57, "smilValid":Z
    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v58, "sortedSre":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_0
    move/from16 v0, v33

    move/from16 v1, v49

    if-ge v0, v1, :cond_2

    .line 166
    move-object/from16 v0, v41

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILRegionElement;

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v33, v33, 0x1

    goto :goto_0

    .line 168
    :cond_2
    sget-object v6, Lcom/android/mms/model/SlideshowModel;->regionElementComparator:Ljava/util/Comparator;

    move-object/from16 v0, v58

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 169
    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 170
    .local v59, "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v17

    .line 171
    .local v17, "height":I
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v9

    .line 173
    .local v9, "top":I
    move/from16 v0, v47

    if-le v0, v9, :cond_6

    .line 174
    const/16 v57, 0x0

    .line 180
    .end local v9    # "top":I
    .end local v17    # "height":I
    .end local v59    # "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_3
    const/16 v50, 0x0

    .line 181
    .local v50, "regonIndex":I
    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_4
    :goto_2
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 182
    .restart local v59    # "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v10

    .line 183
    .local v10, "width":I
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v17

    .line 184
    .restart local v17    # "height":I
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v8

    .line 185
    .local v8, "left":I
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v9

    .line 186
    .restart local v9    # "top":I
    const/4 v5, 0x0

    .line 187
    .local v5, "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    if-nez v57, :cond_7

    .line 189
    new-instance v5, Lcom/android/mms/model/RegionModel;

    .end local v5    # "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x64

    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v5 .. v12}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 195
    .restart local v5    # "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    :goto_3
    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    if-nez v57, :cond_5

    .line 199
    mul-int/lit8 v9, v50, 0x64

    .line 200
    const/16 v17, 0x64

    .line 201
    add-int/lit8 v50, v50, 0x1

    .line 203
    :cond_5
    new-instance v11, Lcom/android/mms/model/RegionModel;

    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v18

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    invoke-direct/range {v11 .. v18}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 206
    .local v11, "r":Lcom/android/mms/model/RegionModel;
    add-int v6, v8, v10

    move/from16 v0, v46

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v46

    .line 208
    add-int v6, v9, v17

    move/from16 v0, v45

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v45

    .line 209
    move-object/from16 v0, v48

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Image"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 212
    move/from16 v35, v9

    goto :goto_2

    .line 177
    .end local v5    # "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    .end local v8    # "left":I
    .end local v10    # "width":I
    .end local v11    # "r":Lcom/android/mms/model/RegionModel;
    .end local v50    # "regonIndex":I
    :cond_6
    add-int v47, v9, v17

    .line 178
    goto/16 :goto_1

    .line 192
    .restart local v5    # "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    .restart local v8    # "left":I
    .restart local v10    # "width":I
    .restart local v50    # "regonIndex":I
    :cond_7
    new-instance v5, Lcom/android/mms/model/RegionModel;

    .end local v5    # "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v12

    move/from16 v11, v17

    invoke-direct/range {v5 .. v12}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .restart local v5    # "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    goto :goto_3

    .line 213
    .restart local v11    # "r":Lcom/android/mms/model/RegionModel;
    :cond_8
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 214
    move/from16 v61, v9

    goto/16 :goto_2

    .line 219
    .end local v5    # "oneMediaRegion":Lcom/android/mms/model/RegionModel;
    .end local v8    # "left":I
    .end local v9    # "top":I
    .end local v10    # "width":I
    .end local v11    # "r":Lcom/android/mms/model/RegionModel;
    .end local v17    # "height":I
    .end local v59    # "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_9
    if-lez v46, :cond_a

    .line 220
    move/from16 v0, v22

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 221
    :cond_a
    if-lez v45, :cond_b

    .line 222
    move/from16 v0, v23

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 225
    :cond_b
    if-nez v57, :cond_c

    const/16 v6, 0x64

    move/from16 v0, v23

    if-ge v0, v6, :cond_c

    .line 226
    const/16 v23, 0x64

    .line 229
    :cond_c
    new-instance v18, Lcom/android/mms/model/RegionModel;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v23}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 230
    .local v18, "rootLayout":Lcom/android/mms/model/RegionModel;
    new-instance v25, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 232
    .local v25, "layouts":Lcom/android/mms/model/LayoutModel;
    move/from16 v0, v61

    move/from16 v1, v35

    if-ge v0, v1, :cond_e

    .line 233
    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 238
    :goto_4
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v43

    .line 241
    .local v43, "originalRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v30

    .line 242
    .local v30, "docBody":Lorg/w3c/dom/smil/SMILElement;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v54

    .line 243
    .local v54, "slideNodes":Lorg/w3c/dom/NodeList;
    if-eqz p2, :cond_10

    invoke-interface/range {v54 .. v54}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_f

    const/16 v55, 0x1

    .line 244
    .local v55, "slidesNum":I
    :goto_5
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move/from16 v1, v55

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .local v26, "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/16 v33, 0x0

    :goto_6
    move/from16 v0, v33

    move/from16 v1, v55

    if-ge v0, v1, :cond_14

    .line 249
    move-object/from16 v0, v54

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v44

    check-cast v44, Lorg/w3c/dom/smil/SMILParElement;

    .line 252
    .local v44, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v38

    .line 253
    .local v38, "mediaNodes":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v39

    .line 254
    .local v39, "mediaNum":I
    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .local v40, "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/16 v51, 0x0

    .line 258
    .local v51, "restore":Z
    const/4 v6, 0x1

    move/from16 v0, v39

    if-ne v0, v6, :cond_d

    .line 259
    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeRegionsTo(Ljava/util/ArrayList;)V

    .line 260
    const/16 v51, 0x1

    .line 263
    :cond_d
    const/16 v36, 0x0

    .local v36, "j":I
    :goto_7
    move/from16 v0, v36

    move/from16 v1, v39

    if-ge v0, v1, :cond_11

    .line 265
    :try_start_0
    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v56

    check-cast v56, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 266
    .local v56, "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v37

    .line 268
    .local v37, "media":Lcom/android/mms/model/MediaModel;
    check-cast v56, Lorg/w3c/dom/events/EventTarget;

    .end local v56    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v56

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 270
    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    .end local v37    # "media":Lcom/android/mms/model/MediaModel;
    :goto_8
    add-int/lit8 v36, v36, 0x1

    goto :goto_7

    .line 235
    .end local v26    # "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .end local v30    # "docBody":Lorg/w3c/dom/smil/SMILElement;
    .end local v36    # "j":I
    .end local v38    # "mediaNodes":Lorg/w3c/dom/NodeList;
    .end local v39    # "mediaNum":I
    .end local v40    # "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v43    # "originalRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    .end local v44    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .end local v51    # "restore":Z
    .end local v54    # "slideNodes":Lorg/w3c/dom/NodeList;
    .end local v55    # "slidesNum":I
    :cond_e
    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    goto/16 :goto_4

    .line 243
    .restart local v30    # "docBody":Lorg/w3c/dom/smil/SMILElement;
    .restart local v43    # "originalRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    .restart local v54    # "slideNodes":Lorg/w3c/dom/NodeList;
    :cond_f
    const/16 v55, 0x0

    goto :goto_5

    :cond_10
    invoke-interface/range {v54 .. v54}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v55

    goto :goto_5

    .line 271
    .restart local v26    # "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .restart local v36    # "j":I
    .restart local v38    # "mediaNodes":Lorg/w3c/dom/NodeList;
    .restart local v39    # "mediaNum":I
    .restart local v40    # "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .restart local v44    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .restart local v51    # "restore":Z
    .restart local v55    # "slidesNum":I
    :catch_0
    move-exception v32

    .line 272
    .local v32, "e":Ljava/lang/ClassCastException;
    const-string v6, "SlideshowModel"

    const-string v7, "Unsupported SMIL element."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 273
    .end local v32    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v32

    .line 274
    .local v32, "e":Ljava/lang/Exception;
    const-string v6, "SlideshowModel"

    const-string v7, "Failed to get media model."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 278
    .end local v32    # "e":Ljava/lang/Exception;
    :cond_11
    const/4 v6, 0x1

    move/from16 v0, v51

    if-ne v0, v6, :cond_12

    .line 279
    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeRegionsTo(Ljava/util/ArrayList;)V

    .line 282
    :cond_12
    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v6

    const/high16 v7, 0x447a0000

    mul-float/2addr v6, v7

    float-to-int v0, v6

    move/from16 v31, v0

    .line 283
    .local v31, "duration":I
    const/16 v53, 0x0

    .line 284
    .local v53, "slide":Lcom/android/mms/model/SlideModel;
    if-gtz v31, :cond_13

    .line 285
    new-instance v53, Lcom/android/mms/model/SlideModel;

    .end local v53    # "slide":Lcom/android/mms/model/SlideModel;
    const/16 v6, 0x1388

    move-object/from16 v0, v53

    move-object/from16 v1, v40

    invoke-direct {v0, v6, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 289
    .restart local v53    # "slide":Lcom/android/mms/model/SlideModel;
    :goto_9
    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 290
    check-cast v44, Lorg/w3c/dom/events/EventTarget;

    .end local v44    # "par":Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v44

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 291
    move-object/from16 v0, v26

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_6

    .line 287
    .restart local v44    # "par":Lorg/w3c/dom/smil/SMILParElement;
    :cond_13
    new-instance v53, Lcom/android/mms/model/SlideModel;

    .end local v53    # "slide":Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, v53

    move/from16 v1, v31

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .restart local v53    # "slide":Lcom/android/mms/model/SlideModel;
    goto :goto_9

    .line 294
    .end local v31    # "duration":I
    .end local v36    # "j":I
    .end local v38    # "mediaNodes":Lorg/w3c/dom/NodeList;
    .end local v39    # "mediaNum":I
    .end local v40    # "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v44    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .end local v51    # "restore":Z
    .end local v53    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_14
    new-instance v24, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    move-object/from16 v28, p1

    invoke-direct/range {v24 .. v29}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/ContentResolver;)V

    .line 296
    .local v24, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-interface/range {v54 .. v54}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Lcom/android/mms/model/SlideshowModel;->setSlideNodeNum(I)V

    .line 297
    move-object/from16 v0, v24

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 298
    return-object v24
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v1

    .line 403
    .local v1, "p":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 405
    .local v2, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 406
    .local v0, "msgType":I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 408
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 410
    .restart local v2    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "document"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p3, "isMakingCopy"    # Z

    .prologue
    .line 314
    new-instance v10, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 316
    .local v10, "pb":Lcom/google/android/mms/pdu/PduBody;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/model/SlideModel;

    .line 317
    .local v11, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 318
    .local v6, "media":Lcom/android/mms/model/MediaModel;
    new-instance v9, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 320
    .local v9, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object v15, v6

    .line 321
    check-cast v15, Lcom/android/mms/model/TextModel;

    .line 323
    .local v15, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual {v15}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 327
    invoke-virtual {v15}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 331
    .end local v15    # "text":Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 333
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v13

    .line 334
    .local v13, "src":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 336
    const-string v16, "cid:"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    .line 337
    .local v14, "startWithContentId":Z
    if-eqz v14, :cond_4

    .line 338
    const-string v16, "cid:"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "location":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 347
    move-object v7, v5

    .line 348
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 351
    if-eqz v14, :cond_5

    .line 353
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 360
    .end local v5    # "location":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v14    # "startWithContentId":Z
    :cond_3
    :goto_2
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 361
    check-cast v6, Lcom/android/mms/model/TextModel;

    .end local v6    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 373
    :goto_3
    invoke-virtual {v10, v9}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0

    .line 340
    .restart local v6    # "media":Lcom/android/mms/model/MediaModel;
    .restart local v14    # "startWithContentId":Z
    :cond_4
    move-object v5, v13

    .restart local v5    # "location":Ljava/lang/String;
    goto :goto_1

    .line 355
    .restart local v7    # "name":Ljava/lang/String;
    :cond_5
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 356
    .local v4, "index":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v4, v0, :cond_6

    move-object v1, v5

    .line 357
    .local v1, "contentId":Ljava/lang/String;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_2

    .line 356
    .end local v1    # "contentId":Ljava/lang/String;
    :cond_6
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 362
    .end local v4    # "index":I
    .end local v5    # "location":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v14    # "startWithContentId":Z
    :cond_7
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v16

    if-nez v16, :cond_8

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v16

    if-nez v16, :cond_8

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 363
    :cond_8
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 364
    :cond_9
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isAttachment()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 365
    const-string v16, "text/x-vCard"

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 366
    const-string v16, "text/x-vCard"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 368
    :cond_a
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 370
    :cond_b
    const-string v16, "SlideshowModel"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsupport media: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 378
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "media":Lcom/android/mms/model/MediaModel;
    .end local v9    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v11    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v13    # "src":Ljava/lang/String;
    :cond_c
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 379
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 380
    new-instance v12, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 381
    .local v12, "smilPart":Lcom/google/android/mms/pdu/PduPart;
    const-string v16, "smil"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 382
    const-string v16, "smil.xml"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 383
    const-string v16, "application/smil"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 384
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 385
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0, v12}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 387
    return-object v10
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 310
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method private setSlideNodeNum(I)V
    .locals 0
    .param p1, "slideNodeNum"    # I

    .prologue
    .line 513
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mSlideNodeNum:I

    .line 514
    return-void
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 4
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 546
    if-eqz p2, :cond_1

    .line 547
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 548
    .local v1, "increaseSize":I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 550
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 551
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 552
    invoke-virtual {p2, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 553
    iget-object v3, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 554
    .local v2, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 556
    .end local v2    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 558
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "increaseSize":I
    :cond_1
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 5
    .param p1, "object"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v3, 0x1

    .line 442
    if-eqz p1, :cond_1

    .line 443
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 444
    .local v1, "increaseSize":I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 446
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 448
    invoke-virtual {p1, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 449
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 450
    .local v2, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v2}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 452
    .end local v2    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 456
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "increaseSize":I
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 562
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkMessageSize(I)V
    .locals 3
    .param p1, "increaseSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 692
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 693
    .local v0, "cr":Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    .line 694
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 464
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 465
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 466
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 467
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 468
    .local v2, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 471
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 472
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 473
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 475
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1
    .param p1, "decreaseSize"    # I

    .prologue
    .line 429
    if-lez p1, :cond_0

    .line 430
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 432
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getTag()J
    .locals 2

    .prologue
    .line 738
    iget-wide v0, p0, Lcom/android/mms/model/SlideshowModel;->mTag:J

    return-wide v0
.end method

.method public hasBigContent()Z
    .locals 3

    .prologue
    .line 521
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 522
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    :cond_1
    const/4 v2, 0x1

    .line 526
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasMoreThanOneSlide()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 517
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlideNodeNum:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increaseMessageSize(I)V
    .locals 1
    .param p1, "increaseSize"    # I

    .prologue
    .line 423
    if-lez p1, :cond_0

    .line 424
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 426
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBrief()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/android/mms/model/SlideshowModel;->mIsBrief:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 705
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return v1

    .line 708
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 710
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 714
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 717
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 391
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .param p1, "model"    # Lcom/android/mms/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    const/4 v0, 0x0

    .line 661
    if-eqz p2, :cond_0

    .line 662
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 663
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 665
    :cond_0
    return-void
.end method

.method public prepareForSend()V
    .locals 3

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 726
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 727
    .local v0, "text":Lcom/android/mms/model/TextModel;
    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 731
    .end local v0    # "text":Lcom/android/mms/model/TextModel;
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 634
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 636
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 637
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 639
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 587
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 589
    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 590
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 592
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 494
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 495
    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 496
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 497
    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 498
    invoke-virtual {p0, v1}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 501
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 6
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 596
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 597
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 598
    const/4 v3, 0x0

    .line 599
    .local v3, "removeSize":I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 600
    .local v0, "addSize":I
    if-eqz v4, :cond_0

    .line 601
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    .line 603
    :cond_0
    if-le v0, v3, :cond_3

    .line 604
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 605
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 611
    .end local v0    # "addSize":I
    .end local v3    # "removeSize":I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 612
    .restart local v4    # "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_2

    .line 613
    invoke-virtual {v4}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 616
    :cond_2
    if-eqz p2, :cond_4

    .line 617
    invoke-virtual {p2, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 618
    iget-object v5, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 619
    .local v2, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 607
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    .restart local v0    # "addSize":I
    .restart local v3    # "removeSize":I
    :cond_3
    sub-int v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0

    .line 623
    .end local v0    # "addSize":I
    .end local v3    # "removeSize":I
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 624
    return-object v4
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 415
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 416
    return-void
.end method

.method public setTag(J)V
    .locals 0
    .param p1, "tag"    # J

    .prologue
    .line 734
    iput-wide p1, p0, Lcom/android/mms/model/SlideshowModel;->mTag:J

    .line 735
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 9
    .param p1, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 670
    iget-object v8, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    .line 671
    .local v5, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    .line 674
    .local v3, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    .line 675
    .local v6, "src":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 678
    const-string v8, "cid:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "cid:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "location":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v2}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 680
    .local v4, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v4, :cond_1

    .line 681
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    .line 682
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 683
    invoke-virtual {v3, v7}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    move-object v2, v6

    .line 678
    goto :goto_1

    .line 689
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "media":Lcom/android/mms/model/MediaModel;
    .end local v5    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v6    # "src":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-nez v0, :cond_0

    .line 303
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 304
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method public toSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    if-nez v0, :cond_0

    .line 396
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 653
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 655
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 656
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 658
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 644
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 646
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 647
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 649
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
