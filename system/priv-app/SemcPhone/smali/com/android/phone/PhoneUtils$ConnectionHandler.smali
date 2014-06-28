.class Lcom/android/phone/PhoneUtils$ConnectionHandler;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneUtils$1;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 148
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 150
    :pswitch_0
    sget-boolean v9, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v9, :cond_0

    .line 151
    const-string v9, "ConnectionHandler: updating mute state for each connection"

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/CallManager;

    .line 161
    .local v3, "cm":Lcom/android/internal/telephony/CallManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v7, "fgConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 163
    .local v6, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_1

    .line 164
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 167
    .end local v6    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 168
    .local v4, "cn":Lcom/android/internal/telephony/Connection;
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    .line 169
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v4, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 176
    .end local v4    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, "bgConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 178
    .local v1, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_5

    .line 179
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 182
    .end local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 183
    .restart local v4    # "cn":Lcom/android/internal/telephony/Connection;
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7

    .line 184
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v4, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 192
    .end local v4    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_8
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 193
    .local v5, "cnlist":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 194
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 195
    .restart local v4    # "cn":Lcom/android/internal/telephony/Connection;
    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 196
    sget-boolean v9, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v9, :cond_a

    .line 197
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connection \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' not accounted for, removing."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 199
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 209
    .end local v4    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_b
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v9, v10, :cond_c

    .line 210
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 212
    :cond_c
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    const/4 v10, 0x0

    # invokes: Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->access$200(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
