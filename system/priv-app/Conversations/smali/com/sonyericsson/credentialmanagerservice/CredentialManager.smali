.class public Lcom/sonyericsson/credentialmanagerservice/CredentialManager;
.super Ljava/lang/Object;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVELOPER_SIGNATURE:Ljava/lang/String; = "3082039130820279a003020102020101300d06092a864886f70d01010505003065310b3009060355040613025345312f302d060355040a1326536f6e79204572696373736f6e204d6f62696c6520436f6d6d756e69636174696f6e73204142312530230603550403141c536f6e795f4572696373736f6e5f455f43415f546573745f64633730301e170d3030303130313130353830365a170d3335303130313130353830365a3076310b3009060355040613025345312f302d060355040a1326536f6e79204572696373736f6e204d6f62696c6520436f6d6d756e69636174696f6e73204142313630340603550403142d536f6e795f4572696373736f6e5f455f4170706c69636174696f6e5f5369676e696e675f546573745f6463373030820122300d06092a864886f70d01010105000382010f003082010a0282010100f1842e2c71d57642b7d04cb73b50496ba65b2841415c64d6dedb2075f8c55ea2c0d9a3ffda9121ce71056f19b7adc000f3d4c8c3fda7ded8a2521485bedf61fc6e172fa27e5d474ff89930f55b85e17aff1fe81052c2f24df8c87354826ddc48aba70d4854ad55effba8d98c86548e7a5b0283b8f9b0372d510c2800579bdbd79c45d464d8f0757dc59ba30289383074ebdccbd4872d2cb0427b71b188a876b7ccc547841a5992cea9b9a83812a4b63912903a4d6b0279ede7c601bc8b3575653eaa17c6e80e30d87839f7ef0ab94ddb5131dc4ad597fc87560d4856af2a99189268e5f034ba2904271cf4031fcfe3567ac0221bbc3d63bf592f280b38d99c4d0203010001a33b3039300f0603551d130101ff04053003020100300e0603551d0f0101ff04040302078030160603551d250101ff040c300a06082b06010505070303300d06092a864886f70d01010505000382010100936d52abb931c9a83d03c48d08102a9b543cfde0aec55668e17ea37c4cc5f3196b8f672469a92ed1cd7b1e799300be6015af5a1f8c6d6085f6d48949c6cca0970ce8f671a0448b1b79aa917826bcc76a3b6b9357315e3f90da2d182a5e7731deaa435a3da5df8f861451852f0669da43d6f74e0dc41f2d85cc457cd98035f3ecf795fb902f636e6420c1ffff5c89c18670db6d29193ed58b8e6cf129850b51d84183e3452292c0f0ae09dba334c5ba3864b704e09727b0beef2f20d2d70e2ce3cbc86b8d7be34ae9e7b6a4f8f5219a228c5b25a3f9971f9add33c73787d62e3a9f44037a70b31baf74e95e6b08f3d8826f7057aaa3c2cf414b4d7bb7854c7c5a"

.field private static final DEV_SIGNATURE:Landroid/content/pm/Signature;

.field private static final LIVE_KEY_ID:Ljava/lang/String; = "\u009e[\u0001\u0011\u00e0@\u008b\u00b4\u0005\u00c8\u0019\u00ea\u0007\u0084\u00b6\u009d"

.field private static final TAG:Ljava/lang/String; = "CredentialManager"

.field private static final TEST_KEY_ID:Ljava/lang/String; = "\u0001}\u0003V\u0094\u00b4&z;\u00b8\u00c7[%\u0095\u00a4\u00e7"

.field private static sKey:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mCredMgrService:Lcom/sonyericsson/credentialmanagerservice/ICredentialManagerIpcService;

