.class Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;
.super Landroid/database/ContentObserver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyBroker"
.end annotation


# instance fields
.field private mNotifiers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 328
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    .line 332
    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    .line 341
    .local v1, "notifier":Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;
    invoke-virtual {v1, p1}, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->onChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 340
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "notifier":Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 343
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerNotifier(Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager$NotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
