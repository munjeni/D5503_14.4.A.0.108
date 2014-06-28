.class public Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;
.super Ljava/lang/Object;
.source "MessagePersistManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$1;,
        Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$SaveDraftManagerHolder;,
        Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveDraftManager"


# instance fields
.field private mDraftQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExternalTaskOngoing:Z

.field private mIsInternalTaskOngoing:Z

.field private mSaveDraftListener:Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mIsInternalTaskOngoing:Z

    .line 47
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mIsExternalTaskOngoing:Z

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mDraftQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$1;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$SaveDraftManagerHolder;->INSTANCE:Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    return-object v0
.end method

.method private declared-synchronized notifyIfNeed()V
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->isTaskOngoing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mSaveDraftListener:Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mSaveDraftListener:Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;->allTaskesFinished()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mSaveDraftListener:Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized isTaskOngoing()Z
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mIsInternalTaskOngoing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mIsExternalTaskOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onExternalTaskDone()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mIsExternalTaskOngoing:Z

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->notifyIfNeed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onExternalTaskStart()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mIsExternalTaskOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized persistDone()V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mIsInternalTaskOngoing:Z

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->notifyIfNeed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pollSaveDraftTask()Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mDraftQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushSaveDraftTask(Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;)V
    .locals 3
    .param p1, "draft"    # Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;

    .prologue
    .line 82
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 84
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mIsInternalTaskOngoing:Z

    .line 85
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mDraftQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/conversations/ui/persist/SaveDraftService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerMessagePersistListener(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;)V
    .locals 1
    .param p1, "target"    # Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mSaveDraftListener:Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized syncSaveDraft(Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;)V
    .locals 1
    .param p1, "draft"    # Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;

    .prologue
    .line 98
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->run()V

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->notifyIfNeed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterMessagePersistListener(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;)V
    .locals 1
    .param p1, "target"    # Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mSaveDraftListener:Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;

    if-ne v0, p1, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->mSaveDraftListener:Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
