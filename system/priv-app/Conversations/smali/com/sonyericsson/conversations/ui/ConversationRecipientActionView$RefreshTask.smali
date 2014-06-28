.class Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;
.super Landroid/os/AsyncTask;
.source "ConversationRecipientActionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonyericsson/conversations/model/Participant;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCityId:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mIsAnimate:Z

.field private mParticipant:Lcom/sonyericsson/conversations/model/Participant;

.field private mParticipantList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Z)V
    .locals 1
    .param p2, "isAnimate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mDisplayName:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mAddress:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mCityId:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipantList:Ljava/util/ArrayList;

    .line 88
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mIsAnimate:Z

    .line 97
    iput-boolean p2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mIsAnimate:Z

    .line 98
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "params":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 110
    aget-object v2, p1, v3

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipantList:Ljava/util/ArrayList;

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 112
    .local v1, "nbrOfParticipants":I
    if-ne v1, v0, :cond_2

    .line 113
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 114
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$100(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-static {v2, v4}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->format(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mDisplayName:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mAddress:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 117
    .local v0, "isSystemProvided":Z
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isCityIdEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$100(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/conversations/cityid/CityIdHelper;->getCityIdInfo(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mCityId:Ljava/lang/String;

    .line 123
    .end local v0    # "isSystemProvided":Z
    :cond_0
    :goto_1
    const/4 v2, 0x0

    return-object v2

    :cond_1
    move v0, v3

    .line 116
    goto :goto_0

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$100(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipantList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mDisplayName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 127
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 128
    .local v1, "nbrOfParticipants":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientPanelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 133
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$200(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$200(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$200(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$200(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$300(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$300(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mCityIdView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$400(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 150
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isCityIdEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mCityId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 151
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mCityIdView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$400(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mCityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mCityIdView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$400(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mCityIdView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$400(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 174
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mIsAnimate:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 175
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$100(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 178
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_5
    return-void

    .line 144
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$300(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$300(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mCityIdView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$400(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 159
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$300(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 160
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$300(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_9
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isCityIdEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mCityIdView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$400(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 164
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mCityIdView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$400(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$200(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 168
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$200(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$200(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$200(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->mIsAnimate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_0
    return-void
.end method
