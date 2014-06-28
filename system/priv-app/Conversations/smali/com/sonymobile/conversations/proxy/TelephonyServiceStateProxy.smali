.class Lcom/sonymobile/conversations/proxy/TelephonyServiceStateProxy;
.super Ljava/lang/Object;
.source "TelephonyServiceStateProxy.java"

# interfaces
.implements Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method
