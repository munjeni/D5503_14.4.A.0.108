.class public Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
.super Landroid/app/Fragment;
.source "PackageDisplayList.java"


# instance fields
.field private mExecuteWhenLoaded:Ljava/lang/Runnable;

.field private mInternalWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mSortedLaunchablePackages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedOthersPackages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mInternalWhitelist:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Vector;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/Vector;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->sort(Ljava/util/Vector;)V

    return-void
.end method

.method static synthetic access$202(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    .param p1, "x1"    # Ljava/util/Vector;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mSortedLaunchablePackages:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    .param p1, "x1"    # Ljava/util/Vector;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mSortedOthersPackages:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mExecuteWhenLoaded:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkLoaded()V
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mLoaded:Z

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uid list not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-void
.end method

.method private static sort(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "uids":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;"
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$2;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    return-void
.end method


# virtual methods
.method public executeWhenLoaded(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mExecuteWhenLoaded:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public getApps()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->checkLoaded()V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mSortedLaunchablePackages:Ljava/util/Vector;

    return-object v0
.end method

.method public getOthers()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->checkLoaded()V

    .line 143
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mSortedOthersPackages:Ljava/util/Vector;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getInstalledApplications(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 50
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 51
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getInternalWhitelist(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->mInternalWhitelist:Ljava/util/HashSet;

    .line 53
    new-instance v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;Landroid/database/Cursor;Landroid/content/pm/PackageManager;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void
.end method
