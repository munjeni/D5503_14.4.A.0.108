.class public Lcom/android/server/am/XperiaApplicationDependency;
.super Lcom/sony/stamina/IApplicationDependency$Stub;
.source "XperiaApplicationDependency.java"


# static fields
.field static final TAG:Ljava/lang/String; = "XperiaApplicationDependency"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mApplicationDependency:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sony/stamina/ProcessInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/sony/stamina/IApplicationDependencyObserver;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sony/stamina/IApplicationDependency$Stub;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Lcom/android/server/am/XperiaApplicationDependency;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized addDependency(ILjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "callingProcessName"    # Ljava/lang/String;
    .param p3, "childUid"    # I
    .param p4, "childProcessName"    # Ljava/lang/String;

    .prologue
    .line 50
    monitor-enter p0

    if-eq p1, p3, :cond_2

    .line 51
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 55
    .local v2, "dependencyForUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    if-nez v2, :cond_0

    .line 56
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "dependencyForUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 57
    .restart local v2    # "dependencyForUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    iget-object v4, p0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 63
    .local v1, "dependencyForProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    if-nez v1, :cond_1

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "dependencyForProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .restart local v1    # "dependencyForProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    new-instance v0, Lcom/sony/stamina/ProcessInfo;

    invoke-direct {v0, p3, p4}, Lcom/sony/stamina/ProcessInfo;-><init>(ILjava/lang/String;)V

    .line 71
    .local v0, "dependency":Lcom/sony/stamina/ProcessInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v4, p0, Lcom/android/server/am/XperiaApplicationDependency;->mObserver:Lcom/sony/stamina/IApplicationDependencyObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 75
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/XperiaApplicationDependency;->mObserver:Lcom/sony/stamina/IApplicationDependencyObserver;

    new-instance v5, Lcom/sony/stamina/ProcessInfo;

    invoke-direct {v5, p1, p2}, Lcom/sony/stamina/ProcessInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5, v0}, Lcom/sony/stamina/IApplicationDependencyObserver;->onDependencyAdded(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local v0    # "dependency":Lcom/sony/stamina/ProcessInfo;
    .end local v1    # "dependencyForProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    .end local v2    # "dependencyForUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    .restart local v0    # "dependency":Lcom/sony/stamina/ProcessInfo;
    .restart local v1    # "dependencyForProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    .restart local v2    # "dependencyForUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "XperiaApplicationDependency"

    const-string v5, "Failed to update application dependency."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 50
    .end local v0    # "dependency":Lcom/sony/stamina/ProcessInfo;
    .end local v1    # "dependencyForProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    .end local v2    # "dependencyForUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/XperiaApplicationDependency;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump xperiaappdepinfo from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " without permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :cond_1
    :try_start_1
    const-string v10, "=== Dependency ===="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    iget-object v10, p0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 132
    .local v9, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 133
    .local v8, "key":Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 134
    .local v2, "deps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 135
    .local v4, "depsKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 136
    .local v3, "depsKey":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 138
    .local v1, "dependencyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sony/stamina/ProcessInfo;

    .line 139
    .local v0, "dep":Lcom/sony/stamina/ProcessInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "|--> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 122
    .end local v0    # "dep":Lcom/sony/stamina/ProcessInfo;
    .end local v1    # "dependencyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    .end local v2    # "deps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    .end local v3    # "depsKey":Ljava/lang/String;
    .end local v4    # "depsKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/Integer;
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 141
    .restart local v1    # "dependencyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    .restart local v2    # "deps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    .restart local v3    # "depsKey":Ljava/lang/String;
    .restart local v4    # "depsKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "key":Ljava/lang/Integer;
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_2
    const-string v10, "---------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getDependency(Lcom/sony/stamina/ProcessInfo;)[Lcom/sony/stamina/ProcessInfo;
    .locals 9
    .param p1, "process"    # Lcom/sony/stamina/ProcessInfo;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    iget v8, p1, Lcom/sony/stamina/ProcessInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 94
    .local v0, "dependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    if-nez v0, :cond_1

    .line 95
    const/4 v7, 0x0

    new-array v5, v7, [Lcom/sony/stamina/ProcessInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    .line 98
    :cond_1
    :try_start_1
    iget-object v7, p1, Lcom/sony/stamina/ProcessInfo;->processName:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 99
    iget-object v7, p1, Lcom/sony/stamina/ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 109
    .local v4, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    :cond_2
    if-eqz v4, :cond_4

    .line 110
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lcom/sony/stamina/ProcessInfo;

    .line 111
    .local v5, "result":[Lcom/sony/stamina/ProcessInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_0

    .line 112
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sony/stamina/ProcessInfo;

    aput-object v7, v5, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    .end local v1    # "i":I
    .end local v4    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    .end local v5    # "result":[Lcom/sony/stamina/ProcessInfo;
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .restart local v4    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 103
    .local v6, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 104
    .local v3, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 92
    .end local v0    # "dependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    .end local v4    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    .end local v6    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 115
    .restart local v0    # "dependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;>;"
    .restart local v4    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    :cond_4
    const/4 v7, 0x0

    :try_start_2
    new-array v5, v7, [Lcom/sony/stamina/ProcessInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v5    # "result":[Lcom/sony/stamina/ProcessInfo;
    goto :goto_0
.end method

.method public setObserver(Lcom/sony/stamina/IApplicationDependencyObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/sony/stamina/IApplicationDependencyObserver;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/am/XperiaApplicationDependency;->mObserver:Lcom/sony/stamina/IApplicationDependencyObserver;

    .line 88
    return-void
.end method
