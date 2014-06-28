.class public Lcom/sonyericsson/conversations/ui/controller/SettingsOnePaneController;
.super Lcom/sonyericsson/conversations/ui/controller/SettingsController;
.source "SettingsOnePaneController.java"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/sonyericsson/conversations/ui/SettingsActivity;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;-><init>(Lcom/sonyericsson/conversations/ui/SettingsActivity;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->onCreate(Landroid/os/Bundle;)V

    .line 20
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsDetailArea:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    return-void
.end method
