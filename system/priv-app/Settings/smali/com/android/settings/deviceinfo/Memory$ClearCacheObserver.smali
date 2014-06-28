.class Lcom/android/settings/deviceinfo/Memory$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/Memory;I)V
    .locals 0
    .param p1, "target"    # Lcom/android/settings/deviceinfo/Memory;
    .param p2, "remaining"    # I

    .prologue
    .line 446
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 447
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/Memory;

    .line 448
    iput p2, p0, Lcom/android/settings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    .line 449
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    iget v0, p0, Lcom/android/settings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/Memory;

    # invokes: Lcom/android/settings/deviceinfo/Memory;->onCacheCleared()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Memory;->access$600(Lcom/android/settings/deviceinfo/Memory;)V

    .line 457
    :cond_0
    monitor-exit p0

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
