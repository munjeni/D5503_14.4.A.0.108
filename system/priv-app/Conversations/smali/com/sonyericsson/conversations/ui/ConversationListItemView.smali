.class public Lcom/sonyericsson/conversations/ui/ConversationListItemView;
.super Landroid/widget/LinearLayout;
.source "ConversationListItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_CHARACTER_CHECKBOX:Ljava/lang/String; = "shouldShowCheckbox"

.field private static final LIST_ITEM_CHARACTER_COUNT:Ljava/lang/String; = "shouldShowTotalCount"

.field private static final LIST_ITEM_CHARACTER_FAIL_INDICATOR:Ljava/lang/String; = "shouldShowFailIndicator"

.field private static final LIST_ITEM_CHARACTER_SELECTED:Ljava/lang/String; = "shouldShowSelectedBackground"

.field private static final LIST_ITEM_CHARACTER_UNREAD_MARK:Ljava/lang/String; = "shouldMarkUnread"

.field private static final TAG:Ljava/lang/String; = "ConversationListItemView"


# instance fields
.field private volatile mAsyncLoadTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mAttachment:Landroid/widget/ImageView;

.field private mCheckBox:Landroid/widget/CheckedTextView;

.field private mCityIdView:Landroid/widget/TextView;

.field private mConversationContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

.field private mDateView:Landroid/widget/TextView;

.field private mFailedIndicator:Landroid/widget/ImageView;

.field private mIsCheckable:Z

.field private mIsInMarked:Z

.field private mIsSingleSelectedMode:Z

.field private mMessageCountView:Landroid/widget/TextView;

.field private mMsgView:Landroid/widget/TextView;

.field private mNameView:Landroid/widget/TextView;

.field private mThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsCheckable:Z

    .line 76
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsInMarked:Z

    .line 78
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsSingleSelectedMode:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsCheckable:Z

    .line 76
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsInMarked:Z

    .line 78
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsSingleSelectedMode:Z

    .line 91
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getListItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 156
    .local v0, "selectedBgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 157
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsSingleSelectedMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v3, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateCheckBoxStatus()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mCheckBox:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 152
    return-void
.end method


# virtual methods
.method public getAttachmentView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mAttachment:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCityIdView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mCityIdView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getConversationContentAsyncLoadTask()Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mAsyncLoadTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    return-object v0
.end method

.method public getDateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFailedIndicator()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mFailedIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMessageCountView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mMessageCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMsgView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mMsgView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPicBox()Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mConversationContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mThreadId:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsCheckable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 96
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mNameView:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mNameView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 98
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mDateView:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mConversationContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 100
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mMsgView:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mAttachment:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mCityIdView:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mMessageCountView:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mCheckBox:Landroid/widget/CheckedTextView;

    .line 105
    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mFailedIndicator:Landroid/widget/ImageView;

    .line 106
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsInMarked:Z

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public populateListItem(Landroid/content/Context;Landroid/database/Cursor;ILcom/sonyericsson/conversations/ui/util/DateFormatter;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "mode"    # I
    .param p4, "dateFormatter"    # Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .prologue
    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getConversationContentAsyncLoadTask()Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    move-result-object v25

    .line 665
    .local v25, "task":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<***>;"
    if-eqz v25, :cond_0

    .line 666
    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->cancel(Z)Z

    .line 668
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setConversationContentAsyncLoadTask(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;)V

    .line 670
    const-wide/16 v5, 0x0

    .line 671
    .local v5, "threadId":J
    const/4 v15, 0x0

    .line 672
    .local v15, "unreadCount":I
    const/16 v16, 0x0

    .line 673
    .local v16, "totalCount":I
    const/16 v18, 0x0

    .line 674
    .local v18, "sendFailedCount":I
    const/16 v19, 0x0

    .line 675
    .local v19, "deliveryFailedCount":I
    const/16 v17, 0x0

    .line 676
    .local v17, "downloadFailedCount":I
    const/4 v9, 0x0

    .line 677
    .local v9, "snippetType":I
    const/4 v11, 0x0

    .line 678
    .local v11, "snippet":Ljava/lang/String;
    const/4 v10, 0x0

    .line 679
    .local v10, "snippetCharset":I
    const/4 v7, 0x0

    .line 680
    .local v7, "address":Ljava/lang/String;
    const/4 v8, 0x0

    .line 681
    .local v8, "recipientIds":Ljava/lang/String;
    const/4 v13, 0x0

    .line 682
    .local v13, "hasAttachment":I
    const-wide/16 v21, 0x0

    .line 683
    .local v21, "date":J
    const/16 v23, 0x0

    .line 686
    .local v23, "dateString":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 687
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 688
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isTotalCountEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 689
    const-string v4, "total_count"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 691
    :cond_1
    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 693
    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 695
    const/16 v4, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 697
    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 698
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 699
    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 701
    const/16 v4, 0x9

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 702
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 704
    const-string v4, "has_attachment"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 705
    const-string v4, "has_attachment"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 708
    :cond_2
    const/16 v4, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 709
    move-object/from16 v0, p4

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->formatConversationListDate(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 718
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setThreadId(J)V

    .line 721
    const/4 v12, 0x0

    .line 722
    .local v12, "threadType":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyAlertsEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 723
    const-string v4, "thread_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 724
    .local v26, "threadTypeColumnIndex":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-le v0, v4, :cond_3

    .line 725
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 729
    .end local v26    # "threadTypeColumnIndex":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getDateView()Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->getDateView()Landroid/widget/TextView;

    move-result-object v4

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 732
    new-instance v3, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;

    move-object/from16 v4, p1

    move/from16 v14, p3

    move-object/from16 v20, p0

    invoke-direct/range {v3 .. v20}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIIIIIILcom/sonyericsson/conversations/ui/ConversationListItemView;)V

    .line 736
    .local v3, "asyncTask":Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setConversationContentAsyncLoadTask(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;)V

    .line 737
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;->start()V

    .line 738
    .end local v3    # "asyncTask":Lcom/sonyericsson/conversations/ui/ConversationListItemView$PopulateConversationListItemTask;
    .end local v12    # "threadType":I
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v24

    .line 712
    .local v24, "ex":Ljava/lang/Exception;
    const-string v4, "ConversationListItemView"

    const-string v14, "got exception from cursor"

    move-object/from16 v0, v24

    invoke-static {v4, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCheckableMode(Z)V
    .locals 2
    .param p1, "isCheckableMode"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsInMarked:Z

    .line 139
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mCheckBox:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    return-void

    .line 139
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsCheckable:Z

    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->updateCheckBoxStatus()V

    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->updateBackground()V

    .line 175
    return-void
.end method

.method public final setConversationContentAsyncLoadTask(Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "asyncTask":Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;, "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask<***>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mAsyncLoadTask:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    .line 210
    return-void
.end method

.method public setSingleSelectedMode(Z)V
    .locals 0
    .param p1, "isSingleSelectedMode"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsSingleSelectedMode:Z

    .line 144
    return-void
.end method

.method public setThreadId(J)V
    .locals 0
    .param p1, "threadId"    # J

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mThreadId:J

    .line 202
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->mIsCheckable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->setChecked(Z)V

    .line 185
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
