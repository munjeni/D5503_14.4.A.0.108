.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public blocked:Z

.field public disabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public enabled:I

.field public enabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public installed:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public runtimeSkinPaths:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public stopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 48
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->blocked:Z

    .line 49
    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 3
    .param p1, "o"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 54
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 55
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 56
    iget v0, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 57
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->blocked:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->blocked:Z

    .line 58
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    .line 61
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    .line 63
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    :cond_0
    iput-object v1, p0, Landroid/content/pm/PackageUserState;->runtimeSkinPaths:Ljava/util/LinkedHashSet;

    .line 65
    return-void

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 61
    goto :goto_1
.end method
