.class public final Lcom/adobe/xmp/XMPPathFactory;
.super Ljava/lang/Object;
.source "XMPPathFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static assertFieldNS(Ljava/lang/String;)V
    .locals 3
    .param p0, "fieldNS"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 271
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty field namespace URI"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 276
    :cond_1
    return-void
.end method

.method private static assertFieldName(Ljava/lang/String;)V
    .locals 3
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 288
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty f name"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 290
    :cond_1
    return-void
.end method

.method private static assertQualNS(Ljava/lang/String;)V
    .locals 3
    .param p0, "qualNS"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 242
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty qualifier namespace URI"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 247
    :cond_1
    return-void
.end method

.method private static assertQualName(Ljava/lang/String;)V
    .locals 3
    .param p0, "qualName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 257
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty qualifier name"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 261
    :cond_1
    return-void
.end method

.method public static composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "arrayName"    # Ljava/lang/String;
    .param p1, "itemIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 85
    if-lez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[last()]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Array index must be larger than zero"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static composeFieldSelector(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "arrayName"    # Ljava/lang/String;
    .param p1, "fieldNS"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "fieldValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 225
    .local v0, "fieldPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 227
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "The fieldName name must be simple"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static composeLangSelector(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arrayName"    # Ljava/lang/String;
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[?xml:lang=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static composeQualifierPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "qualNS"    # Ljava/lang/String;
    .param p1, "qualName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p0}, Lcom/adobe/xmp/XMPPathFactory;->assertQualNS(Ljava/lang/String;)V

    .line 147
    invoke-static {p1}, Lcom/adobe/xmp/XMPPathFactory;->assertQualName(Ljava/lang/String;)V

    .line 149
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 150
    .local v0, "qualPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 152
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "The qualifier name must be simple"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fieldNS"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Lcom/adobe/xmp/XMPPathFactory;->assertFieldNS(Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Lcom/adobe/xmp/XMPPathFactory;->assertFieldName(Ljava/lang/String;)V

    .line 120
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 121
    .local v0, "fieldPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 123
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "The field name must be simple"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
