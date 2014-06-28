.class Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpairedWifiDisplayPreference"
.end annotation


# instance fields
.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 731
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 733
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    .line 734
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 735
    const v0, 0x1040559

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 736
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 737
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 743
    :goto_0
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 744
    return-void

    .line 740
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 741
    const v0, 0x7f0b0275

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 749
    const/4 v0, 0x1

    return v0
.end method
