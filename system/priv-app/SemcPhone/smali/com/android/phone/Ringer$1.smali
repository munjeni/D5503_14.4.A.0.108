.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "r":Landroid/media/Ringtone;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 344
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingerVolumeSetting:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$100(Lcom/android/phone/Ringer;)I

    move-result v2

    if-lez v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 347
    .local v0, "curVolume":I
    add-int/lit8 v0, v0, 0x1

    .line 348
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 350
    const/4 v2, 0x4

    const-wide/16 v3, 0xfa0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 355
    .end local v0    # "curVolume":I
    :pswitch_2
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "mRingHandler: PLAY_RING_ONCE..."

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 358
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 362
    if-nez v1, :cond_3

    .line 363
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 366
    :cond_3
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v3

    .line 367
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 368
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v1, v2, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 370
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 372
    :cond_5
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v2, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 373
    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 375
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 376
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v3

    .line 377
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_6

    .line 378
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v2, v4, v5}, Lcom/android/phone/Ringer;->access$302(Lcom/android/phone/Ringer;J)J

    .line 380
    :cond_6
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 370
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 384
    :pswitch_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "mRingHandler: STOP_RING..."

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 385
    :cond_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "r":Landroid/media/Ringtone;
    check-cast v1, Landroid/media/Ringtone;

    .line 386
    .restart local v1    # "r":Landroid/media/Ringtone;
    if-eqz v1, :cond_9

    .line 387
    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 393
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 389
    :cond_9
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_8

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    goto :goto_1

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
