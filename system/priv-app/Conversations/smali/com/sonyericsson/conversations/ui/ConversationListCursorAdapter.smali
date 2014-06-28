.class public Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;
.super Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;
.source "ConversationListCursorAdapter.java"


# static fields
.field public static final COLUMN_INDEX_ADDRESS:I = 0x9

.field public static final COLUMN_INDEX_DATE:I = 0xa

.field public static final COLUMN_INDEX_DELIVERY_FAILED_COUNT:I = 0x7

.field public static final COLUMN_INDEX_DOWNLOAD_FAILED_COUNT:I = 0x8

.field public static final COLUMN_INDEX_RECIPIENT_IDS:I = 0x1

.field public static final COLUMN_INDEX_SEND_FAILED_COUNT:I = 0x6

.field public static final COLUMN_INDEX_SNIPPET:I = 0x2

.field public static final COLUMN_INDEX_SNIPPET_CHARSET:I = 0x3

.field public static final COLUMN_INDEX_SNIPPET_TYPE:I = 0x4

.field public static final COLUMN_INDEX_THREADID:I = 0x0

.field public static final COLUMN_INDEX_UNREAD_COUNT:I = 0x5

.field public static final CURSORADAPTER_MODE_COMPACT:I = 0x3

.field public static final CURSORADAPTER_MODE_MULTIPLE_SELECT:I = 0x2

.field public static final CURSORADAPTER_MODE_NORMAL:I = 0x1

.field public static final CURSORADAPTER_MODE_SINGLE_SELECT:I = 0x4


# instance fields
.field private mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "mode"    # I
    .param p4, "flags"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p4}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 88
    iput p3, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mMode:I

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "mode"    # I
    .param p4, "autoRequery"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p4}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 79
    iput p3, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mMode:I

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .line 81
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 94
    instance-of v1, p1, Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    .line 96
    .local v0, "listItem":Lcom/sonyericsson/conversations/ui/ConversationListItemView;
    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mMode:I

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListItemView;->populateListItem(Landroid/content/Context;Landroid/database/Cursor;ILcom/sonyericsson/conversations/ui/util/DateFormatter;)V

    .line 98
    .end local v0    # "listItem":Lcom/sonyericsson/conversations/ui/ConversationListItemView;
    :cond_0
    return-void
.end method

.method public checkAnyConversationStarred(ILandroid/util/SparseBooleanArray;)Z
    .locals 5
    .param p1, "headerCount"    # I
    .param p2, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;

    .prologue
    const/4 v3, 0x1

    .line 158
    if-eqz p2, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 160
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 161
    const-string v4, "star_status"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 162
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 163
    add-int v4, p1, v1

    invoke-virtual {p2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 171
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "i":I
    .end local v2    # "index":I
    :goto_1
    return v3

    .line 162
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public close()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-wide/16 v1, 0x0

    .line 137
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 138
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 145
    :cond_0
    return-wide v1
.end method

.method public getThreadIdAtPosition(I)J
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const-wide/16 v1, 0x0

    .line 106
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 107
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 114
    :cond_0
    return-wide v1
.end method

.method public getThreadTypeAtPosition(I)I
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 119
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyAlertsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    const/4 v1, 0x0

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 123
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 124
    .local v1, "threadType":I
    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const-string v3, "thread_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, "threadTypeColumnIndex":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 128
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method public isConversationStarred(I)Z
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x1

    .line 175
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 176
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 177
    const-string v3, "star_status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, "index":I
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 184
    .end local v1    # "index":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView;

    return-object v0
.end method

.method public switchCursorAdapterMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->mMode:I

    .line 155
    return-void
.end method
