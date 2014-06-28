.class public Lcom/sonyericsson/conversations/cityid/CityIdDecorator;
.super Ljava/lang/Object;
.source "CityIdDecorator.java"


# static fields
.field private static final MAX_EXECUTOR_NUMBER:I = 0x16

.field private static final MAX_THREAD_NUMBER:I = 0x5

.field private static final RUNNALE_EXECUTED_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CityIdDecorator"


# instance fields
.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFuture:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListviewMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mListviewMode:I

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mFuture:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 65
    const/4 v0, 0x5

    new-instance v1, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$1;-><init>(Lcom/sonyericsson/conversations/cityid/CityIdDecorator;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private executeRunnable(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mFuture:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/16 v2, 0x16

    if-le v1, v2, :cond_1

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mFuture:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/concurrent/Future;

    .line 109
    .restart local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mFuture:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mFuture:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/concurrent/Future;

    .restart local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mFuture:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/AbstractQueue;->clear()V

    .line 86
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->clear()V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mFuture:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 96
    :cond_0
    return-void
.end method

.method public setCityId(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Conversation;Landroid/widget/TextView;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 127
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v7

    .line 128
    .local v7, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 131
    .local v8, "size":I
    if-eq v8, v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-ne v8, v2, :cond_0

    .line 136
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    .line 138
    .local v3, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    .line 145
    const-string v1, ""

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Conversation;->getCityId()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "cacheCityId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mListviewMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 149
    new-instance v0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;-><init>(Lcom/sonyericsson/conversations/cityid/CityIdDecorator;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;Lcom/sonyericsson/conversations/model/Conversation;Landroid/widget/TextView;)V

    .line 164
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->executeRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 169
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_2
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListviewMode(I)V
    .locals 1
    .param p1, "aListviewMode"    # I

    .prologue
    .line 55
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->clear()V

    .line 58
    :cond_0
    iput p1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->mListviewMode:I

    .line 59
    return-void
.end method
