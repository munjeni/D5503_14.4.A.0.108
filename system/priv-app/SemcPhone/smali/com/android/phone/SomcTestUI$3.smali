.class Lcom/android/phone/SomcTestUI$3;
.super Landroid/os/Handler;
.source "SomcTestUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcTestUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcTestUI;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcTestUI;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/phone/SomcTestUI$3;->this$0:Lcom/android/phone/SomcTestUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 536
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 539
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SomcTestUI$3;->this$0:Lcom/android/phone/SomcTestUI;

    # getter for: Lcom/android/phone/SomcTestUI;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/phone/SomcTestUI;->access$500(Lcom/android/phone/SomcTestUI;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 540
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getPUKEntryProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 541
    .local v0, "dialog":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 547
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/SomcTestUI$3;->this$0:Lcom/android/phone/SomcTestUI;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 549
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 550
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    iget-object v4, p0, Lcom/android/phone/SomcTestUI$3;->this$0:Lcom/android/phone/SomcTestUI;

    # getter for: Lcom/android/phone/SomcTestUI;->mNetworkSelection:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/SomcTestUI;->access$600(Lcom/android/phone/SomcTestUI;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 551
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x75
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
