.class public Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsAdditionalCallOptions.java"


# instance fields
.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v2, 0x7f050009

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 56
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v2, "button_clir_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CLIRListPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 57
    const-string v2, "button_cw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallWaitingCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 59
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iput-boolean v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFirstResume:Z

    .line 66
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 69
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 113
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 115
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 116
    .local v0, "pref":Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    .end local v0    # "pref":Landroid/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 120
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 121
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 126
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 127
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 128
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 79
    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFirstResume:Z

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v1, :cond_2

    .line 81
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "GsmUmtsAdditionalCallOptions"

    const-string v2, "start to init "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, p0, v4}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 97
    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFirstResume:Z

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    .line 100
    :cond_1
    return-void

    .line 84
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "GsmUmtsAdditionalCallOptions"

    const-string v2, "restore stored states"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 86
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, p0, v5}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 87
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v1, p0, v5}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 88
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 89
    .local v0, "clirArray":[I
    if-eqz v0, :cond_5

    .line 90
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_4

    const-string v1, "GsmUmtsAdditionalCallOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:  clirArray[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clirArray[1]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_0

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, p0, v4}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 109
    :cond_0
    return-void
.end method
