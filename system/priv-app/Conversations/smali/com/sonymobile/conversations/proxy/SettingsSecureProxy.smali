.class Lcom/sonymobile/conversations/proxy/SettingsSecureProxy;
.super Ljava/lang/Object;
.source "SettingsSecureProxy.java"

# interfaces
.implements Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "mobile_data"

    return-object v0
.end method
