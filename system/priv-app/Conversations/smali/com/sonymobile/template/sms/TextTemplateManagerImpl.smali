.class public Lcom/sonymobile/template/sms/TextTemplateManagerImpl;
.super Ljava/lang/Object;
.source "TextTemplateManagerImpl.java"

# interfaces
.implements Lcom/sonymobile/template/sms/TextTemplateManager;


# static fields
.field private static final MODE_CREATE_DOCUMENT:I = 0x0

.field private static final MODE_EDIT_DOCUMENT:I = 0x1

.field private static final TEXT_TEMPLATE_DOCUMENT_BAK_NAME:Ljava/lang/String; = "message_text_template_bak.xml"

.field private static final TEXT_TEMPLATE_DOCUMENT_NAME:Ljava/lang/String; = "message_text_template.xml"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMode:I

.field private mNewTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private addAllTemplateNodes(Lorg/w3c/dom/Document;Ljava/util/List;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p3, "rootElt"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;",
            "Lorg/w3c/dom/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/template/sms/TextTemplate;

    .line 174
    .local v1, "template":Lcom/sonymobile/template/sms/TextTemplate;
    invoke-direct {p0, p1, v1, p3}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->addTextTemplateNode(Lorg/w3c/dom/Document;Lcom/sonymobile/template/sms/TextTemplate;Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 176
    .end local v1    # "template":Lcom/sonymobile/template/sms/TextTemplate;
    :cond_0
    return-void
.end method

.method private addDefaultTemplateNodes(Lorg/w3c/dom/Document;[Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "defaultTemplates"    # [Ljava/lang/String;
    .param p3, "rootElt"    # Lorg/w3c/dom/Element;

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 164
    new-instance v1, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-direct {v1}, Lcom/sonymobile/template/sms/TextTemplate;-><init>()V

    .line 165
    .local v1, "templates":Lcom/sonymobile/template/sms/TextTemplate;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/template/sms/TextTemplate;->setId(I)V

    .line 166
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/template/sms/TextTemplate;->setSid(I)V

    .line 167
    invoke-direct {p0, p1, v1, p3}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->addTextTemplateNode(Lorg/w3c/dom/Document;Lcom/sonymobile/template/sms/TextTemplate;Lorg/w3c/dom/Element;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "templates":Lcom/sonymobile/template/sms/TextTemplate;
    :cond_0
    return-void
.end method

.method private addTemplateNodes(Lorg/w3c/dom/Document;)V
    .locals 3
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 215
    const-string v2, "text_template"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 216
    .local v1, "rootElt":Lorg/w3c/dom/Element;
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 218
    iget v2, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mMode:I

    if-nez v2, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->loadDefaultTextTemplates()[Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "defaultTemplates":[Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->addDefaultTemplateNodes(Lorg/w3c/dom/Document;[Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 224
    .end local v0    # "defaultTemplates":[Ljava/lang/String;
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mNewTemplates:Ljava/util/List;

    invoke-direct {p0, p1, v2, v1}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->addAllTemplateNodes(Lorg/w3c/dom/Document;Ljava/util/List;Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method private addTextTemplateNode(Lorg/w3c/dom/Document;Lcom/sonymobile/template/sms/TextTemplate;Lorg/w3c/dom/Element;)V
    .locals 7
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "template"    # Lcom/sonymobile/template/sms/TextTemplate;
    .param p3, "rootElt"    # Lorg/w3c/dom/Element;

    .prologue
    .line 179
    const-string v6, "template"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 181
    .local v2, "eltTemplate":Lorg/w3c/dom/Element;
    const-string v6, "id"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 182
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 184
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 186
    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->isUserDefinedTemplate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    const-string v6, "text"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 188
    .local v3, "eltText":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    .line 189
    .local v5, "txtText":Lorg/w3c/dom/Text;
    if-eqz v5, :cond_0

    .line 190
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 192
    :cond_0
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 195
    .end local v3    # "eltText":Lorg/w3c/dom/Element;
    .end local v5    # "txtText":Lorg/w3c/dom/Text;
    :cond_1
    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->getSid()I

    move-result v6

    if-eqz v6, :cond_3

    .line 196
    const-string v6, "sid"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 197
    .local v1, "eltSid":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->getSid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    .line 198
    .local v4, "txtSid":Lorg/w3c/dom/Text;
    if-eqz v4, :cond_2

    .line 199
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 201
    :cond_2
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 204
    .end local v1    # "eltSid":Lorg/w3c/dom/Element;
    .end local v4    # "txtSid":Lorg/w3c/dom/Text;
    :cond_3
    invoke-interface {p3, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 205
    return-void
.end method

.method private createDocument(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v4, 0x0

    .line 228
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 231
    .local v5, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 232
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 233
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 236
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-direct {p0, v1}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->addTemplateNodes(Lorg/w3c/dom/Document;)V

    .line 238
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v9

    .line 239
    .local v9, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    .line 241
    .local v10, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v8, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v8, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 242
    .local v8, "source":Ljavax/xml/transform/dom/DOMSource;
    const-string v11, "encoding"

    const-string v12, "utf-8"

    invoke-virtual {v10, v11, v12}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v11, "indent"

    const-string v12, "no"

    invoke-virtual {v10, v11, v12}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v11, 0x0

    invoke-virtual {p1, p2, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 247
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v5    # "pw":Ljava/io/PrintWriter;
    .local v6, "pw":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v7, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 249
    .local v7, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v10, v8, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    if-eqz v4, :cond_0

    .line 260
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 265
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 266
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    :cond_1
    move-object v5, v6

    .line 269
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v7    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v8    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v9    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v10    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    :cond_2
    :goto_1
    return-void

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    if-eqz v4, :cond_3

    .line 260
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 265
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_3
    :goto_3
    if-eqz v5, :cond_2

    .line 266
    :goto_4
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    .line 253
    :catch_1
    move-exception v2

    .line 254
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    if-eqz v4, :cond_4

    .line 260
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 265
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_6
    if-eqz v5, :cond_2

    goto :goto_4

    .line 255
    :catch_2
    move-exception v2

    .line 256
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    :goto_7
    :try_start_7
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 258
    if-eqz v4, :cond_5

    .line 260
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 265
    .end local v2    # "e":Ljavax/xml/transform/TransformerException;
    :cond_5
    :goto_8
    if-eqz v5, :cond_2

    goto :goto_4

    .line 258
    :catchall_0
    move-exception v11

    :goto_9
    if-eqz v4, :cond_6

    .line 260
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 265
    :cond_6
    :goto_a
    if-eqz v5, :cond_7

    .line 266
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 258
    :cond_7
    throw v11

    .line 261
    :catch_3
    move-exception v2

    .line 262
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 261
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_4
    move-exception v2

    .line 262
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 261
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .line 262
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 261
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    :catch_6
    move-exception v2

    .line 262
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 261
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v7    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v8    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v9    # "tf":Ljavax/xml/transform/TransformerFactory;
    .restart local v10    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_7
    move-exception v2

    .line 262
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "result":Ljavax/xml/transform/stream/StreamResult;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    goto :goto_9

    .line 255
    .end local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    goto :goto_7

    .line 253
    .end local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    :catch_9
    move-exception v2

    move-object v5, v6

    .end local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    goto :goto_5

    .line 251
    .end local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    :catch_a
    move-exception v2

    move-object v5, v6

    .end local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method private fileRename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, "oldFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method private getDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "doc":Lorg/w3c/dom/Document;
    const/4 v6, 0x0

    .line 275
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 276
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 277
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 287
    if-eqz v7, :cond_0

    .line 289
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_0
    move-object v6, v7

    .line 295
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v2

    .line 280
    :catch_0
    move-exception v8

    .line 281
    .local v8, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    if-eqz v6, :cond_1

    .line 289
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 290
    :catch_1
    move-exception v3

    .line 291
    .end local v8    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 282
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 283
    .local v9, "saxe":Lorg/xml/sax/SAXException;
    :goto_4
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    if-eqz v6, :cond_1

    .line 289
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 290
    :catch_3
    move-exception v3

    goto :goto_3

    .line 284
    .end local v9    # "saxe":Lorg/xml/sax/SAXException;
    :catch_4
    move-exception v5

    .line 285
    .local v5, "ioe":Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 287
    if-eqz v6, :cond_1

    .line 289
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 290
    :catch_5
    move-exception v3

    goto :goto_3

    .line 287
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v6, :cond_2

    .line 289
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 287
    :cond_2
    :goto_7
    throw v10

    .line 290
    :catch_6
    move-exception v3

    .line 291
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 290
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v3

    .line 291
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 284
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v5

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 282
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_9
    move-exception v9

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 280
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v8

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private getTemplateDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->isFileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->createDocument(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->getDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private isFileExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 299
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const/4 v1, 0x1

    .line 303
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadDefaultTextTemplates()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadTextTemplateList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v7, "templateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/template/sms/TextTemplate;>;"
    iget-object v10, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mContext:Landroid/content/Context;

    const-string v11, "message_text_template.xml"

    invoke-direct {p0, v10, v11}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->getTemplateDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 127
    .local v2, "document":Lorg/w3c/dom/Document;
    if-eqz v2, :cond_3

    .line 128
    const-string v10, "template"

    invoke-interface {v2, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 131
    .local v9, "templates":Lorg/w3c/dom/NodeList;
    if-eqz v9, :cond_3

    .line 132
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 133
    new-instance v6, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-direct {v6}, Lcom/sonymobile/template/sms/TextTemplate;-><init>()V

    .line 134
    .local v6, "template":Lcom/sonymobile/template/sms/TextTemplate;
    invoke-interface {v9, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 135
    .local v8, "templateNode":Lorg/w3c/dom/Element;
    const-string v10, "id"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sonymobile/template/sms/TextTemplate;->setId(I)V

    .line 137
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 138
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 139
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 140
    .local v5, "node":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    move-object v0, v5

    .line 141
    check-cast v0, Lorg/w3c/dom/Element;

    .line 142
    .local v0, "childNode":Lorg/w3c/dom/Element;
    const-string v10, "sid"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 144
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sonymobile/template/sms/TextTemplate;->setSid(I)V

    .line 138
    .end local v0    # "childNode":Lorg/w3c/dom/Element;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 146
    .restart local v0    # "childNode":Lorg/w3c/dom/Element;
    :cond_1
    const-string v10, "text"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 148
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/sonymobile/template/sms/TextTemplate;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 152
    .end local v0    # "childNode":Lorg/w3c/dom/Element;
    .end local v5    # "node":Lorg/w3c/dom/Node;
    :cond_2
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "template":Lcom/sonymobile/template/sms/TextTemplate;
    .end local v8    # "templateNode":Lorg/w3c/dom/Element;
    .end local v9    # "templates":Lorg/w3c/dom/NodeList;
    :cond_3
    return-object v7
.end method


# virtual methods
.method public loadAllTexTemplate()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v4, 0x0

    iput v4, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mMode:I

    .line 75
    invoke-direct {p0}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->loadTextTemplateList()Ljava/util/ArrayList;

    move-result-object v1

    .line 76
    .local v1, "documentTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/template/sms/TextTemplate;>;"
    const/4 v0, 0x0

    .line 77
    .local v0, "defaultTemplates":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->loadDefaultTextTemplates()[Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 82
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/template/sms/TextTemplate;

    .line 85
    .local v3, "template":Lcom/sonymobile/template/sms/TextTemplate;
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/sonymobile/template/sms/TextTemplate;->getSid()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {v3}, Lcom/sonymobile/template/sms/TextTemplate;->getSid()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/template/sms/TextTemplate;->setText(Ljava/lang/String;)V

    .line 81
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonymobile/template/sms/TextTemplate;->setAsUserDefinedTemplate(Z)V

    goto :goto_1

    .line 95
    .end local v3    # "template":Lcom/sonymobile/template/sms/TextTemplate;
    :cond_2
    return-object v1
.end method

.method public saveAllTextTemplate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mMode:I

    .line 104
    iput-object p1, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mNewTemplates:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "message_text_template_bak.xml"

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->createDocument(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "message_text_template_bak.xml"

    const-string v2, "message_text_template.xml"

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->fileRename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    return-void
.end method
