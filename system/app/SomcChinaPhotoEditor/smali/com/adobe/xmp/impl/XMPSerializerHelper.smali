.class public Lcom/adobe/xmp/impl/XMPSerializerHelper;
.super Ljava/lang/Object;
.source "XMPSerializerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # Lcom/adobe/xmp/options/SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p2, :cond_1

    .line 45
    :goto_0
    invoke-virtual {p2}, Lcom/adobe/xmp/options/SerializeOptions;->getSort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->sort()V

    .line 49
    :cond_0
    new-instance v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serialize(Lcom/adobe/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V

    .line 50
    return-void

    .line 42
    :cond_1
    new-instance p2, Lcom/adobe/xmp/options/SerializeOptions;

    .end local p2    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    invoke-direct {p2}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    goto :goto_0
.end method

.method public static serializeToBuffer(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/SerializeOptions;)[B
    .locals 2
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "options"    # Lcom/adobe/xmp/options/SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 99
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lcom/adobe/xmp/impl/XMPSerializerHelper;->serialize(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static serializeToString(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/SerializeOptions;)Ljava/lang/String;
    .locals 3
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "options"    # Lcom/adobe/xmp/options/SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setEncodeUTF16BE(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 71
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 72
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v1, p1}, Lcom/adobe/xmp/impl/XMPSerializerHelper;->serialize(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V

    .line 76
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    :goto_1
    return-object v2

    .line 68
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    new-instance p1, Lcom/adobe/xmp/options/SerializeOptions;

    .end local p1    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    invoke-direct {p1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    goto :goto_0

    .line 78
    .restart local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
