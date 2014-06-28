.class public Landroid/net/wifi/WifiWapiConfig;
.super Landroid/net/wifi/WifiEnterpriseConfig;
.source "WifiWapiConfig.java"


# static fields
.field private static final AS_CERT_KEY:Ljava/lang/String; = "as_cert_uri"

.field private static final AS_CERT_PREFIX:Ljava/lang/String; = "keystore://WAPIASCERT_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiWapiConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final PSK_KEY:Ljava/lang/String; = "wapi_psk"

.field private static final PSK_TYPE_KEY:Ljava/lang/String; = "wapi_key_type"

.field private static final USER_CERT_KEY:Ljava/lang/String; = "user_cert_uri"

.field private static final USER_CERT_PREFIX:Ljava/lang/String; = "keystore://WAPIUSRCERT_"

.field private static final USER_KEY_PREFIX:Ljava/lang/String; = "keystore://WAPIUSRPKEY_"

.field private static final USER_PRIV_KEY:Ljava/lang/String; = "user_key_uri"


# instance fields
.field private psk:Ljava/lang/String;

.field private pskType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Landroid/net/wifi/WifiWapiConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiWapiConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiWapiConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiWapiConfig;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/WifiWapiConfig;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 80
    invoke-virtual {p1}, Landroid/net/wifi/WifiWapiConfig;->getWapiPskType()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWapiConfig;->pskType:I

    .line 81
    invoke-virtual {p1}, Landroid/net/wifi/WifiWapiConfig;->getWapiPsk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWapiConfig;->psk:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiWapiConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWapiConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Landroid/net/wifi/WifiWapiConfig;->psk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiWapiConfig;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWapiConfig;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Landroid/net/wifi/WifiWapiConfig;->pskType:I

    return p1
.end method

.method static getSupplicantKeys()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "as_cert_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "user_cert_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "user_key_uri"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getWapiAsCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    const-string v0, "as_cert_uri"

    const-string v1, "keystore://WAPIASCERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWapiPsk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/net/wifi/WifiWapiConfig;->psk:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiPskType()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Landroid/net/wifi/WifiWapiConfig;->pskType:I

    return v0
.end method

.method public getWapiUserCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    const-string/jumbo v0, "user_cert_uri"

    const-string v1, "keystore://WAPIUSRCERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWapiUserKeyAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    const-string/jumbo v0, "user_key_uri"

    const-string v1, "keystore://WAPIUSRPKEY_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setWapiAsCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "as_cert_uri"

    const-string v1, "keystore://WAPIASCERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setWapiPsk(Ljava/lang/String;)V
    .locals 0
    .param p1, "wapiPsk"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Landroid/net/wifi/WifiWapiConfig;->psk:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setWapiPskType(I)V
    .locals 0
    .param p1, "wapiPskType"    # I

    .prologue
    .line 191
    iput p1, p0, Landroid/net/wifi/WifiWapiConfig;->pskType:I

    .line 192
    return-void
.end method

.method public setWapiUserCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string/jumbo v0, "user_cert_uri"

    const-string v1, "keystore://WAPIUSRCERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setWapiUserKeyAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string/jumbo v0, "user_key_uri"

    const-string v1, "keystore://WAPIUSRPKEY_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 220
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 224
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "wapi_psk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWapiConfig;->psk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string/jumbo v3, "wapi_key_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWapiConfig;->pskType:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiWapiConfig;->getWapiPsk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/net/wifi/WifiWapiConfig;->getWapiPskType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
