.class public Lcom/sonymobile/multiuser/MultiUserUtils;
.super Ljava/lang/Object;
.source "MultiUserUtils.java"


# static fields
.field private static final CONVERSATION_LIST_STRING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MultiUserUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/multiuser/MultiUserUtils;->CONVERSATION_LIST_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableApp(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 46
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 49
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v2, v3}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V

    .line 50
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-static {v2, v3}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V

    .line 51
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-static {v2, v3}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V

    .line 52
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v2, v3}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MultiUserUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NameNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static disableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "components"    # [Landroid/content/pm/ComponentInfo;

    .prologue
    .line 26
    if-nez p1, :cond_1

    .line 36
    :cond_0
    return-void

    .line 29
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/pm/ComponentInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 30
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/multiuser/MultiUserUtils;->CONVERSATION_LIST_STRING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 31
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 29
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isOwner()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
