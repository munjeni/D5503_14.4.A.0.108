.class Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$1;
.super Ljava/lang/Object;
.source "SettingsTwoPaneController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishDeleteTextTemplate()V
    .locals 4

    .prologue
    .line 48
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    const v3, 0x7f0a002c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 49
    .local v1, "leftView":Landroid/widget/RelativeLayout;
    const-string v2, "DIM_LAYER_TAG"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "convListDimLayer":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public onStartDeleteSeveralTextTemplates()V
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 44
    .local v0, "leftView":Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->getDimLayer(Landroid/content/Context;)Landroid/view/View;
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;->access$000(Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    return-void
.end method
