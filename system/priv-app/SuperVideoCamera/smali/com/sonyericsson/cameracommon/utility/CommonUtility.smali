.class public Lcom/sonyericsson/cameracommon/utility/CommonUtility;
.super Ljava/lang/Object;
.source "CommonUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method private static getApplicationType(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 116
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_3

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 118
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    .line 119
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 120
    .local v1, "flags":I
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_0

    .line 122
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->UPDATED_SYSTEM_APP:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    .line 140
    .end local v1    # "flags":I
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 123
    .restart local v1    # "flags":I
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    .line 125
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->SYSTEM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    goto :goto_0

    .line 128
    :cond_1
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    goto :goto_0

    .line 131
    .end local v1    # "flags":I
    :cond_2
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t get packeage info. assume user app."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    goto :goto_0

    .line 135
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t get packeage manager. assume user app."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t get packeage info. assume user app."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    goto :goto_0
.end method

.method public static isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivityAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isMirroringRequired(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, "result":Z
    if-nez p0, :cond_0

    move v2, v1

    .line 68
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 63
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->capturing_mode_selector_bidicheck_string:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "checkString":Ljava/lang/String;
    new-instance v3, Ljava/text/Bidi;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 66
    .local v3, "temp":Ljava/text/Bidi;
    invoke-virtual {v3}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v1

    move v2, v1

    .line 68
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public static isPreinstalledApp(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->getApplicationType(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->SYSTEM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->getApplicationType(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static removeExcludeItemsFromList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "srcList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p1, "excludingItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .local v0, "dst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 42
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 43
    .local v3, "packagename":Ljava/lang/String;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packagename":Ljava/lang/String;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v0
.end method
