.class public Lcom/sonyericsson/conversations/ui/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# static fields
.field public static final DISPLAY_NOTIFICATION_INTENT_EXTRA:Ljava/lang/String; = "com.sonyericsson.conversations.ui.DISPLAY_NOTIFICATION_SETTINGS"

.field public static final DISPLAY_SIM_MESSAGE_INTENT_EXTRA:Ljava/lang/String; = "com.sonyericsson.conversations.ui.DISPLAY_SIM_MESSAGE_SETTINGS"

.field public static final DISPLAY_TEXT_TEMPLATE_INTENT_EXTRA:Ljava/lang/String; = "com.sonyericsson.conversations.ui.DISPLAY_TEMPLATE_MESSAGE_SETTINGS"

.field public static final SETTINGS_INTENT_EXTRA:Ljava/lang/String; = "extra"


# instance fields
.field private mController:Lcom/sonyericsson/conversations/ui/controller/SettingsController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsActivity;->mController:Lcom/sonyericsson/conversations/ui/controller/SettingsController;

    return-void
.end method


# virtual methods
.method public adjustRatioOf2Panes()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 78
    const v8, 0x7f0a002c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "leftView":Landroid/view/View;
    const v8, 0x7f0a002e

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 81
    .local v6, "rightView":Landroid/view/View;
    if-eqz v1, :cond_0

    if-nez v6, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/high16 v2, 0x3f800000

    .line 87
    .local v2, "leftWeight":F
    const/high16 v7, 0x3f800000

    .line 89
    .local v7, "rightWeight":F
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 90
    .local v0, "cf":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 94
    .local v3, "ori":I
    const/4 v8, 0x2

    if-ne v3, v8, :cond_3

    .line 95
    const v2, 0x3f1e353f

    .line 96
    const v7, 0x3ec39581

    .line 102
    :cond_2
    :goto_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 106
    .local v4, "paramLeft":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 110
    .local v5, "paramRight":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 97
    .end local v4    # "paramLeft":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "paramRight":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    .line 98
    const/high16 v2, 0x3f800000

    .line 99
    const/high16 v7, 0x3f800000

    goto :goto_1
.end method

.method createSettingsController()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;-><init>(Lcom/sonyericsson/conversations/ui/SettingsActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsActivity;->mController:Lcom/sonyericsson/conversations/ui/controller/SettingsController;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/SettingsOnePaneController;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsOnePaneController;-><init>(Lcom/sonyericsson/conversations/ui/SettingsActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsActivity;->mController:Lcom/sonyericsson/conversations/ui/controller/SettingsController;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsActivity;->adjustRatioOf2Panes()V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsActivity;->createSettingsController()V

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsActivity;->mController:Lcom/sonyericsson/conversations/ui/controller/SettingsController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsActivity;->mController:Lcom/sonyericsson/conversations/ui/controller/SettingsController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->onNewIntent(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 61
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 56
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getConversationHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
