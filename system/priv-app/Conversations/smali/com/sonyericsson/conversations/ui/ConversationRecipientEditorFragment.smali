.class public Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;
.super Landroid/app/Fragment;
.source "ConversationRecipientEditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
.implements Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;,
        Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;
    }
.end annotation


# static fields
.field private static final BLOCK_FOCUS_CHANGE:Z = true

.field public static final FILTER_STRING_MAX_LENGTH:I = 0x800

.field private static final QUERY_CONTACT_ADAPTER_MODE:I = 0x1

.field private static final RECENT_CONTACT_ADAPTER_MODE:I = 0x2

.field public static final RECIPIENTS_ALL_INVALID:I = 0x2

.field public static final RECIPIENTS_ALL_VALID:I = 0x0

.field public static final RECIPIENTS_PART_VALID:I = 0x1

.field private static final REQUEST_CODE_PICK_ADD_RECIPIENT_EDITOR:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ConversationRecipientEditorFragment"

.field private static final UNKNOWN_ADAPTER_MODE:I


# instance fields
.field private mAdapterMode:I

.field private mEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

.field private mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

.field private mIsRecipientValid:Z

.field private mMaxRecipientCount:I

.field private mRecentContactsAdapter:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

.field private mRecipientsAdapter:Lcom/sonyericsson/conversations/ui/RecipientsAdapter;

.field private mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

.field private mRecipientsEditorClickListener:Landroid/view/View$OnClickListener;

.field private mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

.field private mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 75
    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAdapterMode:I

    .line 77
    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mMaxRecipientCount:I

    .line 83
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    .line 85
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    .line 89
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecentContactsAdapter:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    .line 91
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsAdapter:Lcom/sonyericsson/conversations/ui/RecipientsAdapter;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mIsRecipientValid:Z

    .line 95
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    .line 97
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorClickListener:Landroid/view/View$OnClickListener;

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;)V
    .locals 2
    .param p1, "recipientEditorPanelListener"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 75
    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAdapterMode:I

    .line 77
    iput v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mMaxRecipientCount:I

    .line 83
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    .line 85
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    .line 89
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecentContactsAdapter:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    .line 91
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsAdapter:Lcom/sonyericsson/conversations/ui/RecipientsAdapter;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mIsRecipientValid:Z

    .line 95
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    .line 97
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorClickListener:Landroid/view/View$OnClickListener;

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->showRecentContactList()V

    return-void
.end method

