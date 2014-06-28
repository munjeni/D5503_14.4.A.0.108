.class public Lcom/sonymobile/conversations/proxy/ProxyService;
.super Ljava/lang/Object;
.source "ProxyService.java"


# instance fields
.field private mContactsContractProxy:Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

.field private mSettingsSecureProxy:Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;

.field private mTelephonyManagerProxy:Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

.field private mTelephonyProviderProxy:Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

.field private mTelephonyServiceStateProxy:Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactsContractProxy()Lcom/sonymobile/conversations/proxy/IContactsContractProxy;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mContactsContractProxy:Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/sonymobile/conversations/proxy/ContactsContractProxy;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/ContactsContractProxy;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mContactsContractProxy:Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mContactsContractProxy:Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

    return-object v0
.end method

.method public getSettingsSecureProxy()Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mSettingsSecureProxy:Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/sonymobile/conversations/proxy/SettingsSecureProxy;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/SettingsSecureProxy;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mSettingsSecureProxy:Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mSettingsSecureProxy:Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;

    return-object v0
.end method

.method public getTelephonyManagerProxy()Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyManagerProxy:Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyManagerProxy:Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyManagerProxy:Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    return-object v0
.end method

.method public getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyProviderProxy:Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/sonymobile/conversations/proxy/TelephonyProviderProxy;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/TelephonyProviderProxy;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyProviderProxy:Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyProviderProxy:Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    return-object v0
.end method

.method public getTelephonyServiceStateProxy()Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyServiceStateProxy:Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/sonymobile/conversations/proxy/TelephonyServiceStateProxy;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/TelephonyServiceStateProxy;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyServiceStateProxy:Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyServiceStateProxy:Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;

    return-object v0
.end method

.method public setContactsContractProxy(Lcom/sonymobile/conversations/proxy/IContactsContractProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mContactsContractProxy:Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

    .line 51
    return-void
.end method

.method public setSettingsSecureProxy(Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mSettingsSecureProxy:Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;

    .line 40
    return-void
.end method

.method public setTelephonyManagerProxy(Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyManagerProxy:Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    .line 73
    return-void
.end method

.method public setTelephonyProviderProxy(Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyProviderProxy:Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    .line 62
    return-void
.end method

.method public setTelephonyServiceStateProxy(Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonymobile/conversations/proxy/ProxyService;->mTelephonyServiceStateProxy:Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;

    .line 29
    return-void
.end method
