.class Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/ApnSettings;
    .param p2, "x1"    # Lcom/android/settings/ApnSettings$1;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 405
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 418
    :goto_0
    return-void

    .line 407
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    # invokes: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 409
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$102(Z)Z

    .line 410
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    iget-object v1, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b042a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
