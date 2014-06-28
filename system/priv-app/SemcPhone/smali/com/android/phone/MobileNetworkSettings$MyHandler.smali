.class Lcom/android/phone/MobileNetworkSettings$MyHandler;
.super Landroid/os/Handler;
.source "MobileNetworkSettings.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p2, "x1"    # Lcom/android/phone/MobileNetworkSettings$1;

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 716
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 718
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    .line 719
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v1, v3, v5

    .line 721
    .local v1, "modemNetworkMode":I
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_0

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    .line 726
    :cond_0
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$300(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "preferred_network_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 731
    .local v2, "settingsNetworkMode":I
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_1

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    .line 737
    :cond_1
    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v7, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    const/16 v3, 0xb

    if-eq v1, v3, :cond_2

    const/16 v3, 0xc

    if-ne v1, v3, :cond_b

    .line 750
    :cond_2
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_3

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    .line 756
    :cond_3
    if-eq v1, v2, :cond_6

    .line 757
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_4

    .line 758
    const-string v3, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    .line 762
    :cond_4
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_5

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    .line 768
    :cond_5
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$300(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;
    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/MobileNetworkSettings$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 773
    move v1, v2

    .line 777
    :cond_6
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$500(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 778
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # invokes: Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v1}, Lcom/android/phone/MobileNetworkSettings;->access$600(Lcom/android/phone/MobileNetworkSettings;I)V

    .line 779
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$700(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 780
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$700(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    if-ne v1, v4, :cond_9

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 782
    :cond_7
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$800(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 783
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$800(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-ne v1, v7, :cond_a

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 793
    .end local v1    # "modemNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    :cond_8
    :goto_2
    return-void

    .restart local v1    # "modemNetworkMode":I
    .restart local v2    # "settingsNetworkMode":I
    :cond_9
    move v3, v5

    .line 780
    goto :goto_0

    :cond_a
    move v4, v5

    .line 783
    goto :goto_1

    .line 787
    :cond_b
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_c

    .line 788
    const-string v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    .line 790
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_2
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 798
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 799
    const-string v0, "handleSetPreferredNetworkTypeResponse: fetching current state (by MESSAGE_GET_PREFERRED_NETWORK_TYPE"

    # invokes: Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$300(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 804
    return-void
.end method

.method private resetNetworkModeToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 808
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$500(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$800(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$800(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 817
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$300(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 821
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$300(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 823
    return-void

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$700(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$MyHandler;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$700(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 705
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 713
    :goto_0
    return-void

    .line 707
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 710
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 705
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
