.class Lcom/android/settings/accounts/SyncSettings$1;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/SyncSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/SyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/SyncSettings;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/accounts/SyncSettings$1;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "SyncSettings"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v1, "enabling"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    const-string v2, "com.android.settings"

    const-class v3, Lcom/sonymobile/settings/SomcSyncSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v2, p0, Lcom/android/settings/accounts/SyncSettings$1;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-virtual {v2, v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method
