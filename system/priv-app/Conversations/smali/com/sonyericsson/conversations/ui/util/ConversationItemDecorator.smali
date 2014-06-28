.class public Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;
.super Ljava/lang/Object;
.source "ConversationItemDecorator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContactImage(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "contactBadge"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Lcom/sonyericsson/conversations/ui/ConversationContactBadge;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v4, 0x1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 54
    .local v1, "nrParticipants":I
    if-nez v1, :cond_1

    .line 55
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    if-ne v1, v4, :cond_2

    .line 57
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    .line 58
    .local v2, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v2, p0}, Lcom/sonyericsson/conversations/model/Participant;->getPersonPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 60
    .local v3, "personPhoto":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 61
    .end local v2    # "p":Lcom/sonyericsson/conversations/model/Participant;
    .end local v3    # "personPhoto":Landroid/graphics/Bitmap;
    :cond_2
    if-le v1, v4, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020020

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static setTitleAndImage(Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "contactBadge"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Landroid/widget/TextView;",
            "Lcom/sonyericsson/conversations/ui/ConversationContactBadge;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v5, 0x1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 27
    .local v2, "nrParticipants":I
    const-string v1, ""

    .line 29
    .local v1, "conversationName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 30
    const/16 v5, 0x8

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07007f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void

    .line 33
    :cond_1
    if-ne v2, v5, :cond_2

    .line 34
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    .line 35
    .local v3, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v3, p0}, Lcom/sonyericsson/conversations/model/Participant;->getPersonPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 37
    .local v4, "personPhoto":Landroid/graphics/Bitmap;
    invoke-virtual {p3, v3, v4}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V

    .line 38
    invoke-static {p0, v3}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->format(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v1

    .line 39
    goto :goto_0

    .end local v3    # "p":Lcom/sonyericsson/conversations/model/Participant;
    .end local v4    # "personPhoto":Landroid/graphics/Bitmap;
    :cond_2
    if-le v2, v5, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020020

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    invoke-virtual {p3, v5, v0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V

    .line 44
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setTitleAndImageForAlerts(Landroid/content/Context;Landroid/widget/TextView;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "contactBadge"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07016b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "conversationName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V

    .line 80
    return-void
.end method
