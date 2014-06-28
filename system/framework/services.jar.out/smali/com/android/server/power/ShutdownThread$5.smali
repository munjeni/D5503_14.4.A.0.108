.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 438
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 440
    .local v5, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v10, "bluetooth_manager"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 445
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    :cond_0
    move v1, v8

    .line 446
    .local v1, "bluetoothOff":Z
    :goto_0
    if-nez v1, :cond_1

    .line 447
    const-string v10, "ShutdownThread"

    const-string v11, "Disabling Bluetooth..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_1
    :goto_1
    const/4 v6, 0x1

    .line 457
    .local v6, "radioOff":Z
    :try_start_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 458
    const-string v10, "phone_msim"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v4

    .line 460
    .local v4, "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v4, :cond_7

    .line 463
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 465
    if-eqz v6, :cond_4

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v10

    if-nez v10, :cond_4

    move v6, v8

    .line 466
    :goto_3
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 467
    const-string v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Turning off radio on Subscription :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v10, 0x0

    invoke-interface {v4, v10, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 464
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "bluetoothOff":Z
    .end local v3    # "i":I
    .end local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v6    # "radioOff":Z
    :cond_3
    move v1, v9

    .line 445
    goto :goto_0

    .line 450
    :catch_0
    move-exception v2

    .line 451
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto :goto_1

    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .restart local v6    # "radioOff":Z
    :cond_4
    move v6, v9

    .line 465
    goto :goto_3

    .line 473
    .end local v3    # "i":I
    .end local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_5
    if-eqz v5, :cond_6

    :try_start_2
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v10

    if-nez v10, :cond_9

    :cond_6
    move v6, v8

    .line 474
    :goto_4
    if-nez v6, :cond_7

    .line 475
    const-string v10, "ShutdownThread"

    const-string v11, "Turning off radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 484
    :cond_7
    :goto_5
    const-string v10, "ShutdownThread"

    const-string v11, "Waiting for Bluetooth and Radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_e

    .line 487
    if-nez v1, :cond_8

    .line 489
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    if-nez v10, :cond_a

    move v1, v8

    .line 494
    :goto_7
    if-eqz v1, :cond_8

    .line 495
    const-string v10, "ShutdownThread"

    const-string v11, "Bluetooth turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_8
    if-nez v6, :cond_d

    .line 500
    const/4 v7, 0x1

    .line 501
    .local v7, "subRadioOff":Z
    :try_start_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 502
    const-string v10, "phone_msim"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v4

    .line 504
    .restart local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v10

    if-ge v3, v10, :cond_c

    .line 506
    if-eqz v7, :cond_b

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v10

    if-nez v10, :cond_b

    move v7, v8

    .line 505
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v3    # "i":I
    .end local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v7    # "subRadioOff":Z
    :cond_9
    move v6, v9

    .line 473
    goto :goto_4

    .line 479
    :catch_1
    move-exception v2

    .line 480
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    const/4 v6, 0x1

    goto :goto_5

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_a
    move v1, v9

    .line 489
    goto :goto_7

    .line 490
    :catch_2
    move-exception v2

    .line 491
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    const/4 v1, 0x1

    goto :goto_7

    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .restart local v7    # "subRadioOff":Z
    :cond_b
    move v7, v9

    .line 506
    goto :goto_9

    .line 508
    :cond_c
    move v6, v7

    .line 516
    .end local v3    # "i":I
    .end local v4    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_a
    if-eqz v6, :cond_d

    .line 517
    const-string v10, "ShutdownThread"

    const-string v11, "Radio turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v7    # "subRadioOff":Z
    :cond_d
    if-eqz v6, :cond_12

    if-eqz v1, :cond_12

    .line 522
    const-string v10, "ShutdownThread"

    const-string v11, "Radio and Bluetooth shutdown complete."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v8, v10, v9

    .line 528
    :cond_e
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aget-boolean v9, v10, v9

    if-nez v9, :cond_f

    .line 529
    const-string v9, "ShutdownThread"

    const-string v10, "Timed out waiting for Radio and Bluetooth shutdown."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_f
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mModemDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v9}, Lcom/android/server/power/ShutdownThread;->access$400(Lcom/android/server/power/ShutdownThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 532
    iget-object v8, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v8}, Lcom/android/server/power/ShutdownThread;->actionDone()V

    .line 533
    return-void

    .line 510
    .restart local v7    # "subRadioOff":Z
    :cond_10
    :try_start_5
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v10

    if-nez v10, :cond_11

    move v6, v8

    :goto_b
    goto :goto_a

    :cond_11
    move v6, v9

    goto :goto_b

    .line 512
    :catch_3
    move-exception v2

    .line 513
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v10, "ShutdownThread"

    const-string v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    const/4 v6, 0x1

    goto :goto_a

    .line 526
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v7    # "subRadioOff":Z
    :cond_12
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_6
.end method
