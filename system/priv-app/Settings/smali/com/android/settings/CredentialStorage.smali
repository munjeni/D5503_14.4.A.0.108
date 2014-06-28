.class public final Lcom/android/settings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CredentialStorage$1;,
        Lcom/android/settings/CredentialStorage$UnlockDialog;,
        Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings/CredentialStorage$ResetDialog;
    }
.end annotation


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    .line 427
    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/CredentialStorage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/CredentialStorage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method private checkKeyGuardQuality()Z
    .locals 2

    .prologue
    .line 194
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 195
    .local v0, "quality":I
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard()Z
    .locals 6

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 392
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x1

    const v4, 0x7f0b06d8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f0b06d9

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 396
    .local v0, "launched":Z
    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-object v0, Lcom/android/settings/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 154
    :pswitch_1
    new-instance v0, Lcom/android/settings/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->installIfAvailable()V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 15

    .prologue
    const/16 v13, 0x3f2

    const/4 v10, 0x1

    const/4 v14, -0x1

    .line 216
    iget-object v11, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 218
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 220
    const-string v11, "install_as_uid"

    invoke-virtual {v0, v11, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 222
    .local v8, "uid":I
    const-string v11, "user_private_key_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 223
    const-string v11, "user_private_key_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "key":Ljava/lang/String;
    const-string v11, "user_private_key_data"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 226
    .local v9, "value":[B
    const/4 v5, 0x1

    .line 227
    .local v5, "flags":I
    if-ne v8, v13, :cond_0

    invoke-direct {p0, v9}, Lcom/android/settings/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 230
    const-string v11, "CredentialStorage"

    const-string v12, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v5, 0x0

    .line 234
    :cond_0
    iget-object v11, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v7, v9, v8, v5}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_2

    .line 235
    const-string v10, "CredentialStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to install "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " as user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "flags":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "uid":I
    .end local v9    # "value":[B
    :cond_1
    :goto_0
    return-void

    .line 240
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "uid":I
    :cond_2
    if-ne v8, v13, :cond_3

    const/4 v5, 0x0

    .line 242
    .restart local v5    # "flags":I
    :goto_1
    const-string v11, "user_certificate_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 243
    const-string v11, "user_certificate_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "certName":Ljava/lang/String;
    const-string v11, "user_certificate_data"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 246
    .local v3, "certData":[B
    iget-object v11, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v4, v3, v8, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_4

    .line 247
    const-string v10, "CredentialStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to install "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " as user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "certData":[B
    .end local v4    # "certName":Ljava/lang/String;
    .end local v5    # "flags":I
    :cond_3
    move v5, v10

    .line 240
    goto :goto_1

    .line 252
    .restart local v5    # "flags":I
    :cond_4
    const-string v11, "ca_certificates_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 253
    const-string v11, "ca_certificates_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "caListName":Ljava/lang/String;
    const-string v11, "ca_certificates_data"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 256
    .local v1, "caListData":[B
    iget-object v11, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v2, v1, v8, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_5

    .line 257
    const-string v10, "CredentialStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to install "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " as user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    .end local v1    # "caListData":[B
    .end local v2    # "caListName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 264
    .restart local v7    # "key":Ljava/lang/String;
    const-string v11, "WAPIUSRPKEY_"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "WAPIUSRCERT_"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "WAPIASCERT_"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 267
    :cond_7
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 268
    .restart local v3    # "certData":[B
    iget-object v11, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v7, v3, v8, v10}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_8

    .line 269
    const-string v10, "CredentialStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to install "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 272
    :cond_8
    const-string v11, "CredentialStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Installed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 276
    .end local v3    # "certData":[B
    .end local v7    # "key":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, v14}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_0
.end method

.method private isHardwareBackedKey([B)Z
    .locals 7
    .param p1, "keyData"    # [B

    .prologue
    .line 200
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 201
    .local v2, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 202
    .local v4, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "algId":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "algName":Ljava/lang/String;
    invoke-static {v1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 208
    .end local v0    # "algId":Ljava/lang/String;
    .end local v1    # "algName":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_0
    return v5

    .line 206
    :catch_0
    move-exception v3

    .line 207
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "CredentialStorage"

    const-string v6, "Failed to parse key data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 401
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 406
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 407
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 408
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 419
    .end local v0    # "password":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 125
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    new-instance v2, Lcom/android/settings/CredentialStorage$ResetDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    .line 137
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v2, "com.android.credentials.INSTALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.certinstaller"

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0
.end method
