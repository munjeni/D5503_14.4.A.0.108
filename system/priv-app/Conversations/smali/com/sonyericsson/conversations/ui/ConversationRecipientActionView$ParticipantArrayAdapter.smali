.class Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ConversationRecipientActionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
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
    .line 186
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .line 187
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 188
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 193
    if-nez p2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$100(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 198
    .local v0, "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 199
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 200
    new-instance v0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    .end local v0    # "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$100(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2, v1}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/model/Participant;)V

    .line 202
    .restart local v0    # "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddToContactMode:Z
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$500(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setAddToContactMode(Z)V

    .line 220
    :goto_1
    return-object p2

    .line 204
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    check-cast v0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    .line 211
    .restart local v0    # "holder":Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
    iput-object v1, v0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 212
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setContent()V

    goto :goto_0

    .line 218
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setAddToContactMode(Z)V

    goto :goto_1
.end method
