.class Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;
.super Ljava/lang/Object;
.source "LocalFaceBeautyEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)V
    .locals 0

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;
    .param p2, "x1"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;

    .prologue
    .line 1359
    invoke-direct {p0, p1}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;-><init>(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1365
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1367
    .local v0, "bytes":[B
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mResultBuffer:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v5}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$700(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;

    .line 1368
    .local v4, "unit":Lcom/sonymobile/android/facebeauty/engine/FrameUnit;
    invoke-virtual {v4}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->getBuffer()[B

    move-result-object v0

    .line 1369
    invoke-virtual {v4}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->getTimepStamp()J

    move-result-wide v2

    .line 1370
    .local v2, "timeStamp":J
    iget-object v5, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mLastTimeStamp:J
    invoke-static {v5}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$800(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mLastTimeStamp:J
    invoke-static {v5}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$800(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 1371
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # setter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mLastTimeStamp:J
    invoke-static {v5, v2, v3}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$802(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;J)J

    .line 1376
    iget-object v5, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mStyleChangeTime:J
    invoke-static {v5}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$500(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-ltz v5, :cond_0

    .line 1379
    iget-object v5, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mFaceCallBack:Lcom/sonymobile/android/facebeauty/engine/FaceCallback;
    invoke-static {v5}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$900(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/FaceCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1380
    iget-object v5, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$DrawTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mFaceCallBack:Lcom/sonymobile/android/facebeauty/engine/FaceCallback;
    invoke-static {v5}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$900(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/FaceCallback;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->getFaceRects()[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->getStyleApply()I

    move-result v7

    invoke-virtual {v4}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->getFaceIndexApply()[I

    move-result-object v8

    invoke-interface {v5, v0, v6, v7, v8}, Lcom/sonymobile/android/facebeauty/engine/FaceCallback;->callBack([B[Lcom/sonymobile/android/facebeauty/engine/FaceRect;I[I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1383
    .end local v2    # "timeStamp":J
    .end local v4    # "unit":Lcom/sonymobile/android/facebeauty/engine/FrameUnit;
    :catch_0
    move-exception v1

    .line 1384
    .local v1, "e":Ljava/lang/InterruptedException;
    return-void
.end method
