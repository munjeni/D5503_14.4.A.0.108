.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->storeVideo(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

.field final synthetic val$takenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;->val$takenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;->val$takenStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    move-object/from16 v17, v0

    .line 1055
    .local v17, "status":Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    const/16 v16, -0x1

    .line 1056
    .local v16, "result":I
    const/16 v18, 0x0

    .line 1060
    .local v18, "uri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    const-string v3, ""

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->filePath:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->location:Landroid/location/Location;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->dateTaken:J

    move-object/from16 v0, v17

    iget v8, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->width:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->height:I

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->duration:J

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->fileExtension:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v14, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->somcType:I

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->insertVideoContentManager(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JIIJLjava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    invoke-static/range {v2 .. v14}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$800(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JIIJLjava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 1075
    :goto_0
    if-eqz v18, :cond_1

    .line 1088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mIsOneShotPhoto:Z
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$500(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->sendBroadcastCameraShot(Landroid/app/Activity;Landroid/net/Uri;Z)V

    .line 1093
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->filePath:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->onNotifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v2, v0, v3, v4, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    .line 1106
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    const/4 v3, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$902(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1107
    return-void

    .line 1071
    :catch_0
    move-exception v15

    .line 1072
    .local v15, "ex":Landroid/database/sqlite/SQLiteFullException;
    const/16 v16, -0x2

    goto :goto_0

    .line 1100
    .end local v15    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    const/4 v3, 0x0

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->onNotifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v2, v0, v1, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    goto :goto_1
.end method
