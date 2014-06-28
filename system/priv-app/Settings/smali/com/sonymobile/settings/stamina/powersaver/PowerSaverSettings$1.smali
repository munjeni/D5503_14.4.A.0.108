.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;
.super Ljava/lang/Object;
.source "PowerSaverSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # getter for: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHint:Landroid/view/View;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$000(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/view/View;

    move-result-object v3

    if-ne p2, v3, :cond_1

    .line 95
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # invokes: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->createAndShowHintDialog()V
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$100(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # getter for: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$200(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->isPowerSaverEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # getter for: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$300(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/view/View;

    move-result-object v3

    if-ne p2, v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # invokes: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->onActivationClicked()V
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$400(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    goto :goto_0

    .line 104
    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-ltz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # getter for: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$200(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->loadFeatures()V

    .line 108
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # getter for: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$200(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 111
    long-to-int p3, p4

    .line 112
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # getter for: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$200(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    move-result-object v2

    .line 114
    .local v2, "feature":Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    const v3, 0x7f08016a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 115
    .local v0, "btn":Landroid/widget/CheckBox;
    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 117
    .local v1, "checked":Z
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 119
    iput-boolean v1, v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    .line 120
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    iget-boolean v5, v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    iget v6, v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    invoke-static {v3, v4, v5, v6}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->updatePowerSaverFeature(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 116
    .end local v1    # "checked":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 124
    :cond_4
    iget-object v3, v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    const-string v4, "Brightness"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # getter for: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;
    invoke-static {v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$500(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->show(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V

    goto :goto_0

    .line 126
    :cond_5
    iget-object v3, v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    const-string v4, "Timeout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # invokes: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    invoke-static {v3, v2}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$600(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V

    goto/16 :goto_0
.end method
