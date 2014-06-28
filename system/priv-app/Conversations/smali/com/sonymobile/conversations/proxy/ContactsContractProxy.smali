.class Lcom/sonymobile/conversations/proxy/ContactsContractProxy;
.super Ljava/lang/Object;
.source "ContactsContractProxy.java"

# interfaces
.implements Lcom/sonymobile/conversations/proxy/IContactsContractProxy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentMultiVCardUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    return-object v0
.end method
