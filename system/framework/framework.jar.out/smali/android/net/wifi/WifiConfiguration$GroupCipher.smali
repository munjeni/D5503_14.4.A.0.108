.class public Landroid/net/wifi/WifiConfiguration$GroupCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupCipher"
.end annotation


# static fields
.field public static final CCMP:I = 0x3

.field public static final TKIP:I = 0x2

.field public static final WEP104:I = 0x1

.field public static final WEP40:I = 0x0

.field public static final strings:[Ljava/lang/String;

.field static final strings_with_somc_additions:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "group"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "WEP40"

    aput-object v1, v0, v2

    const-string v1, "WEP104"

    aput-object v1, v0, v3

    const-string v1, "TKIP"

    aput-object v1, v0, v4

    const-string v1, "CCMP"

    aput-object v1, v0, v5

    sput-object v0, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    .line 194
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WEP40"

    aput-object v1, v0, v2

    const-string v1, "WEP104"

    aput-object v1, v0, v3

    const-string v1, "TKIP"

    aput-object v1, v0, v4

    const-string v1, "CCMP"

    aput-object v1, v0, v5

    const-string v1, "SMS4"

    aput-object v1, v0, v6

    sput-object v0, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings_with_somc_additions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
