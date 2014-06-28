.class public Lcom/android/mms/dom/AttrImpl;
.super Lcom/android/mms/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/android/mms/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/mms/dom/DocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/mms/dom/NodeImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;)V

    .line 37
    iput-object p2, p0, Lcom/android/mms/dom/AttrImpl;->mName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x2

    return v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isId()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "nodeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/mms/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/mms/dom/AttrImpl;->mValue:Ljava/lang/String;

    .line 66
    return-void
.end method
