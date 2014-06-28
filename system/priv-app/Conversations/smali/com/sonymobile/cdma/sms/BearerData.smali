.class public final Lcom/sonymobile/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cdma/sms/BearerData$1;,
        Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;,
        Lcom/sonymobile/cdma/sms/BearerData$CodingException;
    }
.end annotation


# static fields
.field public static final ALERT_DEFAULT:I = 0x0

.field public static final ALERT_HIGH_PRIO:I = 0x3

.field public static final ALERT_LOW_PRIO:I = 0x1

.field public static final ALERT_MEDIUM_PRIO:I = 0x2

.field public static final CMAS_RECORD_TYPE_0:I = 0x0

.field public static final CMAS_RECORD_TYPE_1:I = 0x1

.field public static final CMAS_RECORD_TYPE_2:I = 0x2

.field public static final DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final DISPLAY_MODE_USER:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final ERROR_UNDEFINED:I = 0xff

.field public static final LANGUAGE_CHINESE:I = 0x6

.field public static final LANGUAGE_ENGLISH:I = 0x1

.field public static final LANGUAGE_FRENCH:I = 0x2

.field public static final LANGUAGE_HEBREW:I = 0x7

.field public static final LANGUAGE_JAPANESE:I = 0x4

.field public static final LANGUAGE_KOREAN:I = 0x5

.field public static final LANGUAGE_SPANISH:I = 0x3

.field public static final LANGUAGE_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "BearerData"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final PRIORITY_EMERGENCY:I = 0x3

.field public static final PRIORITY_INTERACTIVE:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_URGENT:I = 0x2

.field public static final PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final PRIVACY_RESTRICTED:I = 0x1

.field public static final PRIVACY_SECRET:I = 0x3

.field public static final RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final RELATIVE_TIME_NOW:I = 0xf6

.field public static final RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final STATUS_ACCEPTED:I = 0x0

.field public static final STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CANCEL_FAILED:I = 0x6

.field public static final STATUS_DELIVERED:I = 0x2

.field public static final STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final STATUS_INVALID_DESTINATION:I = 0xa

.field public static final STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x5

.field public static final STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final STATUS_UNDEFINED:I = 0xff

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field public alert:I

.field public alertIndicatorSet:Z

.field public callbackNumber:Lcom/sonymobile/cdma/sms/CdmaSmsAddress;

.field public deferredDeliveryTimeRelative:I

.field public deferredDeliveryTimeRelativeSet:Z

.field public deliveryAckReq:Z

.field public depositIndex:I

.field public displayMode:I

.field public displayModeSet:Z

.field public errorClass:I

.field public language:I

.field public languageIndicatorSet:Z

.field public messageId:I

.field public messageStatus:I

.field public messageStatusSet:Z

.field public messageType:I

.field public msgCenterTimeStamp:J

.field public numberOfMessages:I

.field public priority:I

.field public priorityIndicatorSet:Z

.field public privacy:I

.field public privacyIndicatorSet:Z

.field public readAckReq:Z

.field public reportReq:Z

.field public userAckReq:Z

.field public userData:Lcom/sonymobile/cdma/sms/UserData;

.field public userResponseCode:I

.field public userResponseCodeSet:Z

.field public validityPeriodRelative:I

.field public validityPeriodRelativeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 87
    iput v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->priority:I

    .line 98
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 99
    iput v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->privacy:I

    .line 110
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 111
    iput v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->alert:I

    .line 123
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->displayModeSet:Z

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->displayMode:I

    .line 142
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 143
    iput v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->language:I

    .line 180
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageStatusSet:Z

    .line 181
    iput v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->errorClass:I

    .line 182
    iput v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageStatus:I

    .line 199
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 317
    return-void
.end method

