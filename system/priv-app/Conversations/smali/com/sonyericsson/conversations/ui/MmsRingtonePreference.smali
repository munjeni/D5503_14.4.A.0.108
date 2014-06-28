.class public Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "MmsRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    .line 61
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTranslatedNotificationSound()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "sound":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->soundFileAccessible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    :goto_0
    const-string v1, "android.intent.extra.ringtone.INCLUDE_DRM"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    return-void

    .line 67
    :cond_0
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method
