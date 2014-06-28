.class Lcom/sonymobile/superstamina/xssm/WhitelistController$2;
.super Ljava/lang/Object;
.source "WhitelistController.java"

# interfaces
.implements Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/WhitelistController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/xssm/WhitelistController;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$2;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "oldWhitelistArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .local p2, "newWhitelistArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 99
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 100
    .local v5, "userId":I
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 101
    .local v2, "newWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 102
    .local v3, "oldWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 103
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 104
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$2;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->access$100(Lcom/sonymobile/superstamina/xssm/WhitelistController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 105
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$2;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;
    invoke-static {v6}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->access$200(Lcom/sonymobile/superstamina/xssm/WhitelistController;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->removePackage(Ljava/lang/String;I)V

    .line 106
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 98
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "oldWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "userId":I
    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 113
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 114
    .restart local v5    # "userId":I
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 115
    .restart local v2    # "newWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 116
    .restart local v3    # "oldWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .restart local v4    # "packageName":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 118
    :cond_5
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$2;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistController;->mRulesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->access$100(Lcom/sonymobile/superstamina/xssm/WhitelistController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 120
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistController$2;->this$0:Lcom/sonymobile/superstamina/xssm/WhitelistController;

    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistController;->mWhitelistGraph:Lcom/sonymobile/superstamina/xssm/WhitelistGraph;
    invoke-static {v6}, Lcom/sonymobile/superstamina/xssm/WhitelistController;->access$200(Lcom/sonymobile/superstamina/xssm/WhitelistController;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->addPackageToGraphLocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :goto_4
    :try_start_2
    monitor-exit v7

    goto :goto_3

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 112
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "oldWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "userId":I
    :cond_7
    return-void

    .line 121
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "newWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "oldWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "userId":I
    :catch_0
    move-exception v6

    goto :goto_4
.end method
