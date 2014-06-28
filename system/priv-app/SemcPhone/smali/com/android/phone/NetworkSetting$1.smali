.class Lcom/android/phone/NetworkSetting$1;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 148
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 213
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 150
    :sswitch_0
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->restoreDataTrafficSetting()V
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;)V

    .line 151
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget v6, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v5, v4, v6}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    goto :goto_0

    .line 156
    :sswitch_1
    const/4 v4, 0x1

    # setter for: Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$302(Z)Z

    .line 157
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/app/Activity;->removeDialog(I)V

    .line 158
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->removeDialog(I)V

    .line 160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 163
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 164
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v5, "network selection failed !"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 165
    :cond_1
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 168
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 169
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/SomcNetworkPreference;

    invoke-virtual {v4}, Lcom/android/phone/SomcNetworkPreference;->unsetCurrentNetwork()V

    .line 170
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;
    invoke-static {v4, v6}, Lcom/android/phone/NetworkSetting;->access$602(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 172
    :cond_2
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;
    invoke-static {v4, v6}, Lcom/android/phone/NetworkSetting;->access$702(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Landroid/preference/Preference;

    goto :goto_0

    .line 174
    :cond_3
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v5, "network selection succeeded !"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 176
    :cond_4
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .line 178
    .local v2, "ni":Lcom/android/internal/telephony/OperatorInfo;
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->updateCurrentNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z
    invoke-static {v4, v2}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :sswitch_2
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v5, "network reselected automatically !"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 187
    :cond_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v3, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    .line 188
    .local v3, "ss":Landroid/telephony/ServiceState;
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 189
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 190
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 192
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v5, 0x0

    # setter for: Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$1102(Lcom/android/phone/NetworkSetting;Z)Z

    goto/16 :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_6

    .line 195
    const-string v4, "phone"

    const-string v5, "Failed to start network query in NetworkSettings handleMessage."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->updateNetworkFromServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v4, v3}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;Landroid/telephony/ServiceState;)V

    goto/16 :goto_0

    .line 209
    .end local v3    # "ss":Landroid/telephony/ServiceState;
    :sswitch_3
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->updateNetworkSearchModeButton()V
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1500(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
    .end sparse-switch
.end method
