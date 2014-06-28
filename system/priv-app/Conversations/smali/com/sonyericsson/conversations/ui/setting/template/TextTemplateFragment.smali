.class public Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
.super Landroid/app/Fragment;
.source "TextTemplateFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;,
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;,
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/sonymobile/template/sms/TextTemplate;",
        ">;>;",
        "Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;"
    }
.end annotation


# static fields
.field public static final INSTANCE_CLICKED_POS:Ljava/lang/String; = "clicked_pos"

.field private static final LIST_SELECTED_POSITION_NONE:I = -0x1


# instance fields
.field private mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

.field private mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

.field private mClickedPosition:I

.field private mClosedByUser:Z

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mMultiSelectionMode:Landroid/view/ActionMode;

.field private mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

.field private mTemplateList:Landroid/widget/ListView;

.field private mTemplateListEmptyText:Landroid/widget/TextView;

.field mTemplateListMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

.field private mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClosedByUser:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    .line 362
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateListMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->switchToMultiSelectMode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->switchToViewMode()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClickedPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;ILcom/sonymobile/template/sms/TextTemplate;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/sonymobile/template/sms/TextTemplate;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->showTemplateDialog(ILcom/sonymobile/template/sms/TextTemplate;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClosedByUser:Z

    return v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 148
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->initActionBar()V

    .line 160
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 164
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 165
    const/16 v1, 0xf

    .line 167
    .local v1, "flag":I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 169
    .end local v1    # "flag":I
    :cond_0
    return-void
.end method

.method private onActionBarHomePressed()V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getConversationHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private onWriteNewClick()V
    .locals 5

    .prologue
    const/16 v3, 0x1e

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070145

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->showTemplateDialog(ILcom/sonymobile/template/sms/TextTemplate;)V

    goto :goto_0
.end method

.method private refreshDeleteMenuItem()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mDeleteMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mDeleteMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private refreshEmptyText()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateListEmptyText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateListEmptyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showTemplateDialog(ILcom/sonymobile/template/sms/TextTemplate;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "originalTemplate"    # Lcom/sonymobile/template/sms/TextTemplate;

    .prologue
    .line 312
    new-instance v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;-><init>()V

    .line 313
    .local v1, "dialogFragment":Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    const-string v2, "textTemplate"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 316
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 317
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "text-template-dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method private switchToMultiSelectMode(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 233
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 237
    if-le p1, v2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 261
    :cond_0
    :goto_1
    return-void

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->switchCursorAdapterMode(I)V

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 247
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->clearChoices()V

    .line 250
    if-eq p1, v2, :cond_3

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 254
    :cond_3
    new-instance v0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateListMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 256
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;->onStartDeleteSeveralTextTemplates()V

    goto :goto_1
.end method

.method private switchToViewMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->switchCursorAdapterMode(I)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 269
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->refreshDeleteMenuItem()V

    .line 270
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->refreshEmptyText()V

    .line 271
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 273
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .line 274
    return-void
.end method


# virtual methods
.method public getActionMenuForTest()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, "actionMenu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v0, v1, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 492
    :cond_0
    return-object v0
.end method

.method public getCustomViewForTest()Landroid/view/View;
    .locals 2

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 478
    .local v0, "customView":Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v0, v1, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    .line 482
    :cond_0
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->init()V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const-string v0, "clicked_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClickedPosition:I

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 192
    const v0, 0x7f0f0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 194
    const v0, 0x7f0a00d1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mDeleteMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 196
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    .line 108
    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateListEmptyText:Landroid/widget/TextView;

    .line 109
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClosedByUser:Z

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 144
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 145
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->setData(Ljava/util/List;)V

    .line 284
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->refreshEmptyText()V

    .line 285
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->refreshDeleteMenuItem()V

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 291
    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->setData(Ljava/util/List;)V

    .line 296
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 211
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 202
    :sswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->onWriteNewClick()V

    goto :goto_0

    .line 205
    :sswitch_1
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->switchToMultiSelectMode(I)V

    goto :goto_0

    .line 208
    :sswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->onActionBarHomePressed()V

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0a00d0 -> :sswitch_0
        0x7f0a00d1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 128
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 129
    .local v0, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 132
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClickedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onTextTemplateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "inputString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 323
    if-ne v2, p1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->addTextTemplate(Ljava/lang/String;)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 333
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClickedPosition:I

    invoke-virtual {v0, v1, p2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->editTextTemplate(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    .line 473
    return-void
.end method
