.class Lcom/android/settings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    # invokes: Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/android/settings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 120
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v1, Lcom/android/settings/ApnSettings$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 137
    .end local v0    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v0    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :pswitch_0
    # getter for: Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # invokes: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 129
    .end local v0    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_2
    const-string v1, "com.sonyericsson.action.APN_SIM_CHANGE_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # invokes: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
