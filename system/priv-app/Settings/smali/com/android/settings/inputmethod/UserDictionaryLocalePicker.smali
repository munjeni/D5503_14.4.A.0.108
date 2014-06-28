.class public Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "UserDictionaryLocalePicker.java"


# instance fields
.field private mKillThisFragment:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->mKillThisFragment:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->mKillThisFragment:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->mKillThisFragment:Z

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->mKillThisFragment:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 48
    :cond_0
    return-void
.end method
