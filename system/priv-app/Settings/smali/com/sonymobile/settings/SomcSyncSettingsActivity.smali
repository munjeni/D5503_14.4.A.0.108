.class public Lcom/sonymobile/settings/SomcSyncSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SomcSyncSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 41
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "key_auto_sync_dialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 43
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 44
    new-instance v2, Lcom/android/settings/AutoSyncDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/AutoSyncDialogFragment;-><init>()V

    .line 45
    .local v2, "newFragment":Landroid/app/DialogFragment;
    const-string v3, "key_auto_sync_dialog"

    invoke-virtual {v2, v1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 47
    .end local v2    # "newFragment":Landroid/app/DialogFragment;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 54
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "key_auto_sync_dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 55
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 58
    :cond_0
    return-void
.end method
