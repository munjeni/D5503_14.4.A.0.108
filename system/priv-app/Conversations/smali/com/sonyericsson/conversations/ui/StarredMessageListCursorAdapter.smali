.class public Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;
.super Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;
.source "StarredMessageListCursorAdapter.java"


# static fields
.field private static final COLUMN_INDEX_BODY:I = 0x3

.field private static final COLUMN_INDEX_DISCRIMINATOR:I = 0x1

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_SUBJECT:I = 0x4

.field private static final COLUMN_INDEX_SUBJECT_CHARSET:I = 0x5

.field private static final COLUMN_INDEX_THREADID:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "mode"    # I
    .param p4, "autoRequery"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mActivity:Landroid/app/Activity;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 72
    const v1, 0x7f0a0037

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 73
    .local v14, "title":Landroid/widget/TextView;
    const v1, 0x7f0a0039

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 75
    .local v12, "snippet":Landroid/widget/TextView;
    const v1, 0x7f0a0036

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 78
    .local v9, "contactBadge":Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 79
    .local v6, "rowid":J
    const/4 v1, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "body":Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/TextUtil;->decodeRawString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, "subject":Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "msgType":Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 87
    .local v3, "threadId":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/model/ConversationCache;->get(J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v10

    .line 91
    .local v10, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    if-nez v10, :cond_0

    .line 92
    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v10

    .line 93
    if-eqz v10, :cond_0

    .line 94
    invoke-static {v10}, Lcom/sonyericsson/conversations/model/ConversationCache;->put(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 98
    :cond_0
    if-eqz v10, :cond_1

    .line 100
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v11

    .line 101
    .local v11, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v11, v14, v9}, Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;->setTitleAndImage(Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 104
    .end local v11    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_1
    if-nez v8, :cond_2

    .end local v13    # "subject":Ljava/lang/String;
    :goto_0
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v1, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;-><init>(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;JLjava/lang/String;J)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void

    .restart local v13    # "subject":Ljava/lang/String;
    :cond_2
    move-object v13, v8

    .line 104
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
