.class public Lcom/android/phone/SomcPhoneUtils;
.super Ljava/lang/Object;
.source "SomcPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcPhoneUtils$1;,
        Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static convertNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/Constants$NumberConversionInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "numberConversionInfo"    # Lcom/android/phone/Constants$NumberConversionInfo;

    .prologue
    .line 958
    if-eqz p1, :cond_1

    const-string v4, "tel"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 966
    .end local p2    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 961
    .restart local p2    # "number":Ljava/lang/String;
    :cond_1
    iget-object v0, p3, Lcom/android/phone/Constants$NumberConversionInfo;->sourceNumberArray:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 962
    .local v1, "convertionNumber":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 963
    iget-object p2, p3, Lcom/android/phone/Constants$NumberConversionInfo;->convertedNumber:Ljava/lang/String;

    goto :goto_0

    .line 961
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static doesDualMicNoiseSuppressionExist(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 676
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 677
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "dualmic_enabled"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "dualMic":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 679
    :cond_0
    const/4 v2, 0x1

    .line 681
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static filterNumberPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 842
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 855
    .end local p0    # "number":Ljava/lang/String;
    .local v0, "arr$":[Ljava/lang/String;
    .local v1, "i$":I
    .local v2, "len$":I
    .local v4, "prefixes":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 847
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "prefixes":[Ljava/lang/String;
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "*31#"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "#31#"

    aput-object v6, v4, v5

    .line 850
    .restart local v4    # "prefixes":[Ljava/lang/String;
    move-object v0, v4

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 851
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 852
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 850
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 988
    if-nez p0, :cond_0

    .line 989
    const/4 v1, 0x0

    .line 995
    :goto_0
    return-object v1

    .line 991
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "\u202a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const-string v1, "\u202c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getAudioParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "keys"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 558
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 559
    .local v2, "context":Landroid/content/Context;
    const-string v9, "audio"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 560
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 561
    .local v5, "parameter":Ljava/lang/String;
    if-nez v5, :cond_1

    move-object v7, v8

    .line 575
    :cond_0
    :goto_0
    return-object v7

    .line 563
    :cond_1
    const/4 v6, 0x0

    .line 564
    .local v6, "validValues":[Ljava/lang/String;
    const-string v9, "voice_personal_eq"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 565
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 570
    :cond_2
    :goto_1
    if-nez v6, :cond_5

    move-object v7, v8

    goto :goto_0

    .line 566
    :cond_3
    const-string v9, "wide_voice_enable"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "st_enable"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 568
    :cond_4
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    .end local v6    # "validValues":[Ljava/lang/String;
    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .restart local v6    # "validValues":[Ljava/lang/String;
    goto :goto_1

    .line 572
    :cond_5
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_6

    aget-object v7, v0, v3

    .line 573
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 572
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    move-object v7, v8

    .line 575
    goto :goto_0
.end method

.method static getCallFailedString(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 294
    .local v2, "resID":I
    if-nez p1, :cond_1

    .line 297
    const v2, 0x7f0b0021

    .line 534
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    const v2, 0x7f0b0021

    .line 537
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 299
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getRawDisconnectCause()I

    move-result v1

    .line 303
    .local v1, "rawCause":I
    sparse-switch v1, :sswitch_data_0

    .line 452
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 453
    .local v0, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/SomcPhoneUtils$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 464
    const v2, 0x7f0b0021

    goto :goto_0

    .line 305
    .end local v0    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :sswitch_0
    const v2, 0x7f0b0022

    .line 306
    goto :goto_0

    .line 308
    :sswitch_1
    const v2, 0x7f0b0023

    .line 309
    goto :goto_0

    .line 311
    :sswitch_2
    const v2, 0x7f0b0024

    .line 312
    goto :goto_0

    .line 314
    :sswitch_3
    const v2, 0x7f0b0025

    .line 315
    goto :goto_0

    .line 317
    :sswitch_4
    const v2, 0x7f0b0026

    .line 318
    goto :goto_0

    .line 320
    :sswitch_5
    const v2, 0x7f0b0027

    .line 321
    goto :goto_0

    .line 323
    :sswitch_6
    const v2, 0x7f0b0028

    .line 324
    goto :goto_0

    .line 326
    :sswitch_7
    const v2, 0x7f0b0029

    .line 327
    goto :goto_0

    .line 329
    :sswitch_8
    const v2, 0x7f0b002a

    .line 330
    goto :goto_0

    .line 332
    :sswitch_9
    const v2, 0x7f0b002b

    .line 333
    goto :goto_0

    .line 335
    :sswitch_a
    const v2, 0x7f0b002c

    .line 336
    goto :goto_0

    .line 338
    :sswitch_b
    const v2, 0x7f0b002d

    .line 339
    goto :goto_0

    .line 341
    :sswitch_c
    const v2, 0x7f0b002e

    .line 342
    goto :goto_0

    .line 344
    :sswitch_d
    const v2, 0x7f0b002f

    .line 345
    goto :goto_0

    .line 347
    :sswitch_e
    const v2, 0x7f0b0030

    .line 348
    goto :goto_0

    .line 350
    :sswitch_f
    const v2, 0x7f0b0031

    .line 351
    goto :goto_0

    .line 353
    :sswitch_10
    const v2, 0x7f0b0032

    .line 354
    goto :goto_0

    .line 356
    :sswitch_11
    const v2, 0x7f0b0033

    .line 357
    goto/16 :goto_0

    .line 359
    :sswitch_12
    const v2, 0x7f0b0034

    .line 360
    goto/16 :goto_0

    .line 362
    :sswitch_13
    const v2, 0x7f0b0035

    .line 363
    goto/16 :goto_0

    .line 365
    :sswitch_14
    const v2, 0x7f0b0036

    .line 366
    goto/16 :goto_0

    .line 368
    :sswitch_15
    const v2, 0x7f0b0037

    .line 369
    goto/16 :goto_0

    .line 371
    :sswitch_16
    const v2, 0x7f0b0038

    .line 372
    goto/16 :goto_0

    .line 374
    :sswitch_17
    const v2, 0x7f0b0039

    .line 375
    goto/16 :goto_0

    .line 377
    :sswitch_18
    const v2, 0x7f0b003a

    .line 378
    goto/16 :goto_0

    .line 380
    :sswitch_19
    const v2, 0x7f0b003b

    .line 381
    goto/16 :goto_0

    .line 383
    :sswitch_1a
    const v2, 0x7f0b003c

    .line 384
    goto/16 :goto_0

    .line 386
    :sswitch_1b
    const v2, 0x7f0b003d

    .line 387
    goto/16 :goto_0

    .line 389
    :sswitch_1c
    const v2, 0x7f0b003e

    .line 390
    goto/16 :goto_0

    .line 392
    :sswitch_1d
    const v2, 0x7f0b003f

    .line 393
    goto/16 :goto_0

    .line 395
    :sswitch_1e
    const v2, 0x7f0b0040

    .line 396
    goto/16 :goto_0

    .line 398
    :sswitch_1f
    const v2, 0x7f0b0041

    .line 399
    goto/16 :goto_0

    .line 401
    :sswitch_20
    const v2, 0x7f0b0042

    .line 402
    goto/16 :goto_0

    .line 404
    :sswitch_21
    const v2, 0x7f0b0043

    .line 405
    goto/16 :goto_0

    .line 407
    :sswitch_22
    const v2, 0x7f0b0044

    .line 408
    goto/16 :goto_0

    .line 410
    :sswitch_23
    const v2, 0x7f0b0045

    .line 411
    goto/16 :goto_0

    .line 413
    :sswitch_24
    const v2, 0x7f0b0046

    .line 414
    goto/16 :goto_0

    .line 416
    :sswitch_25
    const v2, 0x7f0b0047

    .line 417
    goto/16 :goto_0

    .line 419
    :sswitch_26
    const v2, 0x7f0b0048

    .line 420
    goto/16 :goto_0

    .line 422
    :sswitch_27
    const v2, 0x7f0b0049

    .line 423
    goto/16 :goto_0

    .line 425
    :sswitch_28
    const v2, 0x7f0b004a

    .line 426
    goto/16 :goto_0

    .line 428
    :sswitch_29
    const v2, 0x7f0b004b

    .line 429
    goto/16 :goto_0

    .line 431
    :sswitch_2a
    const v2, 0x7f0b004c

    .line 432
    goto/16 :goto_0

    .line 434
    :sswitch_2b
    const v2, 0x7f0b004d

    .line 435
    goto/16 :goto_0

    .line 437
    :sswitch_2c
    const v2, 0x7f0b004e

    .line 438
    goto/16 :goto_0

    .line 440
    :sswitch_2d
    const v2, 0x7f0b004f

    .line 441
    goto/16 :goto_0

    .line 443
    :sswitch_2e
    const v2, 0x7f0b0050

    .line 444
    goto/16 :goto_0

    .line 446
    :sswitch_2f
    const v2, 0x7f0b0051

    .line 447
    goto/16 :goto_0

    .line 449
    :sswitch_30
    const v2, 0x7f0b0052

    .line 450
    goto/16 :goto_0

    .line 455
    .restart local v0    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :pswitch_0
    const v2, 0x7f0b001e

    .line 456
    goto/16 :goto_0

    .line 458
    :pswitch_1
    const v2, 0x7f0b001f

    .line 459
    goto/16 :goto_0

    .line 461
    :pswitch_2
    const v2, 0x7f0b005c

    .line 462
    goto/16 :goto_0

    .line 471
    .end local v0    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v1    # "rawCause":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 472
    .restart local v0    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/SomcPhoneUtils$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 529
    const v2, 0x7f0b0021

    goto/16 :goto_0

    .line 474
    :pswitch_3
    const v2, 0x7f0b0020

    .line 475
    goto/16 :goto_0

    .line 478
    :pswitch_4
    const v2, 0x7f0b0013

    .line 479
    goto/16 :goto_0

    .line 482
    :pswitch_5
    const v2, 0x7f0b001b

    .line 483
    goto/16 :goto_0

    .line 486
    :pswitch_6
    const v2, 0x7f0b001a

    .line 487
    goto/16 :goto_0

    .line 490
    :pswitch_7
    const v2, 0x7f0b001e

    .line 491
    goto/16 :goto_0

    .line 494
    :pswitch_8
    const v2, 0x7f0b001f

    .line 495
    goto/16 :goto_0

    .line 500
    :pswitch_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isIccInvalidCard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 501
    const v2, 0x7f0b001d

    goto/16 :goto_0

    .line 503
    :cond_3
    const v2, 0x7f0b005c

    .line 506
    goto/16 :goto_0

    .line 509
    :pswitch_a
    const v2, 0x7f0b01d0

    .line 510
    goto/16 :goto_0

    .line 513
    :pswitch_b
    const v2, 0x7f0b01d2

    .line 514
    goto/16 :goto_0

    .line 517
    :pswitch_c
    const v2, 0x7f0b01d1

    .line 518
    goto/16 :goto_0

    .line 521
    :pswitch_d
    const v2, 0x7f0b01cd

    .line 522
    goto/16 :goto_0

    .line 525
    :pswitch_e
    const v2, 0x7f0b01ce

    .line 526
    goto/16 :goto_0

    .line 303
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x15 -> :sswitch_8
        0x16 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x1b -> :sswitch_c
        0x1c -> :sswitch_d
        0x1d -> :sswitch_e
        0x1e -> :sswitch_f
        0x1f -> :sswitch_10
        0x22 -> :sswitch_11
        0x26 -> :sswitch_12
        0x29 -> :sswitch_13
        0x2a -> :sswitch_14
        0x2b -> :sswitch_15
        0x2c -> :sswitch_16
        0x2f -> :sswitch_17
        0x31 -> :sswitch_18
        0x32 -> :sswitch_19
        0x37 -> :sswitch_1a
        0x39 -> :sswitch_1b
        0x3a -> :sswitch_1c
        0x3f -> :sswitch_1d
        0x41 -> :sswitch_1e
        0x44 -> :sswitch_1f
        0x45 -> :sswitch_20
        0x46 -> :sswitch_21
        0x4f -> :sswitch_22
        0x51 -> :sswitch_23
        0x57 -> :sswitch_24
        0x58 -> :sswitch_25
        0x5b -> :sswitch_26
        0x5f -> :sswitch_27
        0x60 -> :sswitch_28
        0x61 -> :sswitch_29
        0x62 -> :sswitch_2a
        0x63 -> :sswitch_2b
        0x64 -> :sswitch_2c
        0x65 -> :sswitch_2d
        0x66 -> :sswitch_2e
        0x6f -> :sswitch_2f
        0x7f -> :sswitch_30
    .end sparse-switch

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 472
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method static getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "numberPresentation"    # I

    .prologue
    .line 271
    const-string v0, ""

    .line 273
    .local v0, "name":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 274
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne p2, v1, :cond_3

    .line 275
    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_1

    .line 276
    const v1, 0x7f0b0104

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v1, v2, :cond_2

    .line 278
    const v1, 0x7f0b0105

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 280
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_3
    invoke-static {p0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_4
    invoke-static {p0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getNumberFromCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 3
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, 0x0

    .line 182
    if-nez p0, :cond_0

    move-object v0, v1

    .line 184
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-object v1

    .line 182
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 184
    .restart local v0    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "prefFile"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 600
    .local p2, "defValue":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 602
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 603
    check-cast p2, Ljava/lang/String;

    .end local p2    # "defValue":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    :goto_0
    return-object v1

    .line 605
    .restart local p2    # "defValue":Ljava/lang/Object;, "TT;"
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 606
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 608
    .restart local p2    # "defValue":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCarMode()Z
    .locals 2

    .prologue
    .line 918
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isDualMicNoiseSuppressionOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 662
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 663
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "dualmic_enabled"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "dualMic":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    const/4 v2, 0x1

    .line 667
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isEmergencyCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, "isEmergencyCall":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 219
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 224
    .end local v2    # "number":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "isEmergencyNumber":Z
    if-eqz p0, :cond_1

    .line 195
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 197
    if-nez v0, :cond_1

    .line 202
    const-string v1, "112"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "911"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x1

    .line 208
    :cond_1
    return v0
.end method

.method static isMessagingEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 976
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 978
    const/4 v0, 0x0

    .line 980
    :cond_0
    return v0
.end method

.method static isNationalRoaming(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p0, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "equalsMcc":Z
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "simNumeric":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 241
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 242
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 243
    const-string v4, "SomcPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isNationalRoaming returns "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_1

    const-string v3, "same"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    return v0

    .line 243
    :cond_1
    const-string v3, "different"

    goto :goto_0
.end method

.method public static isSystemOrSmartCardPackage(Landroid/content/Context;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 809
    const/16 v9, 0xbad

    if-ne p1, v9, :cond_1

    .line 828
    :cond_0
    :goto_0
    return v7

    .line 814
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 815
    .local v5, "packages":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v9, v5

    if-gtz v9, :cond_3

    :cond_2
    move v7, v8

    .line 816
    goto :goto_0

    .line 818
    :cond_3
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 820
    .local v4, "pack":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 821
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_4

    move v7, v8

    .line 822
    goto :goto_0

    .line 824
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 825
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "SomcPhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package name not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isTablet()Z
    .locals 3

    .prologue
    .line 928
    const-string v1, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "characteristics":Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabletUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->log(Ljava/lang/String;)V

    .line 930
    :cond_0
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 948
    const-string v0, "SomcPhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void
.end method

.method static needShowCallEndedInteraction(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 874
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v8

    .line 875
    .local v8, "o":Ljava/lang/Object;
    sget-boolean v11, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "needShowCallEndedInteraction  o="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/SomcPhoneUtils;->log(Ljava/lang/String;)V

    .line 876
    :cond_0
    instance-of v11, v8, Lcom/android/phone/SomcCallerInfo;

    if-nez v11, :cond_1

    const/4 v11, 0x0

    .line 907
    :goto_0
    return v11

    .line 878
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v11

    sget v12, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v11, v12, :cond_6

    const/4 v3, 0x1

    .line 880
    .local v3, "isNumberPresent":Z
    :goto_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_7

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v4, 0x1

    .line 883
    .local v4, "isRegularNumber":Z
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v11, v12, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v11, v12, :cond_8

    :cond_2
    const/4 v2, 0x1

    .line 885
    .local v2, "isEndedByOtherOrSelf":Z
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    .line 887
    .local v9, "phoneApp":Lcom/android/phone/PhoneGlobals;
    iget-object v11, v9, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v11}, Lcom/android/phone/CallNotifier;->hasBeenConferenced()Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v7, 0x1

    .line 888
    .local v7, "isSingleCall":Z
    :goto_4
    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v6

    .line 889
    .local v6, "isShowingCallScreen":Z
    const-string v11, "power"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 890
    .local v10, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->isBluetoothConnected()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_3
    const/4 v1, 0x1

    .line 892
    .local v1, "isBluetoothOrPhfConnected":Z
    :goto_5
    invoke-virtual {v10}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v11

    if-nez v11, :cond_b

    if-nez v1, :cond_b

    const/4 v5, 0x1

    .line 895
    .local v5, "isScreenOffAndBthPhfNotConnected":Z
    :goto_6
    sget-boolean v11, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v11, :cond_4

    .line 896
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "needShowCallEndedInteraction  isNumberPresent:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,isSingleCall:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,isRegularNumber:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,isEndedByOtherOrSelf:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,isShowingCallScreen:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,isBluetoothOrPhfConnected:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,isScreenOffAndBthPhfNotConnected:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/SomcPhoneUtils;->log(Ljava/lang/String;)V

    .line 907
    :cond_4
    if-eqz v3, :cond_c

    if-eqz v7, :cond_c

    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    if-nez v6, :cond_5

    if-eqz v5, :cond_c

    :cond_5
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 879
    .end local v1    # "isBluetoothOrPhfConnected":Z
    .end local v2    # "isEndedByOtherOrSelf":Z
    .end local v3    # "isNumberPresent":Z
    .end local v4    # "isRegularNumber":Z
    .end local v5    # "isScreenOffAndBthPhfNotConnected":Z
    .end local v6    # "isShowingCallScreen":Z
    .end local v7    # "isSingleCall":Z
    .end local v9    # "phoneApp":Lcom/android/phone/PhoneGlobals;
    .end local v10    # "powerManager":Landroid/os/PowerManager;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 880
    .restart local v3    # "isNumberPresent":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 883
    .restart local v4    # "isRegularNumber":Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 887
    .restart local v2    # "isEndedByOtherOrSelf":Z
    .restart local v9    # "phoneApp":Lcom/android/phone/PhoneGlobals;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 890
    .restart local v6    # "isShowingCallScreen":Z
    .restart local v7    # "isSingleCall":Z
    .restart local v10    # "powerManager":Landroid/os/PowerManager;
    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    .line 892
    .restart local v1    # "isBluetoothOrPhfConnected":Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_6

    .line 907
    .restart local v5    # "isScreenOffAndBthPhfNotConnected":Z
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method static queryRedirectingInfo(Ljava/lang/String;Landroid/content/ContentResolver;Lcom/android/phone/OnRedirectingQueryCompleteListener;)V
    .locals 8
    .param p0, "redirectingNumber"    # Ljava/lang/String;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "listener"    # Lcom/android/phone/OnRedirectingQueryCompleteListener;

    .prologue
    const/4 v2, 0x0

    .line 122
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 124
    .local v3, "contactRef":Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/phone/OnRedirectingQueryCompleteListener;)V

    .line 126
    .local v0, "nameAsyncQueryHandler":Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;
    const/4 v1, 0x0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method static restoreDualMicNoiseSuppressionUsed(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 703
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->doesDualMicNoiseSuppressionExist(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 704
    const-string v3, "somc_sound_enhance_pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 707
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 709
    .local v0, "enableNoiseSuppression":Z
    const-string v3, "dual_mic_noise_suppression_key"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 710
    .local v2, "useNoiseSuppr":Z
    invoke-static {p0, v2}, Lcom/android/phone/SomcPhoneUtils;->setDualMicNoiseSuppression(Landroid/content/Context;Z)V

    .line 712
    .end local v0    # "enableNoiseSuppression":Z
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    .end local v2    # "useNoiseSuppr":Z
    :cond_0
    return-void
.end method

.method static restoreEqualizerUsed()V
    .locals 5

    .prologue
    .line 719
    const-string v1, "voice_personal_eq"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 728
    .local v0, "equalizerValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 721
    .end local v0    # "equalizerValue":Ljava/lang/String;
    :cond_0
    const-string v1, "somc_sound_enhance_pref"

    const-string v2, "equalizer_key"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b019d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/SomcPhoneUtils;->getSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 726
    .restart local v0    # "equalizerValue":Ljava/lang/String;
    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "voice_personal_eq"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static restoreSlowTalkUsed()V
    .locals 5

    .prologue
    .line 749
    const-string v1, "st_enable"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 756
    .local v0, "slowTalkValue":Z
    :goto_0
    return-void

    .line 751
    .end local v0    # "slowTalkValue":Z
    :cond_0
    const-string v1, "somc_sound_enhance_pref"

    const-string v2, "slow_talk_key"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/SomcPhoneUtils;->getSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 754
    .restart local v0    # "slowTalkValue":Z
    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "st_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static restoreSpeakerVoiceEnhancementUsed()V
    .locals 5

    .prologue
    .line 735
    const-string v1, "wide_voice_enable"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 742
    .local v0, "speakerVoiceEnhancementValue":Z
    :goto_0
    return-void

    .line 737
    .end local v0    # "speakerVoiceEnhancementValue":Z
    :cond_0
    const-string v1, "somc_sound_enhance_pref"

    const-string v2, "speaker_voice_enhancement_key"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/SomcPhoneUtils;->getSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 740
    .restart local v0    # "speakerVoiceEnhancementValue":Z
    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "wide_voice_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setAudioParameter(Ljava/lang/String;)V
    .locals 3
    .param p0, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 547
    .local v1, "context":Landroid/content/Context;
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 548
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method static setDualMicNoiseSuppression(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 616
    invoke-static {p0, p1}, Lcom/android/phone/SomcPhoneUtils;->storeDualMicNoiseSuppressionSetting(Landroid/content/Context;Z)V

    .line 617
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 618
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    .line 619
    const-string v1, "dualmic_enabled=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    const-string v1, "dualmic_enabled=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static setEqualizer(Ljava/lang/String;)V
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string v0, "somc_sound_enhance_pref"

    const-string v1, "equalizer_key"

    invoke-static {v0, v1, p0}, Lcom/android/phone/SomcPhoneUtils;->storeSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 632
    const-string v0, "%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "voice_personal_eq"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method static setSlowTalk(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 653
    const-string v0, "somc_sound_enhance_pref"

    const-string v1, "slow_talk_key"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->storeSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    const-string v0, "%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "st_enable"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method static setSpeakerVoiceEnhancement(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 642
    const-string v0, "somc_sound_enhance_pref"

    const-string v1, "speaker_voice_enhancement_key"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->storeSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    const-string v0, "%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "wide_voice_enable"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method static silenceRinger()V
    .locals 2

    .prologue
    .line 790
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 791
    .local v0, "notifier":Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 794
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    .line 795
    const-string v1, "silence ringer(trigger by VOLUME key or open reject message list and so on)"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->log(Ljava/lang/String;)V

    .line 797
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 799
    :cond_1
    return-void
.end method

.method static startIllumination(Landroid/content/Context;Landroid/os/IPowerManager;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "powerManager"    # Landroid/os/IPowerManager;

    .prologue
    .line 760
    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-interface {p1, v1, v2}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.illumination.intent.action.START_LED_PULSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    const-string v2, "com.sonyericsson.illumination.intent.extra.value.BUTTON_2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    const-string v1, "com.sonyericsson.illumination.intent.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_PULSE_ON_TIME"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 770
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_PULSE_OFF_TIME"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_NO_OF_PULSES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 773
    return-void

    .line 761
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static stopIllumination(Landroid/content/Context;Landroid/os/IPowerManager;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "powerManager"    # Landroid/os/IPowerManager;

    .prologue
    .line 777
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v1, v2}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.illumination.intent.action.STOP_LED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    const-string v2, "com.sonyericsson.illumination.intent.extra.value.BUTTON_2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const-string v1, "com.sonyericsson.illumination.intent.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 787
    return-void

    .line 778
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static storeDualMicNoiseSuppressionSetting(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 691
    const-string v2, "somc_sound_enhance_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 693
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 694
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dual_mic_noise_suppression_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 695
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 696
    return-void
.end method

.method static storeSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "prefFile"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 586
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 587
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 588
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 592
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 593
    return-void

    .line 589
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 590
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static updateRequestedOrientation(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 940
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
