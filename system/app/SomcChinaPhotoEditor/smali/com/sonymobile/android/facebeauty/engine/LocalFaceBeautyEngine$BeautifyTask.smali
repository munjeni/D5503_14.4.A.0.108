.class Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;
.super Ljava/lang/Object;
.source "LocalFaceBeautyEngine.java"

# interfaces
.implements Lcom/sonymobile/android/facebeauty/engine/InterruptCallBack;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeautifyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)V
    .locals 0

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;
    .param p2, "x1"    # Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$1;

    .prologue
    .line 1318
    invoke-direct {p0, p1}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;-><init>(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)V

    return-void
.end method


# virtual methods
.method public interrupt(J)I
    .locals 2
    .param p1, "current"    # J

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mLastTimeStamp:J
    invoke-static {v0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$800(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1351
    const/4 v0, 0x1

    .line 1353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 24

    .prologue
    .line 1324
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mFrameBuffer:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$400(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;

    .line 1325
    .local v23, "unit":Lcom/sonymobile/android/facebeauty/engine/FrameUnit;
    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->getBuffer()[B

    move-result-object v2

    .line 1326
    .local v2, "bytes":[B
    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->getTimepStamp()J

    move-result-wide v17

    .line 1327
    .local v17, "timeStamp":J
    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->getSize()Landroid/graphics/Rect;

    move-result-object v22

    .line 1329
    .local v22, "size":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mStyleChangeTime:J
    invoke-static {v3}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$500(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)J

    move-result-wide v3

    cmp-long v3, v17, v3

    if-ltz v3, :cond_0

    .line 1333
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->getAngle()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;
    invoke-static {v6}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$600(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/android/facebeauty/engine/Style;->getParams()[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;
    invoke-static {v7}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$600(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeSize()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;
    invoke-static {v8}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$600(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEye()[B

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;
    invoke-static {v9}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$600(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/android/facebeauty/engine/Style;->getShadow()[B

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;
    invoke-static {v10}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$600(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/android/facebeauty/engine/Style;->getUpper()[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;
    invoke-static {v11}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$600(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/android/facebeauty/engine/Style;->getLower()[B

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;
    invoke-static {v12}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$600(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/android/facebeauty/engine/Style;->getBlush()[B

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;
    invoke-static {v13}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$600(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLashSize()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mCurrentRealStyle:Lcom/sonymobile/android/facebeauty/engine/Style;
    invoke-static {v14}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$600(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Lcom/sonymobile/android/facebeauty/engine/Style;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonymobile/android/facebeauty/engine/Style;->getEyeLash()[B

    move-result-object v14

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->getFaceIndexApply()[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->getCalibrationValue()I

    move-result v19

    move-object/from16 v16, p0

    invoke-static/range {v2 .. v19}, Lcom/sonymobile/android/facebeauty/engine/MorphoJni;->beautyStyleYuv([BIII[II[B[B[B[B[BI[B[ILcom/sonymobile/android/facebeauty/engine/InterruptCallBack;JI)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v21

    .line 1339
    .local v21, "faces":[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/facebeauty/engine/FrameUnit;->setmFaceRects([Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine$BeautifyTask;->this$0:Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    # getter for: Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->mResultBuffer:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;->access$700(Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1342
    .end local v2    # "bytes":[B
    .end local v17    # "timeStamp":J
    .end local v21    # "faces":[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .end local v22    # "size":Landroid/graphics/Rect;
    .end local v23    # "unit":Lcom/sonymobile/android/facebeauty/engine/FrameUnit;
    :catch_0
    move-exception v20

    .line 1343
    .local v20, "e":Ljava/lang/InterruptedException;
    return-void
.end method
