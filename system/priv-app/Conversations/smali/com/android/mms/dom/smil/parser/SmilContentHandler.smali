.class public Lcom/android/mms/dom/smil/parser/SmilContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SmilContentHandler.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SmilContentHandler"


# instance fields
.field private mCurrentNode:Lorg/w3c/dom/Node;

.field private mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 109
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    .line 102
    return-void
.end method

.method public getSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    .line 54
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    .line 55
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 70
    iget-object v3, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v3, p2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 71
    .local v1, "element":Lorg/w3c/dom/Element;
    if-eqz p4, :cond_1

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 73
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    :try_start_0
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "dom":Lorg/w3c/dom/DOMException;
    const-string v3, "SmilContentHandler"

    const-string v4, "Error when setting attribute in element."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 91
    .end local v0    # "dom":Lorg/w3c/dom/DOMException;
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 93
    iput-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    .line 94
    return-void
.end method
