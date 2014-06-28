.class public Landroid/net/wifi/WifiConfiguration$KeyMgmt;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMgmt"
.end annotation


# static fields
.field public static final IEEE8021X:I = 0x3

.field public static final NONE:I = 0x0

.field public static final WAPI_CERT:I = 0x6

.field public static final WAPI_PSK:I = 0x5

.field public static final WPA2_PSK:I = 0x4

.field public static final WPA_EAP:I = 0x2

.field public static final WPA_PSK:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field static final strings_with_somc_additions:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "key_mgmt"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v2

    const-string v1, "WPA_PSK"

    aput-object v1, v0, v3

    const-string v1, "WPA_EAP"

    aput-object v1, v0, v4

    const-string v1, "IEEE8021X"

    aput-object v1, v0, v5

    const-string v1, "WPA2_PSK"

    aput-object v1, v0, v6

    sput-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v2

    const-string v1, "WPA_PSK"

    aput-object v1, v0, v3

    const-string v1, "WPA_EAP"

    aput-object v1, v0, v4

    const-string v1, "IEEE8021X"

    aput-object v1, v0, v5

    const-string v1, "WPA2_PSK"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "WAPI_PSK"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WAPI_CERT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings_with_somc_additions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
