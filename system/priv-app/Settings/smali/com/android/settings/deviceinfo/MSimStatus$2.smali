.class Lcom/android/settings/deviceinfo/MSimStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MSimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MSimStatus;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    # setter for: Lcom/android/settings/deviceinfo/MSimStatus;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->access$202(Lcom/android/settings/deviceinfo/MSimStatus;I)I

    .line 227
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    # invokes: Lcom/android/settings/deviceinfo/MSimStatus;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MSimStatus;->access$300(Lcom/android/settings/deviceinfo/MSimStatus;)V

    .line 228
    iget v0, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimStatus;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    # invokes: Lcom/android/settings/deviceinfo/MSimStatus;->updateNetworkType(I)V
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->access$400(Lcom/android/settings/deviceinfo/MSimStatus;I)V

    .line 232
    :cond_0
    return-void
.end method
