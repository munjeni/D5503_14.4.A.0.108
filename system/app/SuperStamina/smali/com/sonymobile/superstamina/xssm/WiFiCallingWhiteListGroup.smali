.class public Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;
.super Ljava/lang/Object;
.source "WiFiCallingWhiteListGroup.java"

# interfaces
.implements Lcom/sonymobile/superstamina/xssm/WhiteListGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;
    }
.end annotation


# static fields
.field private static final WHITELIST_GROUP_URI:Landroid/net/Uri;

.field private static final WIFI_CALLING_CELL_ONLY:Ljava/lang/String; = "CELL_ONLY"

.field private static final WIFI_CALLING_CONTENT_URI:Landroid/net/Uri;

.field private static final WIFI_CALLING_QUERY_PROJECTION:[Ljava/lang/String;

.field private static final WIFI_CALLING_QUERY_SLECTION:Ljava/lang/String; = "name = ?"

.field private static final WIFI_CALLING_QUERY_SLECTION_ARGS:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeaturePresent:Z

.field private mPackages:[Ljava/lang/String;

.field private mWhiteListController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

.field private mWifiCallingContentObserver:Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/whitelist_groups"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WHITELIST_GROUP_URI:Landroid/net/Uri;

    .line 24
    const-string v0, "content://ipprovider/ipphonesettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WIFI_CALLING_CONTENT_URI:Landroid/net/Uri;

    .line 29
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WIFI_CALLING_QUERY_PROJECTION:[Ljava/lang/String;

    .line 35
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CELL_ONLY"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WIFI_CALLING_QUERY_SLECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/superstamina/xssm/WhitelistController;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "whiteListController"    # Lcom/sonymobile/superstamina/xssm/WhitelistController;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v7, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mFeaturePresent:Z

    .line 121
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mWhiteListController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    .line 122
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mContext:Landroid/content/Context;

    .line 124
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WHITELIST_GROUP_URI:Landroid/net/Uri;

    const-string v3, "group = ?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "wificalling"

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mFeaturePresent:Z

    .line 132
    const-string v0, "packages"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mPackages:[Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->registerContentObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->isWifiCallingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->addPackagesToWhiteList()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->removePackagesFromWhiteList()V

    return-void
.end method

.method private addPackagesToWhiteList()V
    .locals 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mPackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 146
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mWhiteListController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    invoke-virtual {v4, v3}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->addPackageToOperatorWhitelist(Ljava/lang/String;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isWifiCallingEnabled()Z
    .locals 10

    .prologue
    .line 66
    const/4 v7, 0x0

    .line 67
    .local v7, "enabled":Z
    const/4 v6, 0x0

    .line 68
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 70
    .local v9, "val":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WIFI_CALLING_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WIFI_CALLING_QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "name = ?"

    sget-object v4, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WIFI_CALLING_QUERY_SLECTION_ARGS:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WIFI_CALLING_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 77
    .local v8, "index":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing column CELL_ONLY in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WIFI_CALLING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v8    # "index":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 81
    .restart local v8    # "index":I
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 85
    .end local v8    # "index":I
    :cond_2
    if-eqz v6, :cond_3

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_3
    if-eqz v9, :cond_4

    .line 91
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 93
    const/4 v7, 0x0

    .line 100
    :cond_4
    :goto_0
    return v7

    .line 96
    :cond_5
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;-><init>(Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mWifiCallingContentObserver:Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;

    .line 105
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->WIFI_CALLING_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mWifiCallingContentObserver:Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup$WifiCallingConentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    return-void
.end method

.method private removePackagesFromWhiteList()V
    .locals 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mPackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 152
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mWhiteListController:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    invoke-virtual {v4, v3}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->removePackageFromOperatorWhitelist(Ljava/lang/String;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getPackages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mFeaturePresent:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->addPackagesToWhiteList()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->removePackagesFromWhiteList()V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mFeaturePresent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFeaturePresent()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;->mFeaturePresent:Z

    return v0
.end method