.method public static encode(Lcom/sonymobile/cdma/sms/BearerData;)[B
    .locals 6
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;

    .prologue
    .line 606
    :try_start_0
    new-instance v1, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;-><init>(I)V

    .line 607
    .local v1, "outStream":Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 608
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeMessageId(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 609
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    if-eqz v2, :cond_0

    .line 610
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 611
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeUserData(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 613
    :cond_0
    iget-wide v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->msgCenterTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 614
    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 615
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeMessageCenterTimeStamp(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 617
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->callbackNumber:Lcom/sonymobile/cdma/sms/CdmaSmsAddress;

    if-eqz v2, :cond_2

    .line 618
    const/16 v2, 0x8

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 619
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 621
    :cond_2
    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->userAckReq:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->readAckReq:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->reportReq:Z

    if-eqz v2, :cond_4

    .line 622
    :cond_3
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 623
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeReplyOption(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 625
    :cond_4
    iget v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v2, :cond_5

    .line 626
    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 627
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeMsgCount(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 629
    :cond_5
    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v2, :cond_6

    .line 630
    const/16 v2, 0x8

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 631
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 633
    :cond_6
    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v2, :cond_7

    .line 634
    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 635
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 637
    :cond_7
    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v2, :cond_8

    .line 638
    const/16 v2, 0x8

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 639
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 641
    :cond_8
    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v2, :cond_9

    .line 642
    const/16 v2, 0x8

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 643
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeDisplayMode(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 645
    :cond_9
    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v2, :cond_a

    .line 646
    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 647
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 649
    :cond_a
    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v2, :cond_b

    .line 650
    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 651
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 653
    :cond_b
    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_c

    .line 654
    const/16 v2, 0x8

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 655
    invoke-static {p0, v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeMsgStatus(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 657
    :cond_c
    invoke-virtual {v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->toByteArray()[B
    :try_end_0
    .catch Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 663
    .end local v1    # "outStream":Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    :goto_0
    return-object v2

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "ex":Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v0    # "ex":Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 660
    :catch_1
    move-exception v0

    .line 661
    .local v0, "ex":Lcom/sonymobile/cdma/sms/BearerData$CodingException;
    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 286
    :try_start_0
    new-instance v4, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;-><init>(I)V

    .line 287
    .local v4, "outStream":Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 288
    .local v3, "msgLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 289
    sget-object v5, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 290
    .local v0, "charCode":I
    if-ne v0, v8, :cond_1

    .line 291
    if-eqz p1, :cond_0

    .line 292
    const/4 v5, 0x7

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 288
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_0
    new-instance v5, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot ASCII encode ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v0    # "charCode":I
    .end local v2    # "i":I
    .end local v3    # "msgLen":I
    .end local v4    # "outStream":Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    :catch_0
    move-exception v1

    .line 302
    .local v1, "ex":Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "7bit ASCII encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 297
    .end local v1    # "ex":Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
    .restart local v0    # "charCode":I
    .restart local v2    # "i":I
    .restart local v3    # "msgLen":I
    .restart local v4    # "outStream":Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    :cond_1
    const/4 v5, 0x7

    :try_start_1
    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 300
    .end local v0    # "charCode":I
    :cond_2
    invoke-virtual {v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private static encode7bitGsm(Ljava/lang/String;IZ)Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "septetOffset"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 326
    if-nez p2, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, v3, v4, v5}, Lcom/sonymobile/cdma/sms/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v1

    .line 327
    .local v1, "fullData":[B
    new-instance v2, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/sonymobile/cdma/sms/BearerData$1;)V

    .line 328
    .local v2, "result":Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 329
    const/4 v3, 0x1

    iget-object v4, v2, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/sonymobile/cdma/sms/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    return-object v2

    .end local v1    # "fullData":[B
    .end local v2    # "result":Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    .line 326
    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "ex":Lcom/sonymobile/cdma/sms/EncodeException;
    new-instance v3, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encodeCallbackNumber(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;,
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 511
    iget-object v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->callbackNumber:Lcom/sonymobile/cdma/sms/CdmaSmsAddress;

    .line 512
    .local v0, "addr":Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/sonymobile/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/sonymobile/cdma/sms/CdmaSmsAddress;)V

    .line 513
    const/16 v3, 0x9

    .line 514
    .local v3, "paramBits":I
    const/4 v1, 0x0

    .line 515
    .local v1, "dataBits":I
    iget v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_2

    .line 516
    add-int/lit8 v3, v3, 0x7

    .line 517
    iget v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x8

    .line 521
    :goto_0
    add-int/2addr v3, v1

    .line 522
    div-int/lit8 v8, v3, 0x8

    rem-int/lit8 v5, v3, 0x8

    if-lez v5, :cond_3

    move v5, v6

    :goto_1
    add-int v4, v8, v5

    .line 523
    .local v4, "paramBytes":I
    mul-int/lit8 v5, v4, 0x8

    sub-int v2, v5, v3

    .line 524
    .local v2, "paddingBits":I
    invoke-virtual {p1, v9, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 525
    iget v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v6, v5}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 526
    iget v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_0

    .line 527
    const/4 v5, 0x3

    iget v6, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v5, v6}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 528
    const/4 v5, 0x4

    iget v6, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v5, v6}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 530
    :cond_0
    iget v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v9, v5}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 531
    iget-object v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v1, v5}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 532
    if-lez v2, :cond_1

    invoke-virtual {p1, v2, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 533
    :cond_1
    return-void

    .line 519
    .end local v2    # "paddingBits":I
    .end local v4    # "paramBytes":I
    :cond_2
    iget v5, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x4

    goto :goto_0

    :cond_3
    move v5, v7

    .line 522
    goto :goto_1
.end method

.method private static encodeCdmaSmsAddress(Lcom/sonymobile/cdma/sms/CdmaSmsAddress;)V
    .locals 3
    .param p0, "addr"    # Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 497
    iget v1, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    const-string v2, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v1, v2}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 504
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B

    goto :goto_0
.end method

.method private static encodeDisplayMode(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 575
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 576
    const/4 v0, 0x2

    iget v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->displayMode:I

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 577
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->skip(I)V

    .line 578
    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 479
    .local v3, "digits":I
    mul-int/lit8 v1, v3, 0x4

    .line 480
    .local v1, "dataBits":I
    div-int/lit8 v2, v1, 0x8

    .line 481
    .local v2, "dataBytes":I
    rem-int/lit8 v7, v1, 0x8

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    add-int/2addr v2, v7

    .line 482
    new-array v5, v2, [B

    .line 483
    .local v5, "rawData":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 484
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 485
    .local v0, "c":C
    const/4 v6, 0x0

    .line 486
    .local v6, "val":I
    const/16 v7, 0x31

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-gt v0, v7, :cond_1

    add-int/lit8 v6, v0, -0x30

    .line 491
    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v5, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 483
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 481
    .end local v0    # "c":C
    .end local v4    # "i":I
    .end local v5    # "rawData":[B
    .end local v6    # "val":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 487
    .restart local v0    # "c":C
    .restart local v4    # "i":I
    .restart local v5    # "rawData":[B
    .restart local v6    # "val":I
    :cond_1
    const/16 v7, 0x30

    if-ne v0, v7, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    .line 488
    :cond_2
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    .line 489
    :cond_3
    const/16 v7, 0x23

    if-ne v0, v7, :cond_4

    const/16 v6, 0xc

    goto :goto_2

    .line 490
    :cond_4
    const/4 v5, 0x0

    .line 493
    .end local v0    # "c":C
    .end local v5    # "rawData":[B
    .end local v6    # "val":I
    :cond_5
    return-object v5
.end method

.method private static encodeLanguageIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 568
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 569
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 570
    return-void
.end method

.method private static encodeMessageCenterTimeStamp(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    .line 423
    const/4 v7, 0x6

    invoke-virtual {p1, v9, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 425
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 426
    .local v0, "cal":Ljava/util/Calendar;
    iget-wide v7, p0, Lcom/sonymobile/cdma/sms/BearerData;->msgCenterTimeStamp:J

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 428
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 429
    .local v6, "year":I
    const/16 v7, 0x7cc

    if-lt v6, v7, :cond_1

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_1

    .line 430
    add-int/lit16 v6, v6, -0x76c

    .line 434
    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v9, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 436
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 437
    .local v4, "month":I
    add-int/lit8 v4, v4, 0x1

    .line 438
    invoke-static {v4}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v9, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 440
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 441
    .local v1, "day":I
    invoke-static {v1}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v9, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 443
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 444
    .local v2, "hour":I
    invoke-static {v2}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v9, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 446
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 447
    .local v3, "minute":I
    invoke-static {v3}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v9, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 449
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 450
    .local v5, "sercond":I
    invoke-static {v5}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v9, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 451
    return-void

    .line 431
    .end local v1    # "day":I
    .end local v2    # "hour":I
    .end local v3    # "minute":I
    .end local v4    # "month":I
    .end local v5    # "sercond":I
    :cond_1
    const/16 v7, 0x7d0

    if-lt v6, v7, :cond_0

    const/16 v7, 0x82f

    if-gt v6, v7, :cond_0

    .line 432
    add-int/lit16 v6, v6, -0x7d0

    goto :goto_0
.end method

.method private static encodeMessageId(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 4
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/16 v2, 0x8

    .line 274
    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 275
    const/4 v0, 0x4

    iget v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageType:I

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 276
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageId:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 277
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v2, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 278
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 279
    invoke-virtual {p1, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->skip(I)V

    .line 280
    return-void
.end method

.method private static encodeMsgCount(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 546
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 547
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 548
    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 591
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 592
    const/4 v0, 0x2

    iget v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->alert:I

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 593
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->skip(I)V

    .line 594
    return-void
.end method

.method private static encodeMsgStatus(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 538
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 539
    const/4 v0, 0x2

    iget v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->errorClass:I

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 540
    const/4 v0, 0x6

    iget v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 541
    return-void
.end method

.method private static encodePriorityIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 583
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 584
    const/4 v0, 0x2

    iget v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->priority:I

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 585
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->skip(I)V

    .line 586
    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 560
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 561
    const/4 v0, 0x2

    iget v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->privacy:I

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 562
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->skip(I)V

    .line 563
    return-void
.end method

.method private static encodeReplyOption(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 3
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 469
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 470
    iget-boolean v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->userAckReq:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 471
    iget-boolean v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->deliveryAckReq:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 472
    iget-boolean v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->readAckReq:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 473
    iget-boolean v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->reportReq:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 474
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 475
    return-void

    :cond_0
    move v0, v2

    .line 470
    goto :goto_0

    :cond_1
    move v0, v2

    .line 471
    goto :goto_1

    :cond_2
    move v0, v2

    .line 472
    goto :goto_2

    :cond_3
    move v0, v2

    .line 473
    goto :goto_3
.end method

.method private static encodeUserData(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;,
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8c

    const/16 v9, 0xa

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v5, 0x1

    .line 394
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    invoke-static {v4}, Lcom/sonymobile/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/sonymobile/cdma/sms/UserData;)V

    .line 396
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget-object v4, v4, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    if-le v4, v7, :cond_0

    .line 397
    new-instance v4, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded user data too large ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget-object v6, v6, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 402
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget-object v4, v4, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    iget-object v7, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v7, v7, Lcom/sonymobile/cdma/sms/UserData;->paddingBits:I

    sub-int v0, v4, v7

    .line 403
    .local v0, "dataBits":I
    add-int/lit8 v2, v0, 0xd

    .line 404
    .local v2, "paramBits":I
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_2

    .line 406
    :cond_1
    add-int/lit8 v2, v2, 0x8

    .line 408
    :cond_2
    div-int/lit8 v7, v2, 0x8

    rem-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_6

    move v4, v5

    :goto_0
    add-int v3, v7, v4

    .line 409
    .local v3, "paramBytes":I
    mul-int/lit8 v4, v3, 0x8

    sub-int v1, v4, v2

    .line 410
    .local v1, "paddingBits":I
    invoke-virtual {p1, v8, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 411
    const/4 v4, 0x5

    iget-object v7, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v7, v7, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {p1, v4, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 412
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_4

    .line 414
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v8, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 416
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v8, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 417
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget-object v4, v4, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 418
    if-lez v1, :cond_5

    invoke-virtual {p1, v1, v6}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 419
    :cond_5
    return-void

    .end local v1    # "paddingBits":I
    .end local v3    # "paramBytes":I
    :cond_6
    move v4, v6

    .line 408
    goto :goto_0
.end method

.method private static encodeUserDataPayload(Lcom/sonymobile/cdma/sms/UserData;)V
    .locals 8
    .param p0, "uData"    # Lcom/sonymobile/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 340
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-eqz v2, :cond_0

    .line 341
    const-string v2, "BearerData"

    const-string v3, "user data with null payloadStr"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v2, ""

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 345
    :cond_0
    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v2, :cond_7

    .line 346
    iget v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-nez v2, :cond_2

    .line 347
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    if-nez v2, :cond_1

    .line 348
    const-string v2, "BearerData"

    const-string v3, "user data with octet encoding but null payload"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 350
    iput v4, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    .line 389
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 355
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 356
    const-string v2, "BearerData"

    const-string v3, "non-octet user data with null payloadStr"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v2, ""

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 359
    :cond_3
    iget v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 360
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/sonymobile/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v1

    .line 361
    .local v1, "gcr":Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    iget-object v2, v1, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 362
    iget v2, v1, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 363
    .end local v1    # "gcr":Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_4
    iget v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v6, :cond_5

    .line 364
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sonymobile/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 365
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 366
    :cond_5
    iget v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v7, :cond_6

    .line 367
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 368
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 370
    :cond_6
    new-instance v2, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 377
    const-string v2, "BearerData"

    const-string v3, "non-octet user data with null payloadStr"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v2, ""

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 380
    :cond_8
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonymobile/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 381
    const/4 v2, 0x2

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/sonymobile/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    .line 387
    iput-boolean v5, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ex":Lcom/sonymobile/cdma/sms/BearerData$CodingException;
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 384
    iput v7, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    const-string v1, "utf-16be"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeValidityPeriodRel(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 553
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 554
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 555
    return-void
.end method

.method private static timeFormatToBCD(I)B
    .locals 3
    .param p0, "timeValue"    # I

    .prologue
    .line 455
    and-int/lit16 p0, p0, 0xff

    .line 458
    div-int/lit8 v2, p0, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    .line 459
    .local v1, "low":B
    rem-int/lit8 v2, p0, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    .line 463
    .local v0, "high":B
    shl-int/lit8 v2, v1, 0x4

    or-int/2addr v2, v0

    int-to-byte v2, v2

    return v2
.end method
