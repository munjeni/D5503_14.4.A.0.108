.class public Lcom/sonymobile/superstamina/provider/estimates/EstimatesContentProviderHelper;
.super Ljava/lang/Object;
.source "EstimatesContentProviderHelper.java"


# static fields
.field public static final BATTERY_WITHOUT_STAMINA:Ljava/lang/String; = "xssm/estimates/battery_without_xssm"

.field public static final BATTERY_WITH_STAMINA:Ljava/lang/String; = "xssm/estimates/battery_with_xssm"

.field private static final DEFAULT_BATTERY_CAPACITY:I = 0x7d0

.field public static final ESTIMATES:Ljava/lang/String; = "xssm/estimates"

.field public static final KEY_POWER_ESTIMATES:Ljava/lang/String; = "power_estimates"

.field public static final STANDBY_WITHOUT_STAMINA:Ljava/lang/String; = "xssm/estimates/standby_without_xssm"

.field public static final STANDBY_WITH_STAMINA:Ljava/lang/String; = "xssm/estimates/standby_with_xssm"

.field public static final VALUES:Ljava/lang/String; = "xssm/estimates/values"

.field public static final VALUES_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/estimates/values"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/provider/estimates/EstimatesContentProviderHelper;->VALUES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;)V
    .locals 6
    .param p1, "provider"    # Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v2

    double-to-int v0, v2

    .line 53
    .local v0, "capacity":I
    if-nez v0, :cond_0

    .line 54
    const/16 v0, 0x7d0

    .line 57
    :cond_0
    new-instance v2, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriStandbyTime;

    const-string v3, "xssm/estimates/standby_with_xssm"

    invoke-direct {v2, v1, v3, v5, v0}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriStandbyTime;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    invoke-virtual {p1, v2}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 59
    new-instance v2, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriStandbyTime;

    const-string v3, "xssm/estimates/standby_without_xssm"

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriStandbyTime;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    invoke-virtual {p1, v2}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 62
    new-instance v2, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriBatteryTime;

    const-string v3, "xssm/estimates/battery_with_xssm"

    invoke-direct {v2, v1, v3, v5, v0}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriBatteryTime;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    invoke-virtual {p1, v2}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 64
    new-instance v2, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriBatteryTime;

    const-string v3, "xssm/estimates/battery_without_xssm"

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriBatteryTime;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    invoke-virtual {p1, v2}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 67
    new-instance v2, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;

    const-string v3, "xssm/estimates/values"

    invoke-direct {v2, v1, v3}, Lcom/sonymobile/superstamina/provider/estimates/EstimatesUriValues;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->registerUri(Lcom/sonymobile/superstamina/provider/IUriHandler;)V

    .line 68
    return-void
.end method

.method public static getBatteryLevel(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "level":I
    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "batteryState":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 82
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    :cond_0
    return v1
.end method

.method public static getHours(III)I
    .locals 2
    .param p0, "perc"    # I
    .param p1, "mA"    # I
    .param p2, "batteryCapacity"    # I

    .prologue
    .line 71
    mul-int v1, p2, p0

    div-int/lit8 v0, v1, 0x64

    .line 74
    .local v0, "remaining":I
    div-int/lit8 v1, p1, 0x2

    add-int/2addr v1, v0

    div-int/2addr v1, p1

    return v1
.end method
