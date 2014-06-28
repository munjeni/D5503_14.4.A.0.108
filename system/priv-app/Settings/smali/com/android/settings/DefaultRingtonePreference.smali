.class public Lcom/android/settings/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 43
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 49
    return-void
.end method
