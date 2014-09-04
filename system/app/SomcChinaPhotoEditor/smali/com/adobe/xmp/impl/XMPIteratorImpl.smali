.class public Lcom/adobe/xmp/impl/XMPIteratorImpl;
.super Ljava/lang/Object;
.source "XMPIteratorImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;,
        Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;
    }
.end annotation


# instance fields
.field private baseNS:Ljava/lang/String;

.field private nodeIterator:Ljava/util/Iterator;

.field private options:Lcom/adobe/xmp/options/IteratorOptions;

.field protected skipSiblings:Z

.field protected skipSubtree:Z


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)V
    .locals 11
    .param p1, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p2, "schemaNS"    # Ljava/lang/String;
    .param p3, "propPath"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/adobe/xmp/options/IteratorOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v10, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 42
    iput-boolean v8, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 44
    iput-boolean v8, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree:Z

    .line 46
    iput-object v10, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    .line 62
    if-eqz p4, :cond_0

    .end local p4    # "options":Lcom/adobe/xmp/options/IteratorOptions;
    :goto_0
    iput-object p4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    .line 65
    const/4 v6, 0x0

    .line 66
    .local v6, "startNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v4, 0x0

    .line 67
    .local v4, "initialPath":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    move v2, v7

    .line 68
    .local v2, "baseSchema":Z
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    move v1, v7

    .line 70
    .local v1, "baseProperty":Z
    :goto_2
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 73
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    .line 104
    :goto_3
    if-eqz v6, :cond_8

    .line 106
    iget-object v8, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    invoke-virtual {v8}, Lcom/adobe/xmp/options/IteratorOptions;->isJustChildren()Z

    move-result v8

    if-nez v8, :cond_7

    .line 108
    new-instance v8, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    invoke-direct {v8, p0, v6, v4, v7}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V

    iput-object v8, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    .line 120
    :goto_4
    return-void

    .line 62
    .end local v1    # "baseProperty":Z
    .end local v2    # "baseSchema":Z
    .end local v4    # "initialPath":Ljava/lang/String;
    .end local v6    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local p4    # "options":Lcom/adobe/xmp/options/IteratorOptions;
    :cond_0
    new-instance p4, Lcom/adobe/xmp/options/IteratorOptions;

    .end local p4    # "options":Lcom/adobe/xmp/options/IteratorOptions;
    invoke-direct {p4}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    goto :goto_0

    .restart local v4    # "initialPath":Ljava/lang/String;
    .restart local v6    # "startNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_1
    move v2, v8

    .line 67
    goto :goto_1

    .restart local v2    # "baseSchema":Z
    :cond_2
    move v1, v8

    .line 68
    goto :goto_2

    .line 75
    .restart local v1    # "baseProperty":Z
    :cond_3
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 78
    invoke-static {p2, p3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v5

    .line 81
    .local v5, "path":Lcom/adobe/xmp/impl/xpath/XMPPath;
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>()V

    .line 82
    .local v0, "basePath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-lt v3, v9, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    invoke-static {v9, v5, v8, v10}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    .line 88
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {v5, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 91
    .end local v0    # "basePath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    .end local v3    # "i":I
    .end local v5    # "path":Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_5
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    .line 94
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    invoke-static {v9, p2, v8}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    goto :goto_3

    .line 99
    :cond_6
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Schema namespace URI is required"

    const/16 v9, 0x65

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 112
    :cond_7
    new-instance v7, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;

    invoke-direct {v7, p0, v6, v4}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    goto :goto_4

    .line 118
    :cond_8
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    iput-object v7, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    goto :goto_4
.end method


# virtual methods
.method protected getBaseNS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    return-object v0
.end method

.method protected getOptions()Lcom/adobe/xmp/options/IteratorOptions;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The XMPIterator does not support remove()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBaseNS(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseNS"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public skipSiblings()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 139
    return-void
.end method

.method public skipSubtree()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree:Z

    .line 129
    return-void
.end method
