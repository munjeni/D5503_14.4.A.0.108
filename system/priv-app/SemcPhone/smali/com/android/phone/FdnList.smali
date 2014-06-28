.class public Lcom/android/phone/FdnList;
.super Lcom/android/phone/ADNList;
.source "FdnList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    return-void
.end method

.method private addContact()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    const-class v1, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method private deleteSelected()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/app/ListActivity;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/FdnList;->deleteSelected(I)V

    .line 223
    return-void
.end method

.method private deleteSelected(I)V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 231
    const-class v3, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 232
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v0, "number"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 236
    :cond_0
    return-void
.end method

.method private dialSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "number":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 243
    .local v0, "callIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 245
    .end local v0    # "callIntent":Landroid/content/Intent;
    .end local v1    # "number":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private editSelected()V
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/app/ListActivity;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 203
    return-void
.end method

.method private editSelected(I)V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 214
    const-class v3, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 215
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v0, "number"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 99
    .local v0, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_0

    .line 100
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local v0    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 102
    .local v1, "position":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 115
    .end local v1    # "position":I
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 104
    .restart local v1    # "position":I
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/phone/FdnList;->editSelected(I)V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/phone/FdnList;->deleteSelected(I)V

    goto :goto_0

    .line 110
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/phone/FdnList;->dialSelected(I)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 58
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 68
    instance-of v5, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v5, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    .line 72
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 74
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    iget v6, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    iget-object v5, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 80
    .local v3, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 81
    move-object v4, v1

    .line 88
    .local v4, "title":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 89
    const/4 v5, 0x4

    const v6, 0x7f0b032f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 90
    const/4 v5, 0x2

    const v6, 0x7f0b032d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 91
    const/4 v5, 0x3

    const v6, 0x7f0b032e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 82
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    move-object v4, v2

    .restart local v4    # "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 130
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0b032c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 135
    const/4 v1, 0x2

    const v2, 0x7f0b032d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 137
    const/4 v1, 0x3

    const v2, 0x7f0b032e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 139
    return v4
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 184
    invoke-direct {p0, p3}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 185
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 158
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnSetting;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 166
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/FdnList;->addContact()V

    goto :goto_0

    .line 170
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/FdnList;->editSelected()V

    goto :goto_0

    .line 174
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/FdnList;->deleteSelected()V

    goto :goto_0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 145
    invoke-virtual {p0}, Landroid/app/ListActivity;->getSelectedItemPosition()I

    move-result v2

    if-ltz v2, :cond_0

    move v0, v1

    .line 147
    .local v0, "hasSelection":Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 148
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 149
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    return v1

    .line 145
    .end local v0    # "hasSelection":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "content://icc/fdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
