.class public Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;
.super Lcom/sonyericsson/conversations/ui/RecipientsAdapter;
.source "RecentContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;
    }
.end annotation


# instance fields
.field mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/RecipientBubble;Lcom/sonyericsson/conversations/model/RecipientsEditorModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "span"    # Lcom/sonyericsson/conversations/ui/RecipientBubble;
    .param p3, "model"    # Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    .prologue
    .line 25
    const v0, 0x7f030003

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/RecipientBubble;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    .line 26
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    .line 27
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 63
    instance-of v4, p1, Lcom/sonyericsson/conversations/ui/RecentContactListItemView;

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 64
    check-cast v1, Lcom/sonyericsson/conversations/ui/RecentContactListItemView;

    .line 65
    .local v1, "item":Lcom/sonyericsson/conversations/ui/RecentContactListItemView;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecentContactListItemView;->getAsyncTask()Landroid/os/AsyncTask;

    move-result-object v3

    .line 66
    .local v3, "t":Landroid/os/AsyncTask;
    if-eqz v3, :cond_0

    .line 67
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 68
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/ui/RecentContactListItemView;->setAsyncTask(Landroid/os/AsyncTask;)V

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    const-string v4, "address"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "address":Ljava/lang/String;
    new-instance v2, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;

    invoke-direct {v2, p0, p1, v0}, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;Landroid/view/View;Ljava/lang/String;)V

    .line 73
    .local v2, "newTask":Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/RecentContactListItemView;->setAsyncTask(Landroid/os/AsyncTask;)V

    .line 74
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getRecentContactLabelMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->populate()V

    .line 80
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "item":Lcom/sonyericsson/conversations/ui/RecentContactListItemView;
    .end local v2    # "newTask":Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;
    .end local v3    # "t":Landroid/os/AsyncTask;
    :cond_1
    :goto_0
    return-void

    .line 77
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "item":Lcom/sonyericsson/conversations/ui/RecentContactListItemView;
    .restart local v2    # "newTask":Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;
    .restart local v3    # "t":Landroid/os/AsyncTask;
    :cond_2
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    :cond_0
    const-string v2, ""

    .line 58
    :goto_0
    return-object v2

    .line 41
    :cond_1
    const-string v3, "address"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    const-string v2, ""

    goto :goto_0

    .line 46
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getRecentContactNameMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 48
    const-string v1, ""

    .line 53
    :goto_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 55
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v4, v5}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->buildRecipientBubble(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 56
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 50
    .end local v2    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_3
    const-string v3, ", "

    const-string v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected getLabelText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "label":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getRecentContactLabelMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getRecentContactLabelMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "label":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 89
    .restart local v0    # "label":Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->createRecentContactCursor()Landroid/database/MatrixCursor;

    move-result-object v0

    .line 32
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method
