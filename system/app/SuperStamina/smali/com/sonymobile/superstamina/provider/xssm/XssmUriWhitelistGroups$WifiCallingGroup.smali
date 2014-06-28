.class Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistGroups$WifiCallingGroup;
.super Ljava/lang/Object;
.source "XssmUriWhitelistGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiCallingGroup"
.end annotation


# static fields
.field public static final ICON_URI:Ljava/lang/String; = "com.movial.wificall:mipmap/ic_launcher_wifi_calling"

.field public static final INFO_INTENT_CLS:Ljava/lang/String; = "com.movial.wificall.Questions"

.field public static final INTENT_PKG:Ljava/lang/String; = "com.movial.wificall"

.field public static final LABEL_URI:Ljava/lang/String; = "com.movial.wificall:string/wificalling_label"

.field public static final SETTING_INTENT_CLS:Ljava/lang/String; = "com.movial.wificall.PrefSettings"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPresent(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "packages":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 88
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 89
    .local v3, "nPackagesOk":I
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 91
    .local v5, "pkg":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_0
    array-length v8, v4

    if-ne v3, v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    return v7

    .line 93
    .restart local v5    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method
