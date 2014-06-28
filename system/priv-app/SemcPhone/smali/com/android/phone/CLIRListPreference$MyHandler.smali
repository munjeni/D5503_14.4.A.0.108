.class Lcom/android/phone/CLIRListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CLIRListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CLIRListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CLIRListPreference;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/CLIRListPreference;
    .param p2, "x1"    # Lcom/android/phone/CLIRListPreference$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;)V

    return-void
.end method

.method private handleGetCLIRResponse(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x190

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 131
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v4, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    # getter for: Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/CLIRListPreference;->access$100(Lcom/android/phone/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 137
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    # getter for: Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/CLIRListPreference;->access$100(Lcom/android/phone/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 162
    :goto_1
    return-void

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    # getter for: Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/CLIRListPreference;->access$100(Lcom/android/phone/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 143
    :cond_1
    const-string v2, "CLIRListPreference"

    const-string v3, "ims exception - use generic failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    # getter for: Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/CLIRListPreference;->access$100(Lcom/android/phone/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    goto :goto_1

    .line 147
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    # getter for: Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/CLIRListPreference;->access$100(Lcom/android/phone/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v2, v3, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 151
    .local v1, "clirArray":[I
    array-length v2, v1

    if-eq v2, v5, :cond_4

    .line 152
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    # getter for: Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/CLIRListPreference;->access$100(Lcom/android/phone/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v2, v3, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 159
    :cond_4
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v2, v1}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_1
.end method

.method private handleSetCLIRResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 165
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 167
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    # getter for: Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CLIRListPreference;->access$200(Lcom/android/phone/CLIRListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 175
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;->handleGetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;->handleSetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