.field private mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->sKey:Ljava/lang/ref/SoftReference;

    .line 46
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082039130820279a003020102020101300d06092a864886f70d01010505003065310b3009060355040613025345312f302d060355040a1326536f6e79204572696373736f6e204d6f62696c6520436f6d6d756e69636174696f6e73204142312530230603550403141c536f6e795f4572696373736f6e5f455f43415f546573745f64633730301e170d3030303130313130353830365a170d3335303130313130353830365a3076310b3009060355040613025345312f302d060355040a1326536f6e79204572696373736f6e204d6f62696c6520436f6d6d756e69636174696f6e73204142313630340603550403142d536f6e795f4572696373736f6e5f455f4170706c69636174696f6e5f5369676e696e675f546573745f6463373030820122300d06092a864886f70d01010105000382010f003082010a0282010100f1842e2c71d57642b7d04cb73b50496ba65b2841415c64d6dedb2075f8c55ea2c0d9a3ffda9121ce71056f19b7adc000f3d4c8c3fda7ded8a2521485bedf61fc6e172fa27e5d474ff89930f55b85e17aff1fe81052c2f24df8c87354826ddc48aba70d4854ad55effba8d98c86548e7a5b0283b8f9b0372d510c2800579bdbd79c45d464d8f0757dc59ba30289383074ebdccbd4872d2cb0427b71b188a876b7ccc547841a5992cea9b9a83812a4b63912903a4d6b0279ede7c601bc8b3575653eaa17c6e80e30d87839f7ef0ab94ddb5131dc4ad597fc87560d4856af2a99189268e5f034ba2904271cf4031fcfe3567ac0221bbc3d63bf592f280b38d99c4d0203010001a33b3039300f0603551d130101ff04053003020100300e0603551d0f0101ff04040302078030160603551d250101ff040c300a06082b06010505070303300d06092a864886f70d01010505000382010100936d52abb931c9a83d03c48d08102a9b543cfde0aec55668e17ea37c4cc5f3196b8f672469a92ed1cd7b1e799300be6015af5a1f8c6d6085f6d48949c6cca0970ce8f671a0448b1b79aa917826bcc76a3b6b9357315e3f90da2d182a5e7731deaa435a3da5df8f861451852f0669da43d6f74e0dc41f2d85cc457cd98035f3ecf795fb902f636e6420c1ffff5c89c18670db6d29193ed58b8e6cf129850b51d84183e3452292c0f0ae09dba334c5ba3864b704e09727b0beef2f20d2d70e2ce3cbc86b8d7be34ae9e7b6a4f8f5219a228c5b25a3f9971f9add33c73787d62e3a9f44037a70b31baf74e95e6b08f3d8826f7057aaa3c2cf414b4d7bb7854c7c5a"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->DEV_SIGNATURE:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mCredMgrService:Lcom/sonyericsson/credentialmanagerservice/ICredentialManagerIpcService;

    .line 57
    iput-object v0, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    .line 92
    new-instance v0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$1;-><init>(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)V

    iput-object v0, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/SoftReference;

    .prologue
    .line 31
    sput-object p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->sKey:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/credentialmanagerservice/CredentialManager;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/credentialmanagerservice/CredentialManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public static getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->sKey:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->sKey:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "key":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 149
    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static isDevSigned(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 162
    .local v5, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 169
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 170
    .local v6, "sign":Landroid/content/pm/Signature;
    sget-object v8, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->DEV_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v8, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 171
    const/4 v7, 0x1

    .line 174
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sign":Landroid/content/pm/Signature;
    :cond_0
    :goto_1
    return v7

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "CredentialManager"

    const-string v9, "Package name not found. Assuming this is not developer signed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 169
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "sign":Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setCredentialListener(Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    .line 89
    return-void
.end method

.method public startObtainingCredential()V
    .locals 5

    .prologue
    .line 67
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/credentialmanagerservice/ICredentialManagerIpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->isDevSigned(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "com.sonyericsson.conversations.location.ui.LocationEditActivity"

    .line 73
    .local v0, "clsName":Ljava/lang/String;
    :goto_0
    const-string v2, "callingClass"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v2, "callingPackage"

    iget-object v3, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/sonyericsson/credentialmanagerservice/CredentialManager;->mKeyListener:Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sonyericsson/credentialmanagerservice/CredentialManager$CredentialListener;->onKeyObtained(Ljava/lang/String;)V

    .line 83
    :cond_0
    const-string v2, "CredentialManager"

    const-string v3, "Cannot bind to server."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    return-void

    .line 71
    .end local v0    # "clsName":Ljava/lang/String;
    :cond_2
    const-string v0, "com.sonyericsson.conversations.location.ui.LocationActivity"

    goto :goto_0
.end method
