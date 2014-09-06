.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
.super Landroid/os/AsyncTask;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;)V
    .locals 0
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    .line 114
    return-void
.end method

.method private save(Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;)Z
    .locals 26
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    .prologue
    .line 148
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mPostProcessing:Z

    if-eqz v2, :cond_0

    .line 151
    invoke-static {}, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;->create()Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;

    move-result-object v17

    .line 153
    .local v17, "processor":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;
    if-eqz v17, :cond_0

    .line 157
    new-instance v16, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Parameters;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->width:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->height:I

    const/16 v4, 0x100

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Parameters;-><init>(III)V

    .line 163
    .local v16, "params":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Parameters;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mImage:[B

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;->process([BLcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Parameters;)Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Results;

    move-result-object v19

    .line 165
    .local v19, "results":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Results;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Results;->imageBuffer:[B

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mImage:[B

    .line 170
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;->release()V

    .line 178
    .end local v16    # "params":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Parameters;
    .end local v17    # "processor":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;
    .end local v19    # "results":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Results;
    :cond_0
    const/16 v21, 0x0

    .line 179
    .local v21, "storer":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    iget-object v14, v2, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mExtraOutput:Landroid/net/Uri;

    .line 180
    .local v14, "extraOutputUri":Landroid/net/Uri;
    if-nez v14, :cond_1

    .line 183
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->assignImageFilePath(ILandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v20

    .line 185
    .local v20, "storePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".JPG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 187
    new-instance v22, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mImage:[B

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v21    # "storer":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;
    .local v22, "storer":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;
    move-object/from16 v21, v22

    .line 209
    .end local v20    # "storePath":Ljava/lang/String;
    .end local v22    # "storer":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;
    .restart local v21    # "storer":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;
    :goto_0
    if-nez v21, :cond_2

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    const/4 v4, -0x1

    const/16 v24, 0x0

    sget-object v25, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->onNotifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v2, v3, v4, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    .line 211
    const/4 v2, 0x0

    .line 282
    :goto_1
    return v2

    .line 188
    :catch_0
    move-exception v12

    .line 189
    .local v12, "e":Ljava/io/IOException;
    const-string v2, "SavingTaskManager"

    const-string v3, "### can\'t assign a file path of the specified image."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 205
    .end local v12    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v21, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;

    .end local v21    # "storer":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mImage:[B

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3, v14}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;[BLandroid/net/Uri;)V

    .restart local v21    # "storer":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;
    goto :goto_0

    .line 217
    :cond_2
    const/16 v23, 0x0

    .line 218
    .local v23, "uri":Landroid/net/Uri;
    const/16 v18, -0x1

    .line 219
    .local v18, "result":I
    const/4 v11, 0x0

    .line 220
    .local v11, "dummyException":Ljava/io/IOException;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    if-nez v14, :cond_5

    .line 225
    const/4 v15, 0x1

    .line 231
    .local v15, "needToinsert":Z
    :goto_2
    if-eqz v15, :cond_7

    .line 233
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget v6, v2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->orientation:I

    .line 234
    .local v6, "orientation":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget-wide v7, v2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    .line 235
    .local v7, "dateTaken":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->location:Landroid/location/Location;

    .line 236
    .local v5, "loc":Landroid/location/Location;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget v9, v2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->width:I

    .line 237
    .local v9, "width":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget v10, v2, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->height:I

    .line 239
    .local v10, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->insertPictureContentManager(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJII)Landroid/net/Uri;
    invoke-static/range {v2 .. v10}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$400(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJII)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v23

    .line 241
    if-eqz v23, :cond_6

    const/16 v18, 0x0

    .line 256
    .end local v5    # "loc":Landroid/location/Location;
    .end local v6    # "orientation":I
    .end local v7    # "dateTaken":J
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v15    # "needToinsert":Z
    :cond_3
    :goto_3
    if-nez v18, :cond_8

    .line 259
    const/16 v18, 0x0

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mIsOneShotPhoto:Z
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$500(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-static {v2, v0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->sendBroadcastCameraShot(Landroid/app/Activity;Landroid/net/Uri;Z)V

    .line 276
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->getPath()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v18

    move-object/from16 v1, v23

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->onNotifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v2, v3, v0, v4, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    .line 277
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 228
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    iget-boolean v15, v2, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mAddToMediaStore:Z

    .restart local v15    # "needToinsert":Z
    goto :goto_2

    .line 241
    .restart local v5    # "loc":Landroid/location/Location;
    .restart local v6    # "orientation":I
    .restart local v7    # "dateTaken":J
    .restart local v9    # "width":I
    .restart local v10    # "height":I
    :cond_6
    const/16 v18, -0x1

    goto :goto_3

    .line 243
    .end local v5    # "loc":Landroid/location/Location;
    .end local v6    # "orientation":I
    .end local v7    # "dateTaken":J
    .end local v9    # "width":I
    .end local v10    # "height":I
    :catch_1
    move-exception v13

    .line 244
    .local v13, "ex":Landroid/database/sqlite/SQLiteFullException;
    const/16 v18, -0x2

    .line 245
    goto :goto_3

    .line 247
    .end local v13    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :cond_7
    move-object/from16 v23, v14

    .line 248
    const/16 v18, 0x0

    goto :goto_3

    .line 281
    .end local v15    # "needToinsert":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    const/4 v4, 0x0

    sget-object v24, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move/from16 v0, v18

    move-object/from16 v1, v24

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->onNotifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v2, v3, v0, v4, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    .line 282
    const/4 v2, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->save(Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$000(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    .line 125
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 119
    return-void
.end method
