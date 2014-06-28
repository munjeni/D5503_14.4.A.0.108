.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$2;
.super Ljava/lang/Object;
.source "PackageDisplayListSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$2;->this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$2;->this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->commitToWhitelist()V

    .line 237
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$2;->this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$2;->this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    iget-object v1, v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 239
    return-void
.end method
