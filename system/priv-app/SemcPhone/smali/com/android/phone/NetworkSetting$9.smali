.class Lcom/android/phone/NetworkSetting$9;
.super Landroid/telephony/PhoneStateListener;
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
    .line 1129
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    .line 1132
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    .line 1133
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneState Listener onCallStateChanged(state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", incomingNumber)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 1135
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1153
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "onCallStateChanged() default"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 1155
    :cond_1
    :goto_0
    return-void

    .line 1138
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1140
    .local v0, "foregroundCallPhoneType":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1142
    .local v1, "ringingPhoneType":I
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_2

    .line 1143
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStateChanged()  fgPhoneType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,ringingPhone(Type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 1146
    :cond_2
    if-eq v0, v5, :cond_1

    if-eq v1, v5, :cond_1

    .line 1148
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
