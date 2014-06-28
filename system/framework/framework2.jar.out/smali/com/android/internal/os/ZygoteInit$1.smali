.class final Lcom/android/internal/os/ZygoteInit$1;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->preloadClasses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classes:Ljava/util/List;

.field final synthetic val$runtime:Ldalvik/system/VMRuntime;


# direct methods
.method constructor <init>(Ldalvik/system/VMRuntime;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$1;->val$runtime:Ldalvik/system/VMRuntime;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteInit$1;->val$classes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/os/ZygoteInit$1;->val$runtime:Ldalvik/system/VMRuntime;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteInit$1;->val$classes:Ljava/util/List;

    # invokes: Lcom/android/internal/os/ZygoteInit;->doPreloadClasses(Ldalvik/system/VMRuntime;Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->access$000(Ldalvik/system/VMRuntime;Ljava/util/List;)V

    .line 396
    return-void
.end method
