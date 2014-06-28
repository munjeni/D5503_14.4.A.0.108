.class final Lcom/android/internal/os/ZygoteInit$2;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->preloadResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 439
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    .line 440
    .local v9, "runtime":Ldalvik/system/VMRuntime;
    const/4 v6, 0x0

    .line 443
    .local v6, "origConfig":Landroid/content/res/Configuration;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    # setter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->access$102(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 444
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->startPreloading()V

    .line 446
    new-instance v7, Landroid/content/res/Configuration;

    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .end local v6    # "origConfig":Landroid/content/res/Configuration;
    .local v7, "origConfig":Landroid/content/res/Configuration;
    :try_start_1
    const-string v12, "Zygote"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Original config: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    # invokes: Lcom/android/internal/os/ZygoteInit;->getPreloadConfigurations()Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    .line 450
    .local v2, "configOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 451
    .local v5, "nconfigs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 452
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 453
    .local v8, "resconf":Landroid/content/res/Configuration;
    invoke-virtual {v8, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 454
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Configuration;

    invoke-virtual {v8, v12}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 455
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 456
    const-string v12, "Zygote"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Preloading resources for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 458
    .local v10, "startTime":J
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1070005

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 460
    .local v1, "ar":Landroid/content/res/TypedArray;
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    invoke-static {v9, v1}, Lcom/android/internal/os/ZygoteInit;->access$300(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 461
    .local v0, "N":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 462
    const-string v12, "Zygote"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "...preloaded "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resources in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 466
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1070006

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 468
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    invoke-static {v9, v1}, Lcom/android/internal/os/ZygoteInit;->access$400(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 469
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 470
    const-string v12, "Zygote"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "...preloaded "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resources in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 474
    .end local v0    # "N":I
    .end local v1    # "ar":Landroid/content/res/TypedArray;
    .end local v8    # "resconf":Landroid/content/res/Configuration;
    .end local v10    # "startTime":J
    :cond_0
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 478
    if-eqz v7, :cond_3

    .line 479
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 480
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 481
    const-string v12, "Zygote"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Restored config: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 484
    .end local v2    # "configOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    .end local v4    # "i":I
    .end local v5    # "nconfigs":I
    .end local v7    # "origConfig":Landroid/content/res/Configuration;
    .restart local v6    # "origConfig":Landroid/content/res/Configuration;
    :cond_1
    :goto_1
    return-void

    .line 475
    :catch_0
    move-exception v3

    .line 476
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_2
    const-string v12, "Zygote"

    const-string v13, "Failure preloading resources"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    if-eqz v6, :cond_1

    .line 479
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 480
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 481
    const-string v12, "Zygote"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Restored config: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 478
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v6, :cond_2

    .line 479
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 480
    # getter for: Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 481
    const-string v13, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restored config: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v12

    .line 478
    .end local v6    # "origConfig":Landroid/content/res/Configuration;
    .restart local v7    # "origConfig":Landroid/content/res/Configuration;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "origConfig":Landroid/content/res/Configuration;
    .restart local v6    # "origConfig":Landroid/content/res/Configuration;
    goto :goto_3

    .line 475
    .end local v6    # "origConfig":Landroid/content/res/Configuration;
    .restart local v7    # "origConfig":Landroid/content/res/Configuration;
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7    # "origConfig":Landroid/content/res/Configuration;
    .restart local v6    # "origConfig":Landroid/content/res/Configuration;
    goto :goto_2

    .end local v6    # "origConfig":Landroid/content/res/Configuration;
    .restart local v2    # "configOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    .restart local v4    # "i":I
    .restart local v5    # "nconfigs":I
    .restart local v7    # "origConfig":Landroid/content/res/Configuration;
    :cond_3
    move-object v6, v7

    .end local v7    # "origConfig":Landroid/content/res/Configuration;
    .restart local v6    # "origConfig":Landroid/content/res/Configuration;
    goto :goto_1
.end method
