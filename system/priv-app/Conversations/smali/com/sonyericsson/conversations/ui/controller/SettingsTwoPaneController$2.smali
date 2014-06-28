.class Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$2;
.super Ljava/lang/Object;
.source "SettingsTwoPaneController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/SettingsFragment$SettingsFragmentCallback;


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
    .line 54
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRightPaneType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/SettingsTwoPaneController;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "extra":Ljava/lang/String;
    const-string v1, "com.sonyericsson.conversations.ui.DISPLAY_NOTIFICATION_SETTINGS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "NotificationPane"

    .line 64
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const-string v1, "com.sonyericsson.conversations.ui.DISPLAY_SIM_MESSAGE_SETTINGS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const-string v1, "SimPane"

    goto :goto_0

    .line 61
    :cond_1
    const-string v1, "com.sonyericsson.conversations.ui.DISPLAY_TEMPLATE_MESSAGE_SETTINGS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const-string v1, "TemplatePane"

    goto :goto_0

    .line 64
    :cond_2
    const-string v1, "NotificationPane"

    goto :goto_0
.end method
