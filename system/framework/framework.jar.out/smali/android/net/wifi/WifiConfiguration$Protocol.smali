.class public Landroid/net/wifi/WifiConfiguration$Protocol;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final RSN:I = 0x1

.field public static final WAPI:I = 0x2

.field public static final WPA:I = 0x0

.field public static final strings:[Ljava/lang/String;

.field static final strings_with_somc_additions:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "proto"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "WPA"

    aput-object v1, v0, v2

    const-string v1, "RSN"

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WPA"

    aput-object v1, v0, v2

    const-string v1, "RSN"

    aput-object v1, v0, v3

    const-string v1, "WAPI"

    aput-object v1, v0, v4

    sput-object v0, Landroid/net/wifi/WifiConfiguration$Protocol;->strings_with_somc_additions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
