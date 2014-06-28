.class Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPoint$1;,
        Lcom/android/settings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final STATE_HS20:[I

.field private static final STATE_HS20_LIMITED:[I

.field private static final STATE_HS20_SECURED:[I

.field private static final STATE_HS20_SECURED_AND_LIMITED:[I

.field private static final STATE_LIMITED:[I

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static final STATE_SECURED_AND_LIMITED:[I


# instance fields
.field bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mHs2OperatorFriendlyName:Ljava/lang/String;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mIsHotspot2:Z

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private final mWapiEnabled:Z

.field networkId:I

.field noAutoConnect:I

.field pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

.field readOnly:Z

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 55
    new-array v0, v3, [I

    const v1, 0x7f010026

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_LIMITED:[I

    .line 56
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED_AND_LIMITED:[I

    .line 61
    new-array v0, v3, [I

    const v1, 0x7f010027

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_HS20:[I

    .line 65
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_HS20_SECURED:[I

    .line 70
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_HS20_LIMITED:[I

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_HS20_SECURED_AND_LIMITED:[I

    .line 81
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010026
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x7f010027
        0x7f010000
    .end array-data

    .line 70
    :array_2
    .array-data 4
        0x7f010027
        0x7f010026
    .end array-data

    .line 75
    :array_3
    .array-data 4
        0x7f010027
        0x7f010000
        0x7f010026
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->readOnly:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->noAutoConnect:I

    .line 107
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 115
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mHs2OperatorFriendlyName:Ljava/lang/String;

    .line 231
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 232
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 233
    invoke-static {p1}, Lcom/android/settings/wifi/WapiUtils;->isWapiEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mWapiEnabled:Z

    .line 234
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 235
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->readOnly:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->noAutoConnect:I

    .line 107
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 115
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mHs2OperatorFriendlyName:Ljava/lang/String;

    .line 223
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 224
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 225
    invoke-static {p1}, Lcom/android/settings/wifi/WapiUtils;->isWapiEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mWapiEnabled:Z

    .line 226
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 227
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->readOnly:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->noAutoConnect:I

    .line 107
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 115
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mHs2OperatorFriendlyName:Ljava/lang/String;

    .line 239
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 241
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 245
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 249
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 250
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 253
    :cond_2
    invoke-static {p1}, Lcom/android/settings/wifi/WapiUtils;->isWapiEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mWapiEnabled:Z

    .line 254
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 255
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 194
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 195
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 196
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 197
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 204
    :goto_0
    return-object v2

    .line 198
    :cond_0
    if-eqz v1, :cond_1

    .line 199
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 200
    :cond_1
    if-eqz v0, :cond_2

    .line 201
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 203
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 137
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x5

    .line 149
    :goto_0
    return v0

    .line 141
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    const/4 v0, 0x2

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    const/4 v0, 0x3

    goto :goto_0

    .line 149
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 125
    goto :goto_0

    .line 127
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    const/4 v0, 0x4

    goto :goto_0

    .line 130
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    .line 131
    goto :goto_0

    .line 133
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static isLocalLinkAddress(Landroid/net/wifi/WifiInfo;)Z
    .locals 2
    .param p0, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 212
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    return v1
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 281
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 282
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 283
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 284
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 285
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->readOnly:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->readOnly:Z

    .line 286
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->noAutoConnect:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->noAutoConnect:I

    .line 287
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 288
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 289
    return-void

    .line 281
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 292
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 293
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 294
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 295
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 296
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 297
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 298
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 299
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 300
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 303
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[HS20]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    .line 304
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->hs2Info:Landroid/net/wifi/Hs2Info;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->hs2Info:Landroid/net/wifi/Hs2Info;

    iget-object v0, v0, Landroid/net/wifi/Hs2Info;->operatorFriendlyName:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mHs2OperatorFriendlyName:Ljava/lang/String;

    .line 306
    return-void

    .line 295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 459
    const/4 v1, 0x0

    .line 460
    .local v1, "profileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->credential:Landroid/net/wifi/WifiCredential;

    if-eqz v4, :cond_0

    .line 461
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->credential:Landroid/net/wifi/WifiCredential;

    invoke-virtual {v4}, Landroid/net/wifi/WifiCredential;->getProfileName()Ljava/lang/String;

    move-result-object v1

    .line 463
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 466
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v4, v6, :cond_2

    .line 467
    iget-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 468
    const v4, 0x7f0b0075

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 529
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 485
    :pswitch_0
    const v4, 0x7f0b02dc

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 475
    :pswitch_1
    const v4, 0x7f0b02de

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 479
    :pswitch_2
    const v4, 0x7f0b02dd

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 482
    :pswitch_3
    const v4, 0x7f0b02df

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 487
    :cond_2
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_3

    .line 488
    const v4, 0x7f0b02e0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 489
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v4, :cond_5

    .line 490
    iget-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_4

    .line 491
    const v4, 0x7f0b0074

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->hasLimitedConnectivity()Z

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 498
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v3, "summary":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_6

    .line 500
    const v4, 0x7f0b02db

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_6
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v4, :cond_7

    .line 505
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 506
    const v4, 0x7f0b02e3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "securityStrFormat":Ljava/lang/String;
    :goto_1
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .end local v2    # "securityStrFormat":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v4, :cond_8

    .line 514
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 515
    const v4, 0x7f0b02e1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_8
    :goto_2
    iget-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    if-eqz v4, :cond_c

    .line 522
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_b

    const v4, 0x7f0b0077

    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 508
    :cond_9
    const v4, 0x7f0b02e4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "securityStrFormat":Ljava/lang/String;
    goto :goto_1

    .line 517
    .end local v2    # "securityStrFormat":Ljava/lang/String;
    :cond_a
    const v4, 0x7f0b02e2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 522
    :cond_b
    const v4, 0x7f0b0073

    goto :goto_3

    .line 526
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 445
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 446
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 448
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 450
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v4, 0x7fffffff

    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 337
    instance-of v3, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v1, p1

    .line 340
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 342
    .local v1, "other":Lcom/android/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    .line 343
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    .line 346
    :cond_3
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-eq v3, v4, :cond_4

    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_4

    move v0, v2

    goto :goto_0

    .line 347
    :cond_4
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_0

    .line 350
    :cond_5
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v2, :cond_6

    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_6

    move v0, v2

    .line 351
    goto :goto_0

    .line 352
    :cond_6
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_7

    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_0

    .line 356
    :cond_7
    iget v2, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 357
    .local v0, "difference":I
    if-nez v0, :cond_0

    .line 361
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 366
    instance-of v1, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 367
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 537
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 542
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getHs2OperatorFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mHs2OperatorFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 427
    const/4 v0, -0x1

    .line 429
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "concise"    # Z

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 189
    if-eqz p1, :cond_8

    const-string v1, ""

    :goto_0
    return-object v1

    .line 160
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0b02ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b02f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 163
    :pswitch_1
    sget-object v1, Lcom/android/settings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 175
    if-eqz p1, :cond_4

    const v1, 0x7f0b02e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0b02e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0b02ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 168
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0b02e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0b02ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 171
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0b02e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0b02ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 175
    :cond_4
    const v1, 0x7f0b02f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 179
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0b02e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0b02ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 182
    :pswitch_6
    if-eqz p1, :cond_6

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 185
    :pswitch_7
    if-eqz p1, :cond_7

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 189
    :cond_8
    const v1, 0x7f0b02eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 163
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method hasLimitedConnectivity()Z
    .locals 2

    .prologue
    .line 217
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->isLocalLinkAddress(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 374
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 375
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 376
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 377
    return v0
.end method

.method isVisible()Z
    .locals 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mWapiEnabled:Z

    if-nez v0, :cond_1

    .line 264
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 310
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 311
    const v1, 0x7f080111

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 312
    .local v0, "signal":Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 316
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v4, [I

    const v3, 0x7f01002c

    aput v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_4

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->hasLimitedConnectivity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_HS20_SECURED_AND_LIMITED:[I

    :goto_1
    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED_AND_LIMITED:[I

    goto :goto_1

    .line 323
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_HS20_SECURED:[I

    :goto_2
    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    goto :goto_2

    .line 326
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->hasLimitedConnectivity()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 327
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_HS20_LIMITED:[I

    :goto_3
    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_LIMITED:[I

    goto :goto_3

    .line 329
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_HS20:[I

    :goto_4
    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_4
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 273
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 274
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "reorder":Z
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 409
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 410
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 411
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 412
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 413
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 420
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 423
    :cond_1
    return-void

    .line 409
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 414
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 415
    const/4 v0, 0x1

    .line 416
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 417
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 418
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 382
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 384
    .local v0, "oldLevel":I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 386
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 390
    .end local v0    # "oldLevel":I
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 391
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 395
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[HS20]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsHotspot2:Z

    .line 396
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->hs2Info:Landroid/net/wifi/Hs2Info;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->hs2Info:Landroid/net/wifi/Hs2Info;

    iget-object v1, v1, Landroid/net/wifi/Hs2Info;->operatorFriendlyName:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mHs2OperatorFriendlyName:Ljava/lang/String;

    .line 399
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 400
    const/4 v1, 0x1

    .line 402
    :goto_1
    return v1

    .line 396
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 402
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
