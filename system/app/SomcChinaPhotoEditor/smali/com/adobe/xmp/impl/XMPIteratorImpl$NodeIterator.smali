.class Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;
.super Ljava/lang/Object;
.source "XMPIteratorImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/xmp/impl/XMPIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeIterator"
.end annotation


# static fields
.field protected static final ITERATE_CHILDREN:I = 0x1

.field protected static final ITERATE_NODE:I = 0x0

.field protected static final ITERATE_QUALIFIER:I = 0x2


# instance fields
.field private childrenIterator:Ljava/util/Iterator;

.field private index:I

.field private path:Ljava/lang/String;

.field private returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

.field private state:I

.field private subIterator:Ljava/util/Iterator;

.field final synthetic this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

.field private visitedNode:Lcom/adobe/xmp/impl/XMPNode;


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 235
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 234
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    .line 222
    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    .line 224
    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    .line 226
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    .line 228
    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V
    .locals 3
    .param p2, "visitedNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p3, "parentPath"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 247
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 246
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    .line 222
    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    .line 224
    iput v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    .line 226
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    .line 228
    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 248
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    .line 249
    iput v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    .line 250
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->setBaseNS(Ljava/lang/String;)V

    .line 256
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    .line 257
    return-void
.end method

.method private iterateChildren(Ljava/util/Iterator;)Z
    .locals 6
    .param p1, "iterator"    # Ljava/util/Iterator;

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iget-boolean v2, v2, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iput-boolean v1, v2, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 338
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 346
    .local v0, "child":Lcom/adobe/xmp/impl/XMPNode;
    iget v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    .line 347
    new-instance v2, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    .line 350
    .end local v0    # "child":Lcom/adobe/xmp/impl/XMPNode;
    :cond_1
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 353
    const/4 v1, 0x1

    .line 357
    :cond_2
    return v1
.end method


# virtual methods
.method protected accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "currNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "parentPath"    # Ljava/lang/String;
    .param p3, "currentIndex"    # I

    .prologue
    .line 404
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    :cond_0
    const/4 v0, 0x0

    .line 432
    :cond_1
    :goto_0
    return-object v0

    .line 408
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 410
    const-string v1, ""

    .line 411
    .local v1, "separator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "segmentName":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/IteratorOptions;->isJustLeafname()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 415
    .end local v0    # "segmentName":Ljava/lang/String;
    .end local v1    # "separator":Ljava/lang/String;
    :cond_3
    const-string v1, "/"

    .line 416
    .restart local v1    # "separator":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "segmentName":Ljava/lang/String;
    goto :goto_1

    .line 432
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;
    .locals 6
    .param p1, "node"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "baseNS"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    .line 449
    .local v5, "value":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 447
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method protected getChildrenIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method protected getReturnProperty()Lcom/adobe/xmp/properties/XMPPropertyInfo;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    if-eqz v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    iget v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    if-nez v1, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->reportNode()Z

    move-result v0

    goto :goto_0

    .line 278
    :cond_2
    iget v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    if-ne v1, v0, :cond_4

    .line 280
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    if-nez v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->iterateChildren(Ljava/util/Iterator;)Z

    move-result v0

    .line 287
    .local v0, "hasNext":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/IteratorOptions;->isOmitQualifiers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    const/4 v1, 0x2

    iput v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    .line 290
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    .line 291
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v0

    goto :goto_0

    .line 297
    .end local v0    # "hasNext":Z
    :cond_4
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    if-nez v1, :cond_5

    .line 299
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    .line 302
    :cond_5
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->iterateChildren(Ljava/util/Iterator;)Z

    move-result v0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 374
    .local v0, "result":Lcom/adobe/xmp/properties/XMPPropertyInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 375
    return-object v0

    .line 379
    .end local v0    # "result":Lcom/adobe/xmp/properties/XMPPropertyInfo;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "There are no more nodes to return"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected reportNode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 313
    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    .line 314
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/IteratorOptions;->isJustLeafnodes()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 322
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v0

    goto :goto_0
.end method

.method protected setChildrenIterator(Ljava/util/Iterator;)V
    .locals 0
    .param p1, "childrenIterator"    # Ljava/util/Iterator;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    .line 504
    return-void
.end method

.method protected setReturnProperty(Lcom/adobe/xmp/properties/XMPPropertyInfo;)V
    .locals 0
    .param p1, "returnProperty"    # Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 522
    return-void
.end method
