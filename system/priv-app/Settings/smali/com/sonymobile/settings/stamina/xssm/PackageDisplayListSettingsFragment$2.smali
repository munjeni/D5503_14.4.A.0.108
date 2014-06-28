.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$2;
.super Ljava/lang/Object;
.source "PackageDisplayListSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 273
    return-void
.end method
