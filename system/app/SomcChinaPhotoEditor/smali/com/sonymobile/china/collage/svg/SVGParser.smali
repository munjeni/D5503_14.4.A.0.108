.class public final Lcom/sonymobile/china/collage/svg/SVGParser;
.super Ljava/lang/Object;
.source "SVGParser.java"


# static fields
.field private static mSVGParser:Lcom/sonymobile/china/collage/svg/SVGParser;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCrossIconSize:[I

.field private final mDeleteIconSize:[I

.field private mPaneViewHeight:I

.field private mPaneViewWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mCrossIconSize:[I

    .line 41
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mDeleteIconSize:[I

    .line 46
    iput-object p1, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mContext:Landroid/content/Context;

    .line 47
    iput p2, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mPaneViewWidth:I

    .line 48
    iput p3, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mPaneViewHeight:I

    .line 49
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 50
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 52
    iget-object v1, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mCrossIconSize:[I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v2, v1, v4

    .line 53
    iget-object v1, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mCrossIconSize:[I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v2, v1, v3

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b9

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 55
    iget-object v1, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mDeleteIconSize:[I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v2, v1, v4

    .line 56
    iget-object v1, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mDeleteIconSize:[I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v2, v1, v3

    .line 62
    return-void
.end method

.method public static getInstance(Landroid/content/Context;II)Lcom/sonymobile/china/collage/svg/SVGParser;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 65
    sget-object v0, Lcom/sonymobile/china/collage/svg/SVGParser;->mSVGParser:Lcom/sonymobile/china/collage/svg/SVGParser;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/sonymobile/china/collage/svg/SVGParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/china/collage/svg/SVGParser;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/sonymobile/china/collage/svg/SVGParser;->mSVGParser:Lcom/sonymobile/china/collage/svg/SVGParser;

    .line 70
    :goto_0
    sget-object v0, Lcom/sonymobile/china/collage/svg/SVGParser;->mSVGParser:Lcom/sonymobile/china/collage/svg/SVGParser;

    return-object v0

    .line 68
    :cond_0
    sget-object v0, Lcom/sonymobile/china/collage/svg/SVGParser;->mSVGParser:Lcom/sonymobile/china/collage/svg/SVGParser;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/china/collage/svg/SVGParser;->update(II)V

    goto :goto_0
.end method

.method private update(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mPaneViewWidth:I

    .line 75
    iput p2, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mPaneViewHeight:I

    .line 76
    return-void
.end method


# virtual methods
.method public parseSVG(I)Ljava/util/List;
    .locals 10
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/china/collage/ImageElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/china/collage/ImageElement;>;"
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    .line 82
    .local v8, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    .line 83
    .local v7, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v9

    .line 84
    .local v9, "xr":Lorg/xml/sax/XMLReader;
    new-instance v0, Lcom/sonymobile/china/collage/svg/SVGHandler;

    iget v2, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mPaneViewWidth:I

    iget v3, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mPaneViewHeight:I

    iget-object v4, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mCrossIconSize:[I

    iget-object v5, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mDeleteIconSize:[I

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/china/collage/svg/SVGHandler;-><init>(Ljava/util/List;II[I[I)V

    .line 86
    .local v0, "handler":Lcom/sonymobile/china/collage/svg/SVGHandler;
    invoke-interface {v9, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 87
    new-instance v2, Lorg/xml/sax/InputSource;

    iget-object v3, p0, Lcom/sonymobile/china/collage/svg/SVGParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v9, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 97
    .end local v0    # "handler":Lcom/sonymobile/china/collage/svg/SVGHandler;
    .end local v7    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v9    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v6

    .line 89
    .local v6, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v6    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v6

    .line 91
    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v6

    .line 93
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v6

    .line 95
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
