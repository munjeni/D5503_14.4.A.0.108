.class public Lcom/android/mms/layout/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/layout/LayoutManager$1;,
        Lcom/android/mms/layout/LayoutManager$LayoutManagerHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "LayoutManager"


# instance fields
.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/layout/LayoutManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/layout/LayoutManager$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/mms/layout/LayoutManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/layout/LayoutManager;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/mms/layout/LayoutManager$LayoutManagerHolder;->INSTANCE:Lcom/android/mms/layout/LayoutManager;

    return-object v0
.end method

.method private getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;
    .locals 3
    .param p1, "displayType"    # I

    .prologue
    .line 64
    packed-switch p1, :pswitch_data_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported display type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_0
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(I)V

    .line 68
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(I)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized initLayoutParameters(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getLayoutHeight()I
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;
    .locals 2

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getLayoutType()I
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getLayoutWidth()I
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "LayoutManager"

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    .line 96
    return-void
.end method
