.class Lcom/android/settings/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1182
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1184
    .local v0, "restrictBackground":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1188
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 1192
    :goto_1
    return-void

    .end local v0    # "restrictBackground":Z
    :cond_0
    move v0, v1

    .line 1182
    goto :goto_0

    .line 1190
    .restart local v0    # "restrictBackground":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/settings/DataUsageSummary;->access$1400(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_1
.end method
