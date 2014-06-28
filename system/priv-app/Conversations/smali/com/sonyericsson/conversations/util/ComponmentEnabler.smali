.class public Lcom/sonyericsson/conversations/util/ComponmentEnabler;
.super Ljava/lang/Object;
.source "ComponmentEnabler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponmentEnabler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "receiverClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .line 90
    const-class v4, Lcom/sonyericsson/conversations/util/ComponmentEnabler;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 91
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 92
    .local v2, "status":Z
    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 96
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    monitor-exit v4

    return v2

    .line 94
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "status":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getProviderEnabledState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 100
    const-class v3, Lcom/sonyericsson/conversations/util/ComponmentEnabler;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 101
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 102
    .local v1, "status":Z
    if-eqz v0, :cond_0

    .line 103
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 105
    :cond_0
    :goto_0
    monitor-exit v3

    return v1

    :cond_1
    move v1, v2

    .line 103
    goto :goto_0

    .line 100
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "status":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized setComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "newEnabledStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "receiverClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 43
    const-class v6, Lcom/sonyericsson/conversations/util/ComponmentEnabler;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 44
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 45
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-ne v7, v1, :cond_1

    move v2, v1

    .line 48
    .local v2, "oldEnabledStatus":Z
    :goto_0
    if-eq v2, p2, :cond_0

    .line 49
    if-eqz p2, :cond_2

    .line 51
    .local v1, "enabledState":I
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v3, v0, v1, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 54
    const-string v5, "Conversations"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    if-eqz p2, :cond_3

    const-string v4, "enabled"

    .line 56
    .local v4, "state":Ljava/lang/String;
    :goto_2
    const-string v5, "ComponmentEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Componment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "enabledState":I
    .end local v2    # "oldEnabledStatus":Z
    .end local v4    # "state":Ljava/lang/String;
    :cond_0
    monitor-exit v6

    return-void

    .line 46
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "oldEnabledStatus":Z
    :cond_2
    move v1, v5

    .line 49
    goto :goto_1

    .line 55
    .restart local v1    # "enabledState":I
    :cond_3
    :try_start_1
    const-string v4, "disabled"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 43
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "enabledState":I
    .end local v2    # "oldEnabledStatus":Z
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized setComponmentEnabledState(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverComponentName"    # Ljava/lang/String;
    .param p2, "newEnabledStatus"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 65
    const-class v6, Lcom/sonyericsson/conversations/util/ComponmentEnabler;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 66
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 67
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-ne v7, v1, :cond_1

    move v2, v1

    .line 70
    .local v2, "oldEnabledStatus":Z
    :goto_0
    if-eq v2, p2, :cond_0

    .line 71
    if-eqz p2, :cond_2

    .line 73
    .local v1, "enabledState":I
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v3, v0, v1, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 76
    const-string v5, "Conversations"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    if-eqz p2, :cond_3

    const-string v4, "enabled"

    .line 78
    .local v4, "state":Ljava/lang/String;
    :goto_2
    const-string v5, "ComponmentEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Componment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "enabledState":I
    .end local v2    # "oldEnabledStatus":Z
    .end local v4    # "state":Ljava/lang/String;
    :cond_0
    monitor-exit v6

    return-void

    .line 68
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "oldEnabledStatus":Z
    :cond_2
    move v1, v5

    .line 71
    goto :goto_1

    .line 77
    .restart local v1    # "enabledState":I
    :cond_3
    :try_start_1
    const-string v4, "disabled"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 65
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "enabledState":I
    .end local v2    # "oldEnabledStatus":Z
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
