.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# static fields
.field private static final CHECKING_FILE_EXTENSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaModelFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vcf"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/model/MediaModelFactory;->CHECKING_FILE_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 3
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_0

    .line 104
    const-string v1, "cid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 122
    return-object v0

    .line 107
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 114
    invoke-static {p0, p1}, Lcom/android/mms/model/MediaModelFactory;->findPartByContentLocationStringComparison(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No part found for the model."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findPartByContentLocationStringComparison(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 6
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v4, 0x0

    .line 138
    .local v4, "pp":Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 139
    .local v0, "cLoc":[B
    const/4 v1, 0x0

    .line 141
    .local v1, "contentLocation":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 143
    .local v2, "nbrParts":I
    const/4 v3, 0x0

    .local v3, "partIdx":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 144
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 145
    if-eqz v4, :cond_1

    .line 147
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    .line 148
    if-eqz v0, :cond_1

    .line 149
    new-instance v1, Ljava/lang/String;

    .end local v1    # "contentLocation":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 150
    .restart local v1    # "contentLocation":Ljava/lang/String;
    const-string v5, ".dm"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ".fl"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    invoke-static {p1}, Lcom/android/mms/model/MediaModelFactory;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {v1}, Lcom/android/mms/model/MediaModelFactory;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    .line 163
    :goto_1
    return-object v5

    .line 143
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static getContentTypeEx(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 8
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 333
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 334
    .local v6, "typeMap":Landroid/webkit/MimeTypeMap;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 335
    .local v4, "location":Ljava/lang/String;
    invoke-static {v4}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "fileExtension":Ljava/lang/String;
    sget-object v0, Lcom/android/mms/model/MediaModelFactory;->CHECKING_FILE_EXTENSIONS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 337
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 340
    invoke-virtual {v6, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 344
    .end local v5    # "s":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 336
    .restart local v5    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v5    # "s":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p4, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p5, "regionModel"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p4, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p5, "regionModel"    # Lcom/android/mms/model/RegionModel;
    .param p6, "isBrief"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    .line 217
    .local v9, "bytes":[B
    if-nez v9, :cond_0

    .line 218
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Content-Type of the part may not be null."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V

    .line 223
    .local v3, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 224
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    new-instance v1, Lcom/sonyericsson/conversations/model/AttachmentModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 297
    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    :goto_0
    const/4 v8, 0x0

    .line 298
    .local v8, "begin":I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v13

    .line 299
    .local v13, "tl":Lorg/w3c/dom/smil/TimeList;
    if-eqz v13, :cond_1

    invoke-interface {v13}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1

    .line 301
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 302
    .local v11, "t":Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    double-to-int v8, v4

    .line 304
    .end local v11    # "t":Lorg/w3c/dom/smil/Time;
    :cond_1
    invoke-virtual {v1, v8}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 307
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result v2

    const/high16 v4, 0x447a0000

    mul-float/2addr v2, v4

    float-to-int v10, v2

    .line 308
    .local v10, "duration":I
    if-gtz v10, :cond_2

    .line 309
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v13

    .line 310
    if-eqz v13, :cond_2

    invoke-interface {v13}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v2

    if-lez v2, :cond_2

    .line 312
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 313
    .restart local v11    # "t":Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    double-to-int v2, v4

    sub-int v10, v2, v8

    .line 318
    .end local v11    # "t":Lorg/w3c/dom/smil/Time;
    :cond_2
    invoke-virtual {v1, v10}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 321
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 322
    return-object v1

    .line 232
    .end local v8    # "begin":I
    .end local v10    # "duration":I
    .end local v13    # "tl":Lorg/w3c/dom/smil/TimeList;
    :cond_3
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    const-string v2, "text/x-vCard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    new-instance v1, Lcom/sonyericsson/conversations/model/AttachmentModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 236
    :cond_4
    new-instance v1, Lcom/android/mms/model/TextModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 239
    :cond_5
    const-string v2, "img"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 240
    if-eqz p6, :cond_6

    .line 241
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;[B)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 244
    :cond_6
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 247
    :cond_7
    const-string v2, "video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 248
    new-instance v1, Lcom/android/mms/model/VideoModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 250
    :cond_8
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 251
    new-instance v1, Lcom/android/mms/model/AudioModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 253
    :cond_9
    const-string v2, "ref"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 254
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 255
    const-string v2, "text/x-vCard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 256
    new-instance v1, Lcom/sonyericsson/conversations/model/AttachmentModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 258
    :cond_a
    new-instance v1, Lcom/android/mms/model/TextModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 261
    :cond_b
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 262
    if-eqz p6, :cond_c

    .line 263
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;[B)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 266
    :cond_c
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 269
    :cond_d
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 270
    new-instance v1, Lcom/android/mms/model/VideoModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 272
    :cond_e
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 273
    new-instance v1, Lcom/android/mms/model/AudioModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 278
    :cond_f
    const-string v2, "application/oct-stream"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 279
    invoke-static/range {p4 .. p4}, Lcom/android/mms/model/MediaModelFactory;->getContentTypeEx(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v12

    .line 280
    .local v12, "tempContentType":Ljava/lang/String;
    if-eqz v12, :cond_10

    .line 281
    move-object v3, v12

    .line 282
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 287
    .end local v12    # "tempContentType":Ljava/lang/String;
    :cond_10
    new-instance v1, Lcom/sonyericsson/conversations/model/AttachmentModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 292
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported TAG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p2, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p3, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "tag":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "src":Ljava/lang/String;
    invoke-static {p3, v2}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 64
    .local v5, "part":Lcom/google/android/mms/pdu/PduPart;
    instance-of v0, p1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v0, :cond_0

    move-object v3, p1

    .line 65
    check-cast v3, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    move-object v9, p1

    move-object v10, v5

    invoke-static/range {v6 .. v11}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/MediaModel;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p2, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p3, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p4, "isBrief"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "tag":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "src":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 80
    .local v6, "part":Lcom/google/android/mms/pdu/PduPart;
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/lang/String;-><init>([B)V

    .line 81
    .local v14, "contentType":Ljava/lang/String;
    if-eqz p4, :cond_0

    invoke-static {v14}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v16

    .line 83
    .local v16, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    .line 84
    .local v15, "partUri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadPartForBriefImage(Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 87
    .end local v15    # "partUri":Landroid/net/Uri;
    .end local v16    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :cond_0
    if-nez v6, :cond_1

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Part may not be null."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v1, :cond_2

    move-object/from16 v4, p1

    .line 92
    check-cast v4, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    :cond_2
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object/from16 v10, p1

    move-object v11, v6

    move/from16 v13, p4

    invoke-static/range {v7 .. v13}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "srme"    # Lorg/w3c/dom/smil/SMILRegionMediaElement;
    .param p4, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p5, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "srme"    # Lorg/w3c/dom/smil/SMILRegionMediaElement;
    .param p4, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p5, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p6, "isBrief"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v8

    .line 184
    .local v8, "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v8, :cond_0

    .line 185
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 186
    .local v5, "region":Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 187
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 190
    .end local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_0
    const/4 v7, 0x0

    .line 192
    .local v7, "rId":Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const-string v7, "Text"

    .line 198
    :goto_1
    invoke-virtual {p4, v7}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 199
    .restart local v5    # "region":Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 200
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_0

    .line 195
    .end local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_1
    const-string v7, "Image"

    goto :goto_1

    .line 204
    .end local v7    # "rId":Ljava/lang/String;
    .restart local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sOriginal"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "extensionIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
