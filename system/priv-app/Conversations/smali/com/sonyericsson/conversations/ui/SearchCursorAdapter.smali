.class public Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;
.super Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;
.source "SearchCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;,
        Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;
    }
.end annotation


# static fields
.field private static sEllipsis:Ljava/lang/String;


# instance fields
.field private mIsSingleSelectMode:Z

.field private mSearchString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "\u2026"

    sput-object v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->sEllipsis:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "isSingleSelect"    # Z
    .param p4, "searchStringParameter"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mIsSingleSelectMode:Z

    .line 120
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mSearchString:Ljava/lang/String;

    .line 121
    iput-boolean p3, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mIsSingleSelectMode:Z

    .line 122
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->sEllipsis:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, -0x1

    .line 135
    const-string v9, "thread_id"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 136
    .local v7, "threadIdPos":I
    const-string v9, "body"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "bodyPos":I
    if-eq v7, v10, :cond_1

    if-eq v0, v10, :cond_1

    .line 139
    const v9, 0x7f0a0037

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object v8, v9

    check-cast v8, Landroid/widget/TextView;

    .line 140
    .local v8, "title":Landroid/widget/TextView;
    const v9, 0x7f0a0039

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    move-object v4, v9

    check-cast v4, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    .line 141
    .local v4, "snippet":Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;
    const v9, 0x7f0a0088

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 143
    .local v1, "contactBadge":Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 145
    .local v5, "threadId":J
    invoke-static {v5, v6}, Lcom/sonyericsson/conversations/model/ConversationCache;->get(J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v2

    .line 147
    .local v2, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    if-nez v2, :cond_0

    .line 149
    invoke-static {p2, v5, v6}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v2

    .line 150
    if-eqz v2, :cond_0

    .line 151
    invoke-static {v2}, Lcom/sonyericsson/conversations/model/ConversationCache;->put(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 155
    :cond_0
    if-eqz v2, :cond_1

    .line 157
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    .line 158
    .local v3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {p2, v3, v8, v1}, Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;->setTitleAndImage(Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 160
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mSearchString:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v1    # "contactBadge":Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .end local v2    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    .end local v3    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v4    # "snippet":Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;
    .end local v5    # "threadId":J
    .end local v8    # "title":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public getMessageUriAtPosition(I)Landroid/net/Uri;
    .locals 9
    .param p1, "pos"    # I

    .prologue
    const/4 v8, -0x1

    .line 187
    const/4 v1, 0x0

    .line 190
    .local v1, "focusedMessageUri":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 191
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    const-string v7, "transport_type"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 193
    .local v3, "msgTypePos":I
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 194
    .local v6, "rowidPos":I
    if-eq v6, v8, :cond_0

    if-eq v3, v8, :cond_0

    .line 195
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 196
    .local v4, "rowid":J
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "msgType":Ljava/lang/String;
    const-string v7, "sms"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 199
    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 205
    .end local v2    # "msgType":Ljava/lang/String;
    .end local v3    # "msgTypePos":I
    .end local v4    # "rowid":J
    .end local v6    # "rowidPos":I
    :cond_0
    :goto_0
    return-object v1

    .line 200
    .restart local v2    # "msgType":Ljava/lang/String;
    .restart local v3    # "msgTypePos":I
    .restart local v4    # "rowid":J
    .restart local v6    # "rowidPos":I
    :cond_1
    const-string v7, "mms"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 201
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getThreadIdAtPosition(I)J
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, "threadIdPos":I
    const-wide/16 v1, 0x0

    .line 169
    .local v1, "threadId":J
    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 170
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    const-string v4, "thread_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 172
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 173
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 176
    :cond_0
    return-wide v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 127
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030020

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/SearchListItemView;

    .line 128
    .local v1, "v":Lcom/sonyericsson/conversations/ui/SearchListItemView;
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mIsSingleSelectMode:Z

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/SearchListItemView;->setSingleSelectedMode(Z)V

    .line 129
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 130
    return-object v1
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mSearchString:Ljava/lang/String;

    .line 115
    return-void
.end method
