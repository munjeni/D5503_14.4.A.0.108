.class public Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;
.super Ljava/lang/Object;
.source "ParticipantListViewItemsHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParticipantListViewItemsHolder"


# instance fields
.field private mAddToConatctMode:Z

.field protected mAddress:Ljava/lang/String;

.field protected mAddressType:I

.field protected mContactId:J

.field protected mContext:Landroid/content/Context;

.field protected mFirstRowText:Landroid/widget/TextView;

.field protected mParticipant:Lcom/sonyericsson/conversations/model/Participant;

.field private mRecipientBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

.field protected mSecondRowText:Landroid/widget/TextView;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    .line 53
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mView:Landroid/view/View;

    .line 55
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 57
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mFirstRowText:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mSecondRowText:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddress:Ljava/lang/String;

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContactId:J

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddressType:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddToConatctMode:Z

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mView:Landroid/view/View;

    .line 75
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->init()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddToConatctMode:Z

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mView:Landroid/view/View;

    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mRecipientBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mView:Landroid/view/View;

    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    .local v0, "recipientItem":Landroid/view/ViewGroup;
    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mFirstRowText:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mSecondRowText:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setContent()V

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mView:Landroid/view/View;

    new-instance v2, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;-><init>(Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method private setImageForParticipant(Lcom/sonyericsson/conversations/model/Participant;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 2
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p2, "recipientBadge"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/conversations/model/Participant;->getPersonPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "picture":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {p2, v1, v0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected applyTextRows(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "addressType"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mFirstRowText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mSecondRowText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mSecondRowText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mSecondRowText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getParticipant()Lcom/sonyericsson/conversations/model/Participant;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    return-object v0
.end method

.method public setAddToContactMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddToConatctMode:Z

    .line 167
    return-void
.end method

.method public setContent()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->format(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddress:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContactId:J

    .line 136
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddressType:I

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddress:Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddressType:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->applyTextRows(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mRecipientBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->setImageForParticipant(Lcom/sonyericsson/conversations/model/Participant;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 139
    return-void
.end method

.method public setParticipant(Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 0
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 175
    return-void
.end method
