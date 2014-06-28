.class public Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;
.super Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
.source "ConversationListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopulateConversationListItemTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCityIdText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/sonyericsson/conversations/model/Conversation;

.field private mConversationName:Ljava/lang/String;

.field private mDeliveryFailedCount:I

.field private mDownloadFailedCount:I

.field private mHasAttachment:I

.field private mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

.field private mMode:I

.field private mNeedRunAsync:Z

.field private mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonPhoto:Landroid/graphics/Bitmap;

.field private mReadBodyTextColor:I

.field private mReadHeaderTextColor:I

.field private mRecipientIds:Ljava/lang/String;

.field private mSendFailedCount:I

.field private mSnippet:Ljava/lang/String;

.field private mSnippetCharset:I

.field private mSnippetType:I

.field private mSpanStr:Landroid/text/SpannableString;

.field private mThreadId:J

.field private mThreadType:I

.field private mTotalCount:I

.field private mUnreadCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIIIIIILcom/sonyericsson/conversations/ui/ConversationListItemView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "recipientIds"    # Ljava/lang/String;
    .param p6, "snippetType"    # I
    .param p7, "snippetCharset"    # I
    .param p8, "snippet"    # Ljava/lang/String;
    .param p9, "threadType"    # I
    .param p10, "hasAttachment"    # I
    .param p11, "mode"    # I
    .param p12, "unreadCount"    # I
    .param p13, "totalCount"    # I
    .param p14, "downloadFailedCount"    # I
    .param p15, "sendFailedCount"    # I
    .param p16, "deliveryFailedCount"    # I
    .param p17, "listItemView"    # Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    .line 277
    iput-wide p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mThreadId:J

    .line 278
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mAddress:Ljava/lang/String;

    .line 279
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mRecipientIds:Ljava/lang/String;

    .line 280
    iput p6, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippetType:I

    .line 281
    iput p7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippetCharset:I

    .line 282
    iput-object p8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippet:Ljava/lang/String;

    .line 283
    iput p9, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mThreadType:I

    .line 284
    iput p11, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mMode:I

    .line 285
    iput p12, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mUnreadCount:I

    .line 286
    move/from16 v0, p13

    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mTotalCount:I

    .line 287
    move/from16 v0, p14

    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mDownloadFailedCount:I

    .line 288
    move/from16 v0, p15

    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSendFailedCount:I

    .line 289
    move/from16 v0, p16

    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mDeliveryFailedCount:I

    .line 290
    iput p10, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mHasAttachment:I

    .line 291
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    .line 292
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mReadHeaderTextColor:I

    .line 294
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mReadBodyTextColor:I

    .line 297
    iget-wide v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mThreadId:J

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/model/ConversationCache;->get(J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 298
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mNeedRunAsync:Z

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mNeedRunAsync:Z

    goto :goto_0
.end method

.method private appendMeBeforeSnippetOnSentType(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p1, "snippetBuilder"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 393
    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 394
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 397
    const-string v1, " "

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 399
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initListItemStatus(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listItemCharactors":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/high16 v4, -0x1000000

    const/4 v6, 0x0

    .line 589
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    if-nez v3, :cond_0

    .line 639
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getNameView()Landroid/widget/TextView;

    move-result-object v2

    .line 594
    .local v2, "nameView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMsgView()Landroid/widget/TextView;

    move-result-object v1

    .line 595
    .local v1, "msgView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getDateView()Landroid/widget/TextView;

    move-result-object v0

    .line 597
    .local v0, "dateView":Landroid/widget/TextView;
    const-string v3, "shouldMarkUnread"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 599
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 601
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 602
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 604
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 605
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 621
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    const-string v3, "shouldShowCheckbox"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setCheckableMode(Z)V

    .line 622
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    const-string v3, "shouldShowSelectedBackground"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setSingleSelectedMode(Z)V

    .line 624
    const-string v3, "shouldShowFailIndicator"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 625
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getFailedIndicator()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    :goto_2
    const-string v3, "shouldShowTotalCount"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 631
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isTotalCountEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 632
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMessageCountView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 609
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 610
    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mReadHeaderTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 613
    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mReadBodyTextColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 615
    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mReadHeaderTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 627
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getFailedIndicator()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 634
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMessageCountView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 637
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMessageCountView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundHighPriority([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 222
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->doInBackgroundHighPriority([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackgroundHighPriority([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    const/4 v7, 0x0

    .line 389
    :goto_0
    return-object v7

    .line 314
    :cond_0
    const/4 v1, 0x0

    .line 316
    .local v1, "nrParticipants":I
    iget-wide v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mThreadId:J

    invoke-static {v7, v8}, Lcom/sonyericsson/conversations/model/ConversationCache;->get(J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 317
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    if-nez v7, :cond_2

    .line 319
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mRecipientIds:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mRecipientIds:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 320
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mThreadId:J

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mRecipientIds:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;JLjava/lang/String;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 326
    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    if-eqz v7, :cond_2

    .line 327
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-static {v7}, Lcom/sonyericsson/conversations/model/ConversationCache;->put(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 332
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 333
    const/4 v7, 0x0

    goto :goto_0

    .line 322
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v3, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v7, Lcom/sonyericsson/conversations/model/Participant;

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mAddress:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-wide v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mThreadId:J

    invoke-static {v7, v8, v3}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    goto :goto_1

    .line 336
    .end local v3    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_4
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mParticipants:Ljava/util/List;

    .line 337
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mParticipants:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 339
    if-nez v1, :cond_5

    iget v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippetType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 340
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mParticipants:Ljava/util/List;

    new-instance v8, Lcom/sonyericsson/conversations/model/Participant;

    const-string v9, ""

    invoke-direct {v8, v9}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_5
    iget v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mThreadType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 358
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 359
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 346
    :cond_7
    if-nez v1, :cond_8

    .line 347
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07007f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversationName:Ljava/lang/String;

    goto :goto_2

    .line 349
    :cond_8
    const/4 v7, 0x1

    if-ne v1, v7, :cond_9

    .line 350
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mParticipants:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    .line 351
    .local v2, "p":Lcom/sonyericsson/conversations/model/Participant;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->format(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversationName:Ljava/lang/String;

    goto :goto_2

    .line 352
    .end local v2    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_9
    const/4 v7, 0x1

    if-le v1, v7, :cond_6

    .line 353
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mParticipants:Ljava/util/List;

    invoke-static {v7, v8}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversationName:Ljava/lang/String;

    goto :goto_2

    .line 361
    :cond_a
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 363
    .local v5, "snippetBuilder":Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->appendMeBeforeSnippetOnSentType(Landroid/text/SpannableStringBuilder;)V

    .line 365
    iget v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippetType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b

    if-lez v1, :cond_b

    .line 367
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07007e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 370
    const-string v7, " "

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 372
    .end local v6    # "text":Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippet:Ljava/lang/String;

    iget v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippetCharset:I

    invoke-static {v7, v8}, Lcom/sonyericsson/conversations/util/TextUtil;->decodeRawString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "msgSnippet":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippetType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_c

    iget v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippetType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_c

    iget v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippetType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_d

    .line 379
    :cond_c
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    const v8, 0x7f07002f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_d
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 382
    .local v4, "prefixLength":I
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 383
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSpanStr:Landroid/text/SpannableString;

    .line 384
    iget v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSnippetType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_e

    .line 386
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSpanStr:Landroid/text/SpannableString;

    new-instance v8, Landroid/text/style/StyleSpan;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v7, v8, v4, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 389
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackgroundLowPriority([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 222
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->doInBackgroundLowPriority([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackgroundLowPriority([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-object v7

    .line 426
    :cond_1
    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mCityIdText:Ljava/lang/String;

    .line 427
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 428
    .local v1, "nrParticipants":I
    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mThreadType:I

    if-eq v3, v4, :cond_0

    .line 430
    if-ne v1, v4, :cond_0

    .line 431
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mParticipants:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    .line 432
    .local v2, "p":Lcom/sonyericsson/conversations/model/Participant;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/model/Participant;->getPersonPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mPersonPhoto:Landroid/graphics/Bitmap;

    .line 433
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isCityIdEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 440
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getCityId()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "cacheCityId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/sonyericsson/conversations/cityid/CityIdHelper;->getCityIdInfo(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mCityIdText:Ljava/lang/String;

    .line 444
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mCityIdText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/model/Conversation;->setCityId(Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_2
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mCityIdText:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setConversationContentAsyncLoadTask(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;)V

    .line 583
    return-void
.end method

.method protected bridge synthetic onPostExecuteHighPriority(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 222
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->onPostExecuteHighPriority(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecuteHighPriority(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 408
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mThreadType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 415
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMsgView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSpanStr:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMsgView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecuteLowPriority(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 222
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->onPostExecuteLowPriority(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecuteLowPriority(Ljava/lang/Void;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mParticipants:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 462
    .local v6, "nrParticipants":I
    iget v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mThreadType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 463
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getNameView()Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getPicBox()Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;->setTitleAndImageForAlerts(Landroid/content/Context;Landroid/widget/TextView;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 481
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 487
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isCityIdEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 488
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getCityIdView()Landroid/widget/TextView;

    move-result-object v2

    .line 489
    .local v2, "cityId":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mCityIdText:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 490
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mCityIdText:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 498
    .end local v2    # "cityId":Landroid/widget/TextView;
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 502
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isTotalCountEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 503
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMessageCountView()Landroid/widget/TextView;

    move-result-object v5

    .line 504
    .local v5, "messageCountView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    iget v9, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mUnreadCount:I

    iget v10, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mTotalCount:I

    invoke-virtual {v8, v9, v10, v5}, Lcom/sonyericsson/conversations/model/Conversation;->setMessageCount(IILandroid/widget/TextView;)V

    .line 508
    .end local v5    # "messageCountView":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 511
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getAttachmentView()Landroid/widget/ImageView;

    move-result-object v0

    .line 512
    .local v0, "attachmentView":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v8

    const-string v9, "semc_pref_key_enable_attachment_indicator"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 519
    iget v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mHasAttachment:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 520
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    :goto_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 532
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 533
    .local v4, "listItemCharactors":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v8, "shouldMarkUnread"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v8, "shouldShowFailIndicator"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v8, "shouldShowCheckbox"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v8, "shouldShowFailIndicator"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v8, "shouldShowSelectedBackground"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v8, "shouldShowTotalCount"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mMode:I

    packed-switch v8, :pswitch_data_0

    .line 562
    :cond_5
    :goto_4
    const-string v9, "shouldMarkUnread"

    iget v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mUnreadCount:I

    iget v10, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mDownloadFailedCount:I

    if-le v8, v10, :cond_d

    const/4 v8, 0x1

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mSendFailedCount:I

    if-gtz v8, :cond_6

    iget v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mDeliveryFailedCount:I

    if-gtz v8, :cond_6

    iget v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mDownloadFailedCount:I

    if-lez v8, :cond_e

    .line 565
    :cond_6
    const-string v8, "shouldShowFailIndicator"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :goto_6
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->initListItemStatus(Ljava/util/HashMap;)V

    .line 574
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 577
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setConversationContentAsyncLoadTask(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;)V

    goto/16 :goto_0

    .line 466
    .end local v0    # "attachmentView":Landroid/widget/ImageView;
    .end local v4    # "listItemCharactors":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_7
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getPicBox()Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v3

    .line 468
    .local v3, "contactBadge":Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    if-nez v6, :cond_8

    .line 469
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 470
    :cond_8
    const/4 v8, 0x1

    if-ne v6, v8, :cond_9

    .line 471
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mParticipants:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/model/Participant;

    .line 472
    .local v7, "p":Lcom/sonyericsson/conversations/model/Participant;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mPersonPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v7, v8}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 473
    .end local v7    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_9
    const/4 v8, 0x1

    if-le v6, v8, :cond_2

    .line 474
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020020

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 476
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v1}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 493
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "contactBadge":Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .restart local v2    # "cityId":Landroid/widget/TextView;
    :cond_a
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 522
    .end local v2    # "cityId":Landroid/widget/TextView;
    .restart local v0    # "attachmentView":Landroid/widget/ImageView;
    :cond_b
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 525
    :cond_c
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 542
    .restart local v4    # "listItemCharactors":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :pswitch_0
    const-string v8, "shouldShowCheckbox"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 546
    :pswitch_1
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getMsgView()Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 550
    :pswitch_2
    const-string v8, "shouldShowSelectedBackground"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :pswitch_3
    const-string v8, "shouldShowCheckbox"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget v8, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mTotalCount:I

    if-eqz v8, :cond_5

    .line 555
    const-string v8, "shouldShowTotalCount"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 562
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 567
    :cond_e
    const-string v8, "shouldShowFailIndicator"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 643
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mNeedRunAsync:Z

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getNameView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->mListItemView:Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getPicBox()Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V

    .line 646
    new-array v1, v3, [Ljava/lang/Void;

    invoke-super {p0, v1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->execute([Ljava/lang/Object;)Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    .line 653
    :goto_0
    return-void

    .line 648
    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->doInBackgroundHighPriority([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    .line 649
    .local v0, "result":Ljava/lang/Void;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->onPostExecuteHighPriority(Ljava/lang/Void;)V

    .line 650
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->doInBackgroundLowPriority([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    .line 651
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->onPostExecuteLowPriority(Ljava/lang/Void;)V

    goto :goto_0
.end method
