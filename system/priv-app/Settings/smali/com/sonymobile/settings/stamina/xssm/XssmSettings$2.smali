.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;
.super Ljava/lang/Object;
.source "XssmSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHint:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->showHintDialog(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/os/Bundle;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mIsXSSMEnabled:Z
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$200(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivation:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$300(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$400(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->show(Landroid/os/Bundle;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mAddBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$500(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$2;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->onAddApplication()V
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$600(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    goto :goto_0
.end method
