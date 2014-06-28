.class public Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndexOperation:I

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    .line 597
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 594
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->mIndexOperation:I

    .line 598
    return-void
.end method

.method private querySmscNumber()V
    .locals 9

    .prologue
    const v8, 0x7f0700b2

    .line 616
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 617
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 619
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://smsc/smsc_number"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 620
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 621
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$402(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$400(Lcom/sonyericsson/conversations/ui/SettingsFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 630
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$402(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    :cond_1
    if-eqz v6, :cond_2

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 636
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 638
    return-void

    .line 624
    :catch_0
    move-exception v7

    .line 625
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There happens some exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$400(Lcom/sonyericsson/conversations/ui/SettingsFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 630
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$402(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    :cond_3
    if-eqz v6, :cond_2

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 629
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$400(Lcom/sonyericsson/conversations/ui/SettingsFragment;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 630
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$402(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    :cond_4
    if-eqz v6, :cond_5

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 636
    :cond_5
    const/4 v0, 0x0

    .line 629
    throw v2
.end method

.method private updateSmscNumber()V
    .locals 9

    .prologue
    .line 641
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 643
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v6, "content://smsc/smsc_number"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 644
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 645
    .local v5, "values":Landroid/content/ContentValues;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$400(Lcom/sonyericsson/conversations/ui/SettingsFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",145"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, "te":Ljava/lang/String;
    const-string v6, "smsc_num"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 649
    .local v2, "ret":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 650
    const-string v6, "SettingsFragment"

    const-string v7, "There happens some exception "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    .end local v2    # "ret":I
    .end local v3    # "te":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 657
    return-void

    .line 652
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "SettingsFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There happens some exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 655
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    const/4 v0, 0x0

    throw v6
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x0

    .line 605
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->mIndexOperation:I

    .line 606
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->updateSmscNumber()V

    .line 612
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->querySmscNumber()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 593
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 660
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 661
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 593
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 664
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->mIndexOperation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    const-string v1, "pref_key_smsc_number"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$400(Lcom/sonyericsson/conversations/ui/SettingsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    const-string v1, "pref_key_smsc_number"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 668
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 593
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method
