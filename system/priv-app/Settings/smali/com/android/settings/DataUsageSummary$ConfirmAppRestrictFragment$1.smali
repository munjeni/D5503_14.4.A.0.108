.class Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;)V
    .locals 0

    .prologue
    .line 2177
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2180
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2181
    .local v0, "target":Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2182
    const/4 v1, 0x1

    # invokes: Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$1400(Lcom/android/settings/DataUsageSummary;Z)V

    .line 2184
    :cond_0
    return-void
.end method
