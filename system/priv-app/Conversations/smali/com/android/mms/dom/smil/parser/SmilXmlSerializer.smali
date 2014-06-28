.class public Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;
.super Ljava/lang/Object;
.source "SmilXmlSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "smilDoc"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v3, 0x800

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 46
    .local v1, "writer":Ljava/io/Writer;
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->writeElement(Ljava/io/Writer;Lorg/w3c/dom/Element;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v1    # "writer":Ljava/io/Writer;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static writeElement(Ljava/io/Writer;Lorg/w3c/dom/Element;)V
    .locals 7
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3e

    .line 57
    const/16 v4, 0x3c

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 58
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 62
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 63
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 64
    .local v0, "attribute":Lorg/w3c/dom/Attr;
    if-eqz v0, :cond_0

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 62
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "attribute":Lorg/w3c/dom/Attr;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILElement;

    .line 74
    .local v2, "childElement":Lorg/w3c/dom/smil/SMILElement;
    if-eqz v2, :cond_3

    .line 75
    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(I)V

    .line 78
    :cond_2
    invoke-static {p0, v2}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->writeElement(Ljava/io/Writer;Lorg/w3c/dom/Element;)V

    .line 79
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILElement;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    .end local v2    # "childElement":Lorg/w3c/dom/smil/SMILElement;
    check-cast v2, Lorg/w3c/dom/smil/SMILElement;

    .line 80
    .restart local v2    # "childElement":Lorg/w3c/dom/smil/SMILElement;
    if-nez v2, :cond_2

    .line 82
    const-string v4, "</"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(I)V

    .line 88
    :goto_1
    return-void

    .line 86
    :cond_3
    const-string v4, "/>"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1
.end method
