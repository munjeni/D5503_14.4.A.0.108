.class public abstract Lcom/android/settings/location/LocationSettingsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettingsBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/SettingsPreferenceFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mActive:Z

.field private mCurrentMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    return-void
.end method

.method private isRestricted()Z
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 80
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 61
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 116
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 122
    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "(name=?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "location_mode"

    aput-object v7, v5, v6

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    .line 129
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public abstract onModeChanged(IZ)V
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onPause()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onResume()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 67
    return-void
.end method

.method public refreshLocationMode()V
    .locals 4

    .prologue
    .line 106
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, "mode":I
    iput v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    .line 110
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 112
    .end local v0    # "mode":I
    :cond_0
    return-void
.end method

.method public setLocationMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const-string v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "LocationSettingsBase"

    const-string v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 92
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    goto :goto_0
.end method
