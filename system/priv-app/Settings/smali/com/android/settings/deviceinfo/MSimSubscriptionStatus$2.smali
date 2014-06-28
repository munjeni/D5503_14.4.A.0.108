.class Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 276
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->access$100(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V

    .line 277
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 271
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 272
    return-void
.end method
