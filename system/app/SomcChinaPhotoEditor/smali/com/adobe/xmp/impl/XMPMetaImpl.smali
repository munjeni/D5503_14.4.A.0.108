.class public Lcom/adobe/xmp/impl/XMPMetaImpl;
.super Ljava/lang/Object;
.source "XMPMetaImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;
.implements Lcom/adobe/xmp/XMPMeta;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final VALUE_BASE64:I = 0x7

.field private static final VALUE_BOOLEAN:I = 0x1

.field private static final VALUE_CALENDAR:I = 0x6

.field private static final VALUE_DATE:I = 0x5

.field private static final VALUE_DOUBLE:I = 0x4

.field private static final VALUE_INTEGER:I = 0x2

.field private static final VALUE_LONG:I = 0x3

.field private static final VALUE_STRING:I


# instance fields
.field private packetHeader:Ljava/lang/String;

.field private tree:Lcom/adobe/xmp/impl/XMPNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/xmp/impl/XMPMetaImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-direct {v0, v1, v1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 1
    .param p1, "tree"    # Lcom/adobe/xmp/impl/XMPNode;

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 81
    return-void
.end method

.method private doSetArrayItem(Lcom/adobe/xmp/impl/XMPNode;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Z)V
    .locals 5
    .param p1, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "itemIndex"    # I
    .param p3, "itemValue"    # Ljava/lang/String;
    .param p4, "itemOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .param p5, "insert"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1305
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string v2, "[]"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1306
    .local v0, "itemNode":Lcom/adobe/xmp/impl/XMPNode;
    invoke-static {p4, p3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p4

    .line 1310
    if-eqz p5, :cond_2

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 1311
    .local v1, "maxIndex":I
    :goto_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1313
    move p2, v1

    .line 1316
    :cond_0
    const/4 v2, 0x1

    if-gt v2, p2, :cond_3

    if-gt p2, v1, :cond_3

    .line 1318
    if-nez p5, :cond_1

    .line 1320
    invoke-virtual {p1, p2}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(I)V

    .line 1322
    :cond_1
    invoke-virtual {p1, p2, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 1323
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p3, p4, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    .line 1329
    return-void

    .line 1310
    .end local v1    # "maxIndex":I
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    goto :goto_0

    .line 1327
    .restart local v1    # "maxIndex":I
    :cond_3
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Array index out of bounds"

    const/16 v4, 0x68

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method private evaluateNodeValue(ILcom/adobe/xmp/impl/XMPNode;)Ljava/lang/Object;
    .locals 5
    .param p1, "valueType"    # I
    .param p2, "propNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1388
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "rawValue":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1419
    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 1422
    :goto_0
    return-object v2

    .line 1392
    :pswitch_0
    new-instance v2, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    .line 1393
    .local v2, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 1395
    .end local v2    # "value":Ljava/lang/Boolean;
    :pswitch_1
    new-instance v2, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToInteger(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 1396
    .local v2, "value":Ljava/lang/Integer;
    goto :goto_0

    .line 1398
    .end local v2    # "value":Ljava/lang/Integer;
    :pswitch_2
    new-instance v2, Ljava/lang/Long;

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 1399
    .local v2, "value":Ljava/lang/Long;
    goto :goto_0

    .line 1401
    .end local v2    # "value":Ljava/lang/Long;
    :pswitch_3
    new-instance v2, Ljava/lang/Double;

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 1402
    .local v2, "value":Ljava/lang/Double;
    goto :goto_0

    .line 1404
    .end local v2    # "value":Ljava/lang/Double;
    :pswitch_4
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v2

    .line 1405
    .local v2, "value":Lcom/adobe/xmp/XMPDateTime;
    goto :goto_0

    .line 1407
    .end local v2    # "value":Lcom/adobe/xmp/XMPDateTime;
    :pswitch_5
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    .line 1408
    .local v0, "dt":Lcom/adobe/xmp/XMPDateTime;
    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 1409
    .local v2, "value":Ljava/util/Calendar;
    goto :goto_0

    .line 1411
    .end local v0    # "dt":Lcom/adobe/xmp/XMPDateTime;
    .end local v2    # "value":Ljava/util/Calendar;
    :pswitch_6
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 1412
    .local v2, "value":[B
    goto :goto_0

    .line 1419
    .end local v2    # "value":[B
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 1389
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 8
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "arrayOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .param p4, "itemValue"    # Ljava/lang/String;
    .param p5, "itemOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x67

    const/16 v3, 0x66

    const/4 v5, 0x1

    .line 91
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 92
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 94
    if-nez p3, :cond_0

    .line 96
    new-instance p3, Lcom/adobe/xmp/options/PropertyOptions;

    .end local p3    # "arrayOptions":Lcom/adobe/xmp/options/PropertyOptions;
    invoke-direct {p3}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 98
    .restart local p3    # "arrayOptions":Lcom/adobe/xmp/options/PropertyOptions;
    :cond_0
    invoke-virtual {p3}, Lcom/adobe/xmp/options/PropertyOptions;->isOnlyArrayOptions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v2, "Only array form flags allowed for arrayOptions"

    invoke-direct {v0, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 105
    :cond_1
    invoke-static {p3, v7}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p3

    .line 111
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v6

    .line 115
    .local v6, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v2, 0x0

    invoke-static {v0, v6, v2, v7}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 117
    .local v1, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_4

    .line 123
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v2, "The named property is not an array"

    invoke-direct {v0, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 133
    :cond_2
    invoke-virtual {p3}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v0, v6, v5, p3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 136
    if-nez v1, :cond_4

    .line 138
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v2, "Failure creating array node"

    invoke-direct {v0, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 144
    :cond_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v2, "Explicit arrayOptions required to create new array"

    invoke-direct {v0, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 149
    :cond_4
    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->doSetArrayItem(Lcom/adobe/xmp/impl/XMPNode;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    .line 150
    return-void
.end method

.method public appendArrayItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 160
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1238
    .local v0, "clonedTree":Lcom/adobe/xmp/impl/XMPNode;
    new-instance v1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>(Lcom/adobe/xmp/impl/XMPNode;)V

    return-object v1
.end method

.method public countArrayItems(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 170
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 172
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 173
    .local v1, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 175
    .local v0, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v0, :cond_0

    .line 182
    :goto_0
    return v2

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    goto :goto_0

    .line 186
    :cond_1
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "The named property is not an array"

    const/16 v4, 0x66

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public deleteArrayItem(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "itemIndex"    # I

    .prologue
    .line 198
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 199
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 201
    invoke-static {p2, p3}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "itemPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "itemPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;

    .prologue
    .line 218
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 219
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 221
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 223
    .local v0, "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 224
    .local v1, "propNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_0

    .line 226
    invoke-static {v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    .end local v1    # "propNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "qualNS"    # Ljava/lang/String;
    .param p4, "qualName"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 245
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/adobe/xmp/XMPPathFactory;->composeQualifierPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "qualPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0    # "qualPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deleteStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "structName"    # Ljava/lang/String;
    .param p3, "fieldNS"    # Ljava/lang/String;
    .param p4, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 266
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 267
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-static {p3, p4}, Lcom/adobe/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "fieldPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v0    # "fieldPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public doesArrayItemExist(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "itemIndex"    # I

    .prologue
    .line 308
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 309
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 311
    invoke-static {p2, p3}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 316
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return v2

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 287
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 288
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 290
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 291
    .local v1, "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v1, v5, v6}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 292
    .local v2, "propNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 296
    .end local v1    # "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    .end local v2    # "propNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_0
    :goto_0
    return v3

    .line 294
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    goto :goto_0
.end method

.method public doesQualifierExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "qualNS"    # Ljava/lang/String;
    .param p4, "qualName"    # Ljava/lang/String;

    .prologue
    .line 352
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 353
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 355
    invoke-static {p3, p4}, Lcom/adobe/xmp/XMPPathFactory;->composeQualifierPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 360
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return v2

    .line 358
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public doesStructFieldExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "structName"    # Ljava/lang/String;
    .param p3, "fieldNS"    # Ljava/lang/String;
    .param p4, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 330
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 331
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    .line 333
    invoke-static {p3, p4}, Lcom/adobe/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 338
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return v2

    .line 336
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dumpObject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1248
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->dumpNode(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 2
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "itemIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 372
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 374
    invoke-static {p2, p3}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "itemPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    return-object v1
.end method

.method public getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 8
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "altTextName"    # Ljava/lang/String;
    .param p3, "genericLang"    # Ljava/lang/String;
    .param p4, "specificLang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 386
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 387
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 388
    invoke-static {p4}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSpecificLang(Ljava/lang/String;)V

    .line 390
    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 391
    :goto_0
    invoke-static {p4}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 393
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 394
    .local v1, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v5, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v5, v1, v7, v6}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 395
    .local v0, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v0, :cond_2

    .line 434
    :cond_0
    :goto_1
    return-object v6

    .end local v0    # "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v1    # "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_1
    move-object p3, v6

    .line 390
    goto :goto_0

    .line 400
    .restart local v0    # "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v1    # "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_2
    invoke-static {v0, p3, p4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->chooseLocalizedText(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    .line 401
    .local v4, "result":[Ljava/lang/Object;
    aget-object v5, v4, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 402
    .local v3, "match":I
    const/4 v5, 0x1

    aget-object v2, v4, v5

    check-cast v2, Lcom/adobe/xmp/impl/XMPNode;

    .line 404
    .local v2, "itemNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v3, :cond_0

    .line 406
    new-instance v6, Lcom/adobe/xmp/impl/XMPMetaImpl$1;

    invoke-direct {v6, p0, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl$1;-><init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPacketHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;I)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty(Ljava/lang/String;Ljava/lang/String;I)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 6
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 665
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 666
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 668
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 669
    .local v0, "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 671
    .local v1, "propNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_1

    .line 673
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Property must be simple when a value type is requested"

    .line 676
    const/16 v5, 0x66

    .line 675
    invoke-direct {v3, v4, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 679
    :cond_0
    invoke-direct {p0, p3, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->evaluateNodeValue(ILcom/adobe/xmp/impl/XMPNode;)Ljava/lang/Object;

    move-result-object v2

    .line 681
    .local v2, "value":Ljava/lang/Object;
    new-instance v3, Lcom/adobe/xmp/impl/XMPMetaImpl$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl$2;-><init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/lang/Object;Lcom/adobe/xmp/impl/XMPNode;)V

    .line 709
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method public getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 937
    const/4 v0, 0x7

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 760
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPropertyCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 907
    const/4 v0, 0x6

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public getPropertyDate(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 877
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/XMPDateTime;

    return-object v0
.end method

.method public getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 848
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 790
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPropertyLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 819
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method protected getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 732
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 733
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 735
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 736
    .local v0, "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 738
    .local v1, "propNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_1

    .line 740
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Property must be simple when a value type is requested"

    .line 743
    const/16 v4, 0x66

    .line 742
    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 746
    :cond_0
    invoke-direct {p0, p3, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->evaluateNodeValue(ILcom/adobe/xmp/impl/XMPNode;)Ljava/lang/Object;

    move-result-object v2

    .line 750
    :cond_1
    return-object v2
.end method

.method public getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 3
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "qualNS"    # Ljava/lang/String;
    .param p4, "qualName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 978
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 979
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/adobe/xmp/XMPPathFactory;->composeQualifierPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "qualPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    return-object v1
.end method

.method public getRoot()Lcom/adobe/xmp/impl/XMPNode;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    return-object v0
.end method

.method public getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 3
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "structName"    # Ljava/lang/String;
    .param p3, "fieldNS"    # Ljava/lang/String;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 994
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/adobe/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "fieldPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    return-object v1
.end method

.method public insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "itemIndex"    # I
    .param p4, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1097
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1098
    return-void
.end method

.method public insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 7
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "itemIndex"    # I
    .param p4, "itemValue"    # Ljava/lang/String;
    .param p5, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 1074
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 1077
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v6

    .line 1078
    .local v6, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v6, v2, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 1080
    .local v1, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_0

    .line 1082
    const/4 v5, 0x1

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->doSetArrayItem(Lcom/adobe/xmp/impl/XMPNode;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    .line 1088
    return-void

    .line 1086
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v2, "Specified array does not exist"

    const/16 v3, 0x66

    invoke-direct {v0, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public iterator()Lcom/adobe/xmp/XMPIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1007
    invoke-virtual {p0, v0, v0, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;
    .locals 1
    .param p1, "options"    # Lcom/adobe/xmp/options/IteratorOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1016
    invoke-virtual {p0, v0, v0, p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/adobe/xmp/options/IteratorOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1026
    new-instance v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/xmp/impl/XMPIteratorImpl;-><init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)V

    return-object v0
.end method

.method public normalize(Lcom/adobe/xmp/options/ParseOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/adobe/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1266
    if-nez p1, :cond_0

    .line 1268
    new-instance p1, Lcom/adobe/xmp/options/ParseOptions;

    .end local p1    # "options":Lcom/adobe/xmp/options/ParseOptions;
    invoke-direct {p1}, Lcom/adobe/xmp/options/ParseOptions;-><init>()V

    .line 1270
    .restart local p1    # "options":Lcom/adobe/xmp/options/ParseOptions;
    :cond_0
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/XMPNormalizer;->process(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;

    .line 1271
    return-void
.end method

.method public setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "itemIndex"    # I
    .param p4, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1061
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1062
    return-void
.end method

.method public setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 7
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "itemIndex"    # I
    .param p4, "itemValue"    # Ljava/lang/String;
    .param p5, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1037
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 1038
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 1041
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v6

    .line 1042
    .local v6, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v2, 0x0

    invoke-static {v0, v6, v5, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 1044
    .local v1, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_0

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 1046
    invoke-direct/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->doSetArrayItem(Lcom/adobe/xmp/impl/XMPNode;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    .line 1052
    return-void

    .line 1050
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v2, "Specified array does not exist"

    const/16 v3, 0x66

    invoke-direct {v0, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "altTextName"    # Ljava/lang/String;
    .param p3, "genericLang"    # Ljava/lang/String;
    .param p4, "specificLang"    # Ljava/lang/String;
    .param p5, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 630
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 631
    return-void
.end method

.method public setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 16
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "altTextName"    # Ljava/lang/String;
    .param p3, "genericLang"    # Ljava/lang/String;
    .param p4, "specificLang"    # Ljava/lang/String;
    .param p5, "itemValue"    # Ljava/lang/String;
    .param p6, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static/range {p1 .. p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 447
    invoke-static/range {p2 .. p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 448
    invoke-static/range {p4 .. p4}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSpecificLang(Ljava/lang/String;)V

    .line 450
    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 451
    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 453
    invoke-static/range {p1 .. p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v3

    .line 456
    .local v3, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v13, 0x1

    new-instance v14, Lcom/adobe/xmp/options/PropertyOptions;

    .line 457
    const/16 v15, 0x1e00

    invoke-direct {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    .line 456
    invoke-static {v12, v3, v13, v14}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 460
    .local v2, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v2, :cond_1

    .line 462
    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string v13, "Failed to find or create array node"

    const/16 v14, 0x66

    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 450
    .end local v2    # "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v3    # "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_0
    const/16 p3, 0x0

    goto :goto_0

    .line 464
    .restart local v2    # "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v3    # "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_1
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v12

    if-nez v12, :cond_2

    .line 466
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 468
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 478
    :cond_2
    const/4 v5, 0x0

    .line 479
    .local v5, "haveXDefault":Z
    const/4 v11, 0x0

    .line 481
    .local v11, "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 498
    :goto_1
    if-eqz v11, :cond_4

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    .line 500
    invoke-virtual {v2, v11}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 501
    const/4 v12, 0x1

    invoke-virtual {v2, v12, v11}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 507
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->chooseLocalizedText(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    .line 508
    .local v9, "result":[Ljava/lang/Object;
    const/4 v12, 0x0

    aget-object v12, v9, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 509
    .local v8, "match":I
    const/4 v12, 0x1

    aget-object v7, v9, v12

    check-cast v7, Lcom/adobe/xmp/impl/XMPNode;

    .line 511
    .local v7, "itemNode":Lcom/adobe/xmp/impl/XMPNode;
    const-string v12, "x-default"

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 513
    .local v10, "specificXDefault":Z
    packed-switch v8, :pswitch_data_0

    .line 611
    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string v13, "Unexpected result from ChooseLocalizedText"

    .line 612
    const/16 v14, 0x9

    .line 611
    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 472
    .end local v5    # "haveXDefault":Z
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "itemNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v8    # "match":I
    .end local v9    # "result":[Ljava/lang/Object;
    .end local v10    # "specificXDefault":Z
    .end local v11    # "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_5
    new-instance v12, Lcom/adobe/xmp/XMPException;

    .line 473
    const-string v13, "Specified property is no alt-text array"

    const/16 v14, 0x66

    .line 472
    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 483
    .restart local v5    # "haveXDefault":Z
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v11    # "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 484
    .local v4, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 485
    const-string v12, "xml:lang"

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 487
    :cond_7
    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string v13, "Language qualifier must be first"

    const/16 v14, 0x66

    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 489
    :cond_8
    const-string v12, "x-default"

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 491
    move-object v11, v4

    .line 492
    const/4 v5, 0x1

    .line 493
    goto :goto_1

    .line 519
    .end local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v7    # "itemNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v8    # "match":I
    .restart local v9    # "result":[Ljava/lang/Object;
    .restart local v10    # "specificXDefault":Z
    :pswitch_0
    const-string v12, "x-default"

    move-object/from16 v0, p5

    invoke-static {v2, v12, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v5, 0x1

    .line 521
    if-nez v10, :cond_9

    .line 523
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_9
    :goto_2
    if-nez v5, :cond_a

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 619
    const-string v12, "x-default"

    move-object/from16 v0, p5

    invoke-static {v2, v12, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_a
    return-void

    .line 529
    :pswitch_1
    if-nez v10, :cond_c

    .line 533
    if-eqz v5, :cond_b

    if-eq v11, v7, :cond_b

    if-eqz v11, :cond_b

    .line 534
    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 536
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 539
    :cond_b
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 544
    :cond_c
    sget-boolean v12, Lcom/adobe/xmp/impl/XMPMetaImpl;->$assertionsDisabled:Z

    if-nez v12, :cond_e

    if-eqz v5, :cond_d

    if-eq v11, v7, :cond_e

    :cond_d
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 545
    :cond_e
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_10

    .line 557
    if-eqz v11, :cond_9

    .line 559
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 547
    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 548
    .restart local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    if-eq v4, v11, :cond_f

    .line 549
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 550
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 549
    :goto_4
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 554
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 550
    :cond_11
    const/4 v12, 0x0

    goto :goto_4

    .line 568
    .end local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    :pswitch_2
    if-eqz v5, :cond_12

    if-eq v11, v7, :cond_12

    if-eqz v11, :cond_12

    .line 569
    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 571
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 573
    :cond_12
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 581
    :pswitch_3
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz v10, :cond_9

    .line 584
    const/4 v5, 0x1

    .line 586
    goto/16 :goto_2

    .line 592
    :pswitch_4
    if-eqz v11, :cond_13

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    .line 594
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 596
    :cond_13
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 602
    :pswitch_5
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    if-eqz v10, :cond_9

    .line 605
    const/4 v5, 0x1

    .line 607
    goto/16 :goto_2

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V
    .locals 3
    .param p1, "node"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "newOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .param p4, "deleteExisting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1348
    if-eqz p4, :cond_0

    .line 1350
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->clear()V

    .line 1354
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1356
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1359
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->setNodeValue(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;)V

    .line 1371
    :goto_0
    return-void

    .line 1363
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1365
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Composite nodes can\'t have values"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1368
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->removeChildren()V

    goto :goto_0
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0, p1}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method public setPacketHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "packetHeader"    # Ljava/lang/String;

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 1227
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1133
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 5
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/Object;
    .param p4, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 1109
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 1111
    invoke-static {p4, p3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p4

    .line 1113
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 1115
    .local v0, "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, p4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 1116
    .local v1, "propNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_0

    .line 1118
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p3, p4, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    .line 1124
    return-void

    .line 1122
    :cond_0
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Specified property does not exist"

    const/16 v4, 0x66

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 967
    return-void
.end method

.method public setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[BLcom/adobe/xmp/options/PropertyOptions;)V
    .locals 0
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # [B
    .param p4, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 956
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 957
    return-void
.end method

.method public setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 781
    if-eqz p3, :cond_0

    const-string v0, "True"

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 782
    return-void

    .line 781
    :cond_0
    const-string v0, "False"

    goto :goto_0
.end method

.method public setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/xmp/options/PropertyOptions;)V
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Z
    .param p4, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 771
    if-eqz p3, :cond_0

    const-string v0, "True"

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 772
    return-void

    .line 771
    :cond_0
    const-string v0, "False"

    goto :goto_0
.end method

.method public setPropertyCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 929
    return-void
.end method

.method public setPropertyCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 0
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/util/Calendar;
    .param p4, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 918
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 919
    return-void
.end method

.method public setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)V
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Lcom/adobe/xmp/XMPDateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 899
    return-void
.end method

.method public setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 0
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Lcom/adobe/xmp/XMPDateTime;
    .param p4, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 889
    return-void
.end method

.method public setPropertyDouble(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 868
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p3, p4}, Ljava/lang/Double;-><init>(D)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 869
    return-void
.end method

.method public setPropertyDouble(Ljava/lang/String;Ljava/lang/String;DLcom/adobe/xmp/options/PropertyOptions;)V
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # D
    .param p5, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 858
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p3, p4}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 859
    return-void
.end method

.method public setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 810
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 811
    return-void
.end method

.method public setPropertyInteger(Ljava/lang/String;Ljava/lang/String;ILcom/adobe/xmp/options/PropertyOptions;)V
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # I
    .param p4, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 800
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 801
    return-void
.end method

.method public setPropertyLong(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 839
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 840
    return-void
.end method

.method public setPropertyLong(Ljava/lang/String;Ljava/lang/String;JLcom/adobe/xmp/options/PropertyOptions;)V
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # J
    .param p5, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 830
    return-void
.end method

.method public setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "qualNS"    # Ljava/lang/String;
    .param p4, "qualName"    # Ljava/lang/String;
    .param p5, "qualValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1163
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1165
    return-void
.end method

.method public setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 4
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "qualNS"    # Ljava/lang/String;
    .param p4, "qualName"    # Ljava/lang/String;
    .param p5, "qualValue"    # Ljava/lang/String;
    .param p6, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1144
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 1145
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0, p1, p2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1149
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Specified property does not exist!"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1152
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/adobe/xmp/XMPPathFactory;->composeQualifierPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "qualPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0, p5, p6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1154
    return-void
.end method

.method public setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "structName"    # Ljava/lang/String;
    .param p3, "fieldNS"    # Ljava/lang/String;
    .param p4, "fieldName"    # Ljava/lang/String;
    .param p5, "fieldValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1189
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1190
    return-void
.end method

.method public setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 3
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "structName"    # Ljava/lang/String;
    .param p3, "fieldNS"    # Ljava/lang/String;
    .param p4, "fieldName"    # Ljava/lang/String;
    .param p5, "fieldValue"    # Ljava/lang/String;
    .param p6, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1175
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 1176
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/adobe/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "fieldPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v0, p5, p6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1180
    return-void
.end method

.method public sort()V
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->sort()V

    .line 1258
    return-void
.end method
