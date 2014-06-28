.class public Lcom/sonymobile/conversations/proxy/ProxyManager;
.super Ljava/lang/Object;
.source "ProxyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "conversation_proxy_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/conversations/proxy/ProxyService;

    return-object v0
.end method

.method public static getProxyService(Landroid/content/Context;)Lcom/sonymobile/conversations/proxy/ProxyService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "conversation_proxy_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/conversations/proxy/ProxyService;

    return-object v0
.end method
