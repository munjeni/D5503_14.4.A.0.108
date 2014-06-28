.class Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$ParticipantArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TwoPaneUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParticipantArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/conversations/model/Participant;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 524
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 529
    if-nez p2, :cond_0

    .line 530
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 533
    :cond_0
    const/4 v0, 0x0

    .line 534
    .local v0, "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 535
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 536
    new-instance v0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    .end local v0    # "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2, v1}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/model/Participant;)V

    .line 538
    .restart local v0    # "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 551
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setAddToContactMode(Z)V

    .line 553
    return-object p2

    .line 540
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    check-cast v0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    .line 547
    .restart local v0    # "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setParticipant(Lcom/sonyericsson/conversations/model/Participant;)V

    .line 548
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setContent()V

    goto :goto_0
.end method
