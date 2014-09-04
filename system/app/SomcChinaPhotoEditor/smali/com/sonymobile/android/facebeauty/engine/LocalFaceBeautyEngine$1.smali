.class Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;
.super Ljava/lang/Object;
.source "LocalFaceBeautyEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->releaseEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1193
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorServiceDraw:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$200(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 1194
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$300(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :goto_0
    invoke-static {}, Lcom/sonymobile/android/facebeauty/engine/MorphoJni;->release()V

    .line 1199
    return-void

    .line 1195
    :catch_0
    move-exception v0

    goto :goto_0
.end method
