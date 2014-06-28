.class Lcom/android/phone/BluetoothPhoneService$1;
.super Landroid/os/Handler;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 176
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 180
    :pswitch_0
    const/4 v0, 0x0

    .line 181
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 184
    .restart local v0    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothPhoneService;->access$100(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 187
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleListCurrentCalls()V
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$200(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleQueryPhoneState()V
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$300(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 193
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallState()V
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$400(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 196
    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothPhoneService;->access$500(Lcom/android/phone/BluetoothPhoneService;Z)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
