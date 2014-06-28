.class public Landroid/net/wifi/WifiConfiguration$PairwiseCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PairwiseCipher"
.end annotation


# static fields
.field public static final CCMP:I = 0x2

.field public static final NONE:I = 0x0

.field public static final TKIP:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field static final strings_with_somc_additions:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "pairwise"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v2

    const-string v1, "TKIP"

    aput-object v1, v0, v3

    const-string v1, "CCMP"

    aput-object v1, v0, v4

    sput-object v0, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    .line 165
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v2

    const-string v1, "TKIP"

    aput-object v1, v0, v3

    const-string v1, "CCMP"

    aput-object v1, v0, v4

    const-string v1, "SMS4"

    aput-object v1, v0, v5

    sput-object v0, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings_with_somc_additions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
