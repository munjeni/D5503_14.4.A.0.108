.class public Lcom/android/settings/print/PrintJobSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintJobSettingsFragment.java"


# instance fields
.field private mListDivider:Landroid/graphics/drawable/Drawable;

.field private mMessagePreference:Landroid/preference/Preference;

.field private mPrintJob:Landroid/print/PrintJob;

.field private mPrintJobId:Landroid/print/PrintJobId;

.field private mPrintJobPreference:Landroid/preference/Preference;

.field private final mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/print/PrintJobSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintJobSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintJobSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/print/PrintJobSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintJobSettingsFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->updateUi()V

    return-void
.end method

.method private processArguments()V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "printJobId":Ljava/lang/String;
    invoke-static {v0}, Landroid/print/PrintJobId;->unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    .line 154
    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 157
    :cond_0
    return-void
.end method

.method private updateUi()V
    .locals 12

    .prologue
    const v3, 0x7f0b0621

    const/4 v4, 0x3

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    .line 162
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 232
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    invoke-virtual {v0}, Landroid/print/PrintJob;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    invoke-virtual {v0}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v6

    .line 174
    .local v6, "info":Landroid/print/PrintJobInfo;
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_1
    :pswitch_0
    iget-object v8, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v9, 0x7f0b061f

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v5

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v0

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 219
    :goto_2
    :pswitch_1
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getStateReason()Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "stateReason":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 221
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "print_job_message_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    .line 222
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :goto_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 177
    .end local v7    # "stateReason":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v1, 0x7f0b0620

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v3, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 187
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v1, 0x7f0b0622

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 192
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v1, 0x7f0b0623

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v3, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 210
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 215
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 227
    .restart local v7    # "stateReason":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mListDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 207
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 80
    const-string v0, "print_job_preference"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    .line 81
    const-string v0, "print_job_message_preference"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/preference/Preference;

    .line 83
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b061c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->processArguments()V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    invoke-virtual {v2}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    const v2, 0x7f0b061e

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 122
    .local v0, "cancel":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 125
    .end local v0    # "cancel":Landroid/view/MenuItem;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    invoke-virtual {v2}, Landroid/print/PrintJob;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const/4 v2, 0x2

    const v3, 0x7f0b061d

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 128
    .local v1, "restart":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 130
    .end local v1    # "restart":Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 148
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    invoke-virtual {v1}, Landroid/print/PrintJob;->cancel()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    invoke-virtual {v1}, Landroid/print/PrintJob;->restart()V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->updateUi()V

    .line 106
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    return-void
.end method
