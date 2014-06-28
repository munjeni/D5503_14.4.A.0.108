.class Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;)V
    .locals 0

    .prologue
    .line 2074
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2077
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2078
    .local v0, "target":Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2079
    const/4 v1, 0x1

    # invokes: Lcom/android/settings/DataUsageSummary;->setDataRoaming(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$3100(Lcom/android/settings/DataUsageSummary;Z)V

    .line 2081
    :cond_0
    return-void
.end method
