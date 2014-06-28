.class Lcom/android/server/MountService$5;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$code:I

.field final synthetic val$cooked:[Ljava/lang/String;

.field final synthetic val$raw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$5;->val$raw:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    iput p4, p0, Lcom/android/server/MountService$5;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 825
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$5;->val$code:I

    const/16 v15, 0x25d

    if-ne v14, v15, :cond_1

    .line 831
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    # invokes: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v14 .. v18}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$5;->val$code:I

    const/16 v15, 0x265

    if-ne v14, v15, :cond_3

    .line 836
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v8, v14, v15

    .line 837
    .local v8, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    array-length v14, v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    const/4 v15, 0x3

    aget-object v11, v14, v15

    .line 839
    .local v11, "uuid":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 840
    .local v12, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v12, :cond_0

    .line 841
    invoke-virtual {v12, v11}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 837
    .end local v11    # "uuid":Ljava/lang/String;
    .end local v12    # "vol":Landroid/os/storage/StorageVolume;
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 844
    .end local v8    # "path":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$5;->val$code:I

    const/16 v15, 0x266

    if-ne v14, v15, :cond_5

    .line 846
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v8, v14, v15

    .line 847
    .restart local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    array-length v14, v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    const/4 v15, 0x3

    aget-object v10, v14, v15

    .line 849
    .local v10, "userLabel":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 850
    .restart local v12    # "vol":Landroid/os/storage/StorageVolume;
    if-eqz v12, :cond_0

    .line 851
    invoke-virtual {v12, v10}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 847
    .end local v10    # "userLabel":Ljava/lang/String;
    .end local v12    # "vol":Landroid/os/storage/StorageVolume;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 854
    .end local v8    # "path":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$5;->val$code:I

    const/16 v15, 0x276

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$5;->val$code:I

    const/16 v15, 0x277

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$5;->val$code:I

    const/16 v15, 0x278

    if-ne v14, v15, :cond_0

    .line 860
    :cond_6
    const/4 v1, 0x0

    .line 861
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v5, v14, v15

    .line 862
    .local v5, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    const/4 v15, 0x3

    aget-object v8, v14, v15

    .line 863
    .restart local v8    # "path":Ljava/lang/String;
    const/4 v6, -0x1

    .line 864
    .local v6, "major":I
    const/4 v7, -0x1

    .line 867
    .local v7, "minor":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    const/4 v15, 0x6

    aget-object v14, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$5;->val$cooked:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x6

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 868
    .local v2, "devComp":Ljava/lang/String;
    const-string v14, ":"

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "devTok":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 870
    const/4 v14, 0x1

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 877
    .end local v2    # "devComp":Ljava/lang/String;
    .end local v3    # "devTok":[Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 878
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 879
    .local v13, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 880
    .local v9, "state":Ljava/lang/String;
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$5;->val$code:I

    const/16 v15, 0x276

    if-ne v14, v15, :cond_7

    .line 883
    new-instance v14, Lcom/android/server/MountService$5$1;

    const-string v15, "MountService#VolumeDiskInserted"

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15, v8}, Lcom/android/server/MountService$5$1;-><init>(Lcom/android/server/MountService$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 926
    :goto_4
    if-eqz v1, :cond_0

    .line 927
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v14, v1, v13, v15}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 871
    .end local v9    # "state":Ljava/lang/String;
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v4

    .line 872
    .local v4, "ex":Ljava/lang/Exception;
    const-string v14, "MountService"

    const-string v15, "Failed to parse major/minor"

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 880
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 896
    .restart local v9    # "state":Ljava/lang/String;
    .restart local v13    # "volume":Landroid/os/storage/StorageVolume;
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$5;->val$code:I

    const/16 v15, 0x277

    if-ne v14, v15, :cond_8

    .line 900
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v14, v8}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "bad_removal"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 905
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v15, "unmounted"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v14, v13, v15}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 906
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v15, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v14, v15, v13, v0}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v15, "removed"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v14, v13, v15}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 910
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    goto :goto_4

    .line 911
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$5;->val$code:I

    const/16 v15, 0x278

    if-ne v14, v15, :cond_9

    .line 914
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v15, "unmounted"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v14, v13, v15}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v15, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v14, v15, v13, v0}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v15, "bad_removal"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v14, v13, v15}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 919
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    goto :goto_4

    .line 920
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService$5;->val$code:I

    const/16 v15, 0x2bc

    if-ne v14, v15, :cond_a

    .line 921
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/server/EventLogTags;->writeFstrimFinish(J)V

    goto/16 :goto_4

    .line 923
    :cond_a
    const-string v14, "MountService"

    const-string v15, "Unknown code {%d}"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MountService$5;->val$code:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method
