.class Lcom/android/phone/SomcCallRecorder$RecorderTask;
.super Landroid/os/AsyncTask;
.source "SomcCallRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcCallRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/SomcCallRecorder;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SomcCallRecorder;Lcom/android/phone/SomcCallRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/SomcCallRecorder;
    .param p2, "x1"    # Lcom/android/phone/SomcCallRecorder$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/phone/SomcCallRecorder$RecorderTask;-><init>(Lcom/android/phone/SomcCallRecorder;)V

    return-void
.end method

.method private record(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 12
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # getter for: Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;
    invoke-static {v3}, Lcom/android/phone/SomcCallRecorder;->access$300(Lcom/android/phone/SomcCallRecorder;)Lcom/android/phone/SomcCallRecorder$RecordingMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/SomcCallRecorder$RecordingMode;->getAudioSourceType()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 194
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 195
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 196
    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 198
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 199
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v3, v4, v5}, Lcom/android/phone/SomcCallRecorder;->access$402(Lcom/android/phone/SomcCallRecorder;J)J

    .line 200
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mFilePath:Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/phone/SomcCallRecorder;->access$502(Lcom/android/phone/SomcCallRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    const/4 v4, 0x1

    # invokes: Lcom/android/phone/SomcCallRecorder;->handleEvent(I)V
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$600(Lcom/android/phone/SomcCallRecorder;I)V

    .line 202
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # getter for: Lcom/android/phone/SomcCallRecorder;->mEventListener:Lcom/android/phone/SomcCallRecorder$EventListener;
    invoke-static {v3}, Lcom/android/phone/SomcCallRecorder;->access$200(Lcom/android/phone/SomcCallRecorder;)Lcom/android/phone/SomcCallRecorder$EventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # getter for: Lcom/android/phone/SomcCallRecorder;->mEventListener:Lcom/android/phone/SomcCallRecorder$EventListener;
    invoke-static {v3}, Lcom/android/phone/SomcCallRecorder;->access$200(Lcom/android/phone/SomcCallRecorder;)Lcom/android/phone/SomcCallRecorder$EventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/phone/SomcCallRecorder$EventListener;->onRecorderStart()V

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # getter for: Lcom/android/phone/SomcCallRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/SomcCallRecorder;->access$800(Lcom/android/phone/SomcCallRecorder;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # getter for: Lcom/android/phone/SomcCallRecorder;->mCheckStorageRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/phone/SomcCallRecorder;->access$700(Lcom/android/phone/SomcCallRecorder;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 208
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v3

    goto :goto_0

    .line 212
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 223
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v3, v10, v11}, Lcom/android/phone/SomcCallRecorder;->access$402(Lcom/android/phone/SomcCallRecorder;J)J

    .line 224
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/recorder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/phone/SomcCallRecorder;->mSaveDirectory:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$902(Lcom/android/phone/SomcCallRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v3}, Lcom/android/phone/SomcCallRecorder;->isSecureMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 227
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object p2, v4, v9

    invoke-static {v3, v4, v7, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 230
    :cond_2
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    sget-object v4, Lcom/android/phone/SomcCallRecorder$RecordingMode;->INIT:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$302(Lcom/android/phone/SomcCallRecorder;Lcom/android/phone/SomcCallRecorder$RecordingMode;)Lcom/android/phone/SomcCallRecorder$RecordingMode;

    .line 232
    :goto_1
    return-void

    .line 213
    :catch_1
    move-exception v1

    .line 214
    .local v1, "ise":Ljava/lang/IllegalStateException;
    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 223
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v3, v10, v11}, Lcom/android/phone/SomcCallRecorder;->access$402(Lcom/android/phone/SomcCallRecorder;J)J

    .line 224
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/recorder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/phone/SomcCallRecorder;->mSaveDirectory:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$902(Lcom/android/phone/SomcCallRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v3}, Lcom/android/phone/SomcCallRecorder;->isSecureMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 227
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object p2, v4, v9

    invoke-static {v3, v4, v7, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 230
    :cond_3
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    sget-object v4, Lcom/android/phone/SomcCallRecorder$RecordingMode;->INIT:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$302(Lcom/android/phone/SomcCallRecorder;Lcom/android/phone/SomcCallRecorder$RecordingMode;)Lcom/android/phone/SomcCallRecorder$RecordingMode;

    goto :goto_1

    .line 215
    .end local v1    # "ise":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 216
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_4
    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 223
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v3, v10, v11}, Lcom/android/phone/SomcCallRecorder;->access$402(Lcom/android/phone/SomcCallRecorder;J)J

    .line 224
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/recorder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/phone/SomcCallRecorder;->mSaveDirectory:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$902(Lcom/android/phone/SomcCallRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v3}, Lcom/android/phone/SomcCallRecorder;->isSecureMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 227
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object p2, v4, v9

    invoke-static {v3, v4, v7, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 230
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    sget-object v4, Lcom/android/phone/SomcCallRecorder$RecordingMode;->INIT:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$302(Lcom/android/phone/SomcCallRecorder;Lcom/android/phone/SomcCallRecorder$RecordingMode;)Lcom/android/phone/SomcCallRecorder$RecordingMode;

    goto/16 :goto_1

    .line 217
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 218
    .local v2, "re":Ljava/lang/RuntimeException;
    const/4 v3, 0x1

    :try_start_5
    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 219
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # getter for: Lcom/android/phone/SomcCallRecorder;->mEventListener:Lcom/android/phone/SomcCallRecorder$EventListener;
    invoke-static {v3}, Lcom/android/phone/SomcCallRecorder;->access$200(Lcom/android/phone/SomcCallRecorder;)Lcom/android/phone/SomcCallRecorder$EventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/phone/SomcCallRecorder$EventListener;->onResourceOccupied()V

    .line 220
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    const/16 v4, 0x67

    # invokes: Lcom/android/phone/SomcCallRecorder;->handleEvent(I)V
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$600(Lcom/android/phone/SomcCallRecorder;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 223
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v3, v10, v11}, Lcom/android/phone/SomcCallRecorder;->access$402(Lcom/android/phone/SomcCallRecorder;J)J

    .line 224
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/recorder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/phone/SomcCallRecorder;->mSaveDirectory:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$902(Lcom/android/phone/SomcCallRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v3}, Lcom/android/phone/SomcCallRecorder;->isSecureMode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 227
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object p2, v4, v9

    invoke-static {v3, v4, v7, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 230
    :cond_5
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    sget-object v4, Lcom/android/phone/SomcCallRecorder$RecordingMode;->INIT:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;
    invoke-static {v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$302(Lcom/android/phone/SomcCallRecorder;Lcom/android/phone/SomcCallRecorder$RecordingMode;)Lcom/android/phone/SomcCallRecorder$RecordingMode;

    goto/16 :goto_1

    .line 222
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 223
    iget-object v4, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v4, v10, v11}, Lcom/android/phone/SomcCallRecorder;->access$402(Lcom/android/phone/SomcCallRecorder;J)J

    .line 224
    iget-object v4, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/recorder"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/phone/SomcCallRecorder;->mSaveDirectory:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/SomcCallRecorder;->access$902(Lcom/android/phone/SomcCallRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v4, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v4}, Lcom/android/phone/SomcCallRecorder;->isSecureMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 227
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    aput-object p2, v5, v9

    invoke-static {v4, v5, v7, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 230
    :cond_6
    iget-object v4, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    sget-object v5, Lcom/android/phone/SomcCallRecorder$RecordingMode;->INIT:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    # setter for: Lcom/android/phone/SomcCallRecorder;->mRecMode:Lcom/android/phone/SomcCallRecorder$RecordingMode;
    invoke-static {v4, v5}, Lcom/android/phone/SomcCallRecorder;->access$302(Lcom/android/phone/SomcCallRecorder;Lcom/android/phone/SomcCallRecorder$RecordingMode;)Lcom/android/phone/SomcCallRecorder$RecordingMode;

    throw v3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcCallRecorder$RecorderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 153
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "SomcCallRecorder"

    const-string v5, "doInBackground() : Create file ..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 156
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # invokes: Lcom/android/phone/SomcCallRecorder;->createNewFile()Ljava/io/File;
    invoke-static {v4}, Lcom/android/phone/SomcCallRecorder;->access$100(Lcom/android/phone/SomcCallRecorder;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 162
    :goto_0
    if-nez v0, :cond_1

    .line 163
    const-string v4, "SomcCallRecorder"

    const-string v5, "Error to create audio file..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 179
    :goto_1
    return-object v6

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "se":Ljava/lang/SecurityException;
    const-string v4, "SomcCallRecorder"

    const-string v5, "Error to create file..."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 159
    .end local v3    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 160
    .local v1, "ioe":Ljava/io/IOException;
    const-string v4, "SomcCallRecorder"

    const-string v5, "Error to create file..."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_1
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    .line 168
    .local v2, "recorder":Landroid/media/MediaRecorder;
    new-instance v4, Lcom/android/phone/SomcCallRecorder$RecorderTask$1;

    invoke-direct {v4, p0}, Lcom/android/phone/SomcCallRecorder$RecorderTask$1;-><init>(Lcom/android/phone/SomcCallRecorder$RecorderTask;)V

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 175
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_2

    const-string v4, "SomcCallRecorder"

    const-string v5, "doInBackground() : Start recording ..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    iget-object v5, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    monitor-enter v5

    .line 177
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/phone/SomcCallRecorder$RecorderTask;->record(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 178
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 236
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcCallRecorder"

    const-string v1, "onCancelled() ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # getter for: Lcom/android/phone/SomcCallRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcCallRecorder;->access$800(Lcom/android/phone/SomcCallRecorder;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # getter for: Lcom/android/phone/SomcCallRecorder;->mCheckStorageRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/SomcCallRecorder;->access$700(Lcom/android/phone/SomcCallRecorder;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    const/4 v1, 0x2

    # invokes: Lcom/android/phone/SomcCallRecorder;->handleEvent(I)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcCallRecorder;->access$600(Lcom/android/phone/SomcCallRecorder;I)V

    .line 239
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 240
    return-void
.end method