.method private changeAdapter(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 376
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAdapterMode:I

    if-ne v2, p1, :cond_0

    .line 402
    :goto_0
    return v1

    .line 379
    :cond_0
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAdapterMode:I

    .line 382
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 383
    .local v0, "oldAdapter":Landroid/widget/CursorAdapter;
    if-eqz v0, :cond_1

    .line 384
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 387
    :cond_1
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAdapterMode:I

    packed-switch v2, :pswitch_data_0

    .line 397
    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAdapterMode:I

    .line 398
    const-string v1, "ConversationRecipientEditorFragment"

    const-string v2, "switch adapter failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 389
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsAdapter:Lcom/sonyericsson/conversations/ui/RecipientsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 393
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecentContactsAdapter:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDataLoaded(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecentContactsAdapter:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    if-nez v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecentContactsAdapter:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->fillRecipientCache(Landroid/database/Cursor;)V

    .line 316
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAdapterMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setShowRecentList(Z)V

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->performFiltering()V

    goto :goto_0
.end method

.method private onDataReset()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecentContactsAdapter:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecentContactsAdapter:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 327
    :cond_0
    return-void
.end method

.method private showRecentContactList()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setShowRecentList(Z)V

    .line 408
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->changeAdapter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->performFiltering()V

    .line 417
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecentContactsAdapter:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->performFiltering()V

    goto :goto_0
.end method


# virtual methods
.method public finishUp()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->onRecipientsChanged(Z)V

    .line 444
    return-void
.end method

.method public getAllInputRecipientCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getAllRecipientCount()I

    move-result v0

    goto :goto_0
.end method

.method public getInvalidRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecipientsEditorModel()Lcom/sonyericsson/conversations/model/RecipientsEditorModel;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    return-object v0
.end method

.method public getValidRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getValidRecipients()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public hasValidRecipient()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->hasValidRecipient()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecipientDirty()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isRecipientDirty()Z

    move-result v0

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/RecipientBubble;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsAdapter:Lcom/sonyericsson/conversations/ui/RecipientsAdapter;

    .line 125
    new-instance v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->initModel(Landroid/content/Context;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 127
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->initRecentContactData(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 129
    new-instance v0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/RecipientBubble;Lcom/sonyericsson/conversations/model/RecipientsEditorModel;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecentContactsAdapter:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->changeAdapter(I)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 199
    const/16 v1, 0x68

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 201
    const-string v1, "msg_uris"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/model/Conversation;->extractAddressFromContactPickerIntent(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$2;

    const-string v2, "add participant2editor thread"

    invoke-direct {v1, p0, v2, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 211
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 148
    new-instance v1, Lcom/sonyericsson/conversations/ui/RecipientBubble;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientBubble;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 154
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTextMessagingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->registerEditorListener(Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;)V

    .line 161
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipients()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mMaxRecipientCount:I

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mMaxRecipientCount:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setMaxRecipientCount(I)V

    .line 164
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_0
    return-object v0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 217
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 220
    .local v0, "recipientsAdapter":Landroid/widget/CursorAdapter;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 223
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setShowRecentList(Z)V

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->unRegisterEditorListener()V

    .line 227
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .line 229
    .end local v0    # "recipientsAdapter":Landroid/widget/CursorAdapter;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 230
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    .line 231
    return-void
.end method

.method public onEditorAddText()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isEndWithTerminator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setShowRecentList(Z)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->changeAdapter(I)Z

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method

.method public onEditorContentChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;->onEditorContentChanged(Ljava/lang/String;)V

    .line 451
    :cond_0
    return-void
.end method

.method public onEditorDeleteText()V
    .locals 4

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "isShowList":Z
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isEditorEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    const/4 v0, 0x0

    .line 352
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setShowRecentList(Z)V

    .line 354
    if-eqz v0, :cond_0

    .line 355
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->changeAdapter(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->performFiltering()V

    .line 361
    :cond_0
    :goto_1
    return-void

    .line 335
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isEndWithTerminator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 337
    .local v2, "start":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 338
    .local v1, "length":I
    if-ne v2, v1, :cond_3

    .line 343
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isDeleteBubble()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 346
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 358
    .end local v1    # "length":I
    .end local v2    # "start":I
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_1
.end method

.method public onEditorFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;->onRecipientsEditorFocusChange(Z)V

    .line 281
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    if-eqz p1, :cond_3

    .line 283
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mIsRecipientValid:Z

    if-eqz v0, :cond_2

    .line 284
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->showRecentContactList()V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 286
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mIsRecipientValid:Z

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setShowRecentList(Z)V

    goto :goto_0
.end method

.method public varargs onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 430
    sget-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->onDataReset()V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->onDataLoaded(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onRecipientsChanged(Z)V
    .locals 7
    .param p1, "blockFocusChange"    # Z

    .prologue
    .line 253
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setRecipientDirty(Z)V

    .line 255
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v0

    .line 256
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 258
    .local v1, "r":Landroid/content/res/Resources;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    const v4, 0x7f0d0011

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    const v6, 0x7f0d0012

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 270
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    invoke-interface {v2, v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;->onParticipantsChanged(Ljava/util/List;Z)V

    .line 274
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 264
    .restart local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "r":Landroid/content/res/Resources;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    const v4, 0x7f0d000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    const v6, 0x7f0d0010

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTextMessagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 240
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setShowRecentList(Z)V

    .line 243
    :cond_0
    return-void

    .line 237
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public resetToField()V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getAllInputRecipientCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeAllRecipients()V

    .line 195
    :cond_0
    return-void
.end method

.method public setContentListener(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;)V
    .locals 0
    .param p1, "contentListener"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    .line 455
    return-void
.end method

.method public setFocus(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 305
    :cond_0
    return-void
.end method

.method public setRecipientValid(Z)V
    .locals 0
    .param p1, "isValid"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mIsRecipientValid:Z

    .line 421
    return-void
.end method
