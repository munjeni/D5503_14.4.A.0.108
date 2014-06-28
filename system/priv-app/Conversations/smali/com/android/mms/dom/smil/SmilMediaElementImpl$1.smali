.class Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;
.super Lcom/android/mms/dom/smil/ElementTimeImpl;
.source "SmilMediaElementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .param p2, "x0"    # Lorg/w3c/dom/smil/SMILElement;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-direct {p0, p2}, Lcom/android/mms/dom/smil/ElementTimeImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method

.method private createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 52
    .local v0, "doc":Lorg/w3c/dom/events/DocumentEvent;
    const-string v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 53
    .local v1, "event":Lorg/w3c/dom/events/Event;
    invoke-interface {v1, p1, v3, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 60
    return-object v1
.end method

.method private createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "seekTo"    # I

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 66
    .local v0, "doc":Lorg/w3c/dom/events/DocumentEvent;
    const-string v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 67
    .local v1, "event":Lorg/w3c/dom/events/Event;
    invoke-interface {v1, p1, v3, v3, p2}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZI)V

    .line 74
    return-object v1
.end method


# virtual methods
.method public beginElement()Z
    .locals 2

    .prologue
    .line 78
    const-string v1, "SmilMediaStart"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 79
    .local v0, "startEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 80
    const/4 v1, 0x1

    return v1
.end method

.method public endElement()Z
    .locals 2

    .prologue
    .line 84
    const-string v1, "SmilMediaEnd"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 85
    .local v0, "endEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 86
    const/4 v1, 0x1

    return v1
.end method

.method public getDur()F
    .locals 5

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v0

    .line 107
    .local v0, "dur":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_5

    .line 109
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v3}, Lcom/android/mms/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    :cond_0
    const/high16 v0, -0x40800000

    .line 128
    .end local v2    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 114
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_2
    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_3
    const-string v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v3}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "giftag":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    const/high16 v0, -0x40800000

    goto :goto_0

    .line 122
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    .end local v1    # "giftag":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_5
    const-string v3, "SmilMediaElementImpl"

    const-string v4, "Unknown media type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilParElementImpl;

    iget-object v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    return-object v0
.end method

.method public pauseElement()V
    .locals 2

    .prologue
    .line 95
    const-string v1, "SmilMediaPause"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 96
    .local v0, "pauseEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 97
    return-void
.end method

.method public resumeElement()V
    .locals 2

    .prologue
    .line 90
    const-string v1, "SmilMediaStart"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 91
    .local v0, "resumeEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 92
    return-void
.end method

.method public seekElement(F)V
    .locals 3
    .param p1, "seekTo"    # F

    .prologue
    .line 100
    const-string v1, "SmilMediaSeek"

    float-to-int v2, p1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 101
    .local v0, "seekEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 102
    return-void
.end method
