.class Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
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
    name = "RoutePreference"
.end annotation


# instance fields
.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 656
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 658
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 659
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 660
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 661
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 662
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 664
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const v0, 0x7f0b0273

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 681
    :goto_0
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 682
    return-void

    .line 667
    :cond_0
    const v0, 0x7f0b0274

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 673
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 674
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 675
    const v0, 0x7f0b0275

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 677
    :cond_3
    const v0, 0x7f0b0276

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    .line 687
    const/4 v0, 0x1

    return v0
.end method
