.class public Lcom/sonyericsson/conversations/util/SimCardUtils;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;
    }
.end annotation


# static fields
.field private static final CDMA_PDU_MAX_SIZE:I = 0xff

.field private static final GSM_TPDU_MAX_SIZE:I = 0xa0

.field private static final SCTS_SIZE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SimCardUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    return-void
.end method

.method private static CreateDeliveryPDU(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)[B
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 253
    .local v1, "result":[B
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyManagerProxy()Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    move-result-object v0

    .line 254
    .local v0, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    invoke-interface {v0}, Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;->getCurrentPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 255
    invoke-static {p1, p2, p3, p4}, Lcom/sonyericsson/conversations/util/SimCardUtils;->createCDMAPdu(Ljava/lang/String;JLjava/lang/String;)[B

    move-result-object v1

    .line 259
    :cond_0
    :goto_0
    return-object v1

    .line 256
    :cond_1
    invoke-interface {v0}, Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;->getCurrentPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 257
    invoke-static {p1, p2, p3, p4}, Lcom/sonyericsson/conversations/util/SimCardUtils;->createGSMPdu(Ljava/lang/String;JLjava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private static convertDateToBcdByte(J)[B
    .locals 10
    .param p0, "date"    # J

    .prologue
    const/4 v8, 0x7

    .line 64
    new-array v1, v8, [B

    .line 65
    .local v1, "dateByte":[B
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 66
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 67
    const/4 v6, 0x0

    .line 68
    .local v6, "negativeTimeZoneOffset":Z
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 75
    .local v2, "fieldArray":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_4

    .line 76
    aget v8, v2, v4

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 77
    .local v7, "value":I
    aget v8, v2, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 79
    add-int/lit16 v7, v7, -0x76c

    .line 80
    const/16 v8, 0x63

    if-le v7, v8, :cond_0

    .line 81
    rem-int/lit8 v7, v7, 0x64

    .line 97
    :cond_0
    :goto_1
    and-int/lit16 v7, v7, 0xff

    .line 100
    div-int/lit8 v8, v7, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    .line 101
    .local v5, "low":B
    rem-int/lit8 v8, v7, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 104
    .local v3, "high":B
    shl-int/lit8 v8, v3, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "high":B
    .end local v5    # "low":B
    :cond_1
    aget v8, v2, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 84
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 85
    :cond_2
    aget v8, v2, v4

    const/16 v9, 0xf

    if-ne v8, v9, :cond_0

    .line 86
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 87
    if-gez v7, :cond_3

    .line 88
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 89
    const/4 v6, 0x1

    .line 93
    :cond_3
    const v8, 0xdbba0

    div-int/2addr v7, v8

    goto :goto_1

    .line 108
    .end local v7    # "value":I
    :cond_4
    if-eqz v6, :cond_5

    .line 109
    const/4 v8, 0x6

    aget-byte v9, v1, v8

    or-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 111
    :cond_5
    return-object v1

    .line 68
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x5
        0xb
        0xc
        0xd
        0xf
    .end array-data
.end method

.method protected static copySMSToSimCard(Landroid/content/Context;Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsManager"    # Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "messageBody"    # Ljava/lang/String;
    .param p4, "date"    # J

    .prologue
    .line 282
    const/4 v3, 0x0

    .line 283
    .local v3, "success":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 284
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;->getSmsManager()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 285
    .local v0, "contentArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, p2, p4, p5, v4}, Lcom/sonyericsson/conversations/util/SimCardUtils;->CreateDeliveryPDU(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)[B

    move-result-object v2

    .line 287
    .local v2, "pdu":[B
    if-eqz v2, :cond_1

    .line 288
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v2, v5}, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;->copyMessageToIcc([B[BI)Z

    move-result v3

    .line 293
    if-nez v3, :cond_0

    .line 294
    const/4 v4, 0x0

    .line 302
    .end local v0    # "contentArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "pdu":[B
    :goto_1
    return v4

    .line 296
    .restart local v0    # "contentArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "pdu":[B
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 297
    const/4 v3, 0x0

    .line 285
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "contentArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "pdu":[B
    :cond_2
    move v4, v3

    .line 302
    goto :goto_1
.end method

.method public static copySMSToSimCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "messageBody"    # Ljava/lang/String;
    .param p3, "date"    # J

    .prologue
    .line 317
    new-instance v1, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/conversations/util/SimCardUtils;->copySMSToSimCard(Landroid/content/Context;Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method private static createCDMAPdu(Ljava/lang/String;JLjava/lang/String;)[B
    .locals 11
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "date"    # J
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 115
    if-eqz p0, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-ltz v8, :cond_0

    if-nez p3, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v7

    .line 118
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/sonymobile/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 120
    .local v0, "addr":Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
    if-eqz v0, :cond_0

    .line 124
    new-instance v2, Lcom/sonymobile/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/sonymobile/cdma/sms/BearerData;-><init>()V

    .line 125
    .local v2, "bearerData":Lcom/sonymobile/cdma/sms/BearerData;
    const/4 v8, 0x1

    iput v8, v2, Lcom/sonymobile/cdma/sms/BearerData;->messageType:I

    .line 126
    invoke-static {}, Lcom/sonyericsson/conversations/util/SimCardUtils;->getNextMessageId()I

    move-result v8

    iput v8, v2, Lcom/sonymobile/cdma/sms/BearerData;->messageId:I

    .line 128
    iput-boolean v10, v2, Lcom/sonymobile/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 129
    iput-boolean v10, v2, Lcom/sonymobile/cdma/sms/BearerData;->userAckReq:Z

    .line 130
    iput-boolean v10, v2, Lcom/sonymobile/cdma/sms/BearerData;->readAckReq:Z

    .line 131
    iput-boolean v10, v2, Lcom/sonymobile/cdma/sms/BearerData;->reportReq:Z

    .line 133
    iput-wide p1, v2, Lcom/sonymobile/cdma/sms/BearerData;->msgCenterTimeStamp:J

    .line 135
    new-instance v6, Lcom/sonymobile/cdma/sms/UserData;

    invoke-direct {v6}, Lcom/sonymobile/cdma/sms/UserData;-><init>()V

    .line 136
    .local v6, "uData":Lcom/sonymobile/cdma/sms/UserData;
    iput-object p3, v6, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 137
    iput-object v6, v2, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    .line 139
    invoke-static {v2}, Lcom/sonymobile/cdma/sms/BearerData;->encode(Lcom/sonymobile/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 141
    .local v4, "encodedBearerData":[B
    if-eqz v4, :cond_0

    .line 146
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0xff

    invoke-direct {v1, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 147
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 148
    .local v3, "dos":Ljava/io/DataOutputStream;
    const/16 v8, 0x1002

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 149
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 150
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 152
    iget v8, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 153
    iget v8, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 154
    iget v8, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 155
    iget v8, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 156
    iget v8, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 157
    iget-object v8, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v10, v10

    invoke-virtual {v3, v8, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 159
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 160
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 161
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 162
    array-length v8, v4

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 163
    const/4 v8, 0x0

    array-length v9, v4

    invoke-virtual {v3, v4, v8, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 164
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V

    .line 166
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 167
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v5

    .line 168
    .local v5, "ex":Ljava/io/IOException;
    const-string v8, "SimCardUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "creating pdu failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static createGSMPdu(Ljava/lang/String;JLjava/lang/String;)[B
    .locals 12
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "date"    # J
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v8, 0x0

    .line 176
    .local v8, "submitPdu":Landroid/telephony/SmsMessage$SubmitPdu;
    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_0
    invoke-static {v10, p0, p3, v11}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 184
    :goto_0
    const/4 v6, 0x0

    .line 185
    .local v6, "result":[B
    if-eqz v8, :cond_1

    .line 186
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0xa0

    invoke-direct {v7, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 187
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v2, v8, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 188
    .local v2, "data":[B
    const/4 v5, 0x0

    .line 189
    .local v5, "index":I
    aget-byte v9, v2, v5

    .line 192
    .local v9, "tpmti":B
    and-int/lit16 v10, v9, 0xe0

    int-to-byte v9, v10

    .line 193
    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 196
    add-int/lit8 v5, v5, 0x2

    .line 200
    aget-byte v0, v2, v5

    .line 201
    .local v0, "adDigtialLength":I
    rem-int/lit8 v10, v0, 0x2

    if-eqz v10, :cond_0

    .line 202
    add-int/lit8 v0, v0, 0x1

    .line 204
    :cond_0
    div-int/lit8 v10, v0, 0x2

    add-int/lit8 v1, v10, 0x2

    .line 205
    .local v1, "adLength":I
    invoke-virtual {v7, v2, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 207
    add-int/lit8 v5, v1, 0x2

    .line 209
    const/4 v10, 0x2

    invoke-virtual {v7, v2, v5, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 211
    add-int/lit8 v5, v5, 0x2

    .line 214
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/util/SimCardUtils;->convertDateToBcdByte(J)[B

    move-result-object v3

    .line 216
    .local v3, "dateBytes":[B
    :try_start_1
    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    array-length v10, v2

    sub-int/2addr v10, v5

    invoke-virtual {v7, v2, v5, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 225
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 227
    :try_start_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0    # "adDigtialLength":I
    .end local v1    # "adLength":I
    .end local v2    # "data":[B
    .end local v3    # "dateBytes":[B
    .end local v5    # "index":I
    .end local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "tpmti":B
    :cond_1
    :goto_1
    move-object v10, v6

    .line 234
    :goto_2
    return-object v10

    .line 217
    .restart local v0    # "adDigtialLength":I
    .restart local v1    # "adLength":I
    .restart local v2    # "data":[B
    .restart local v3    # "dateBytes":[B
    .restart local v5    # "index":I
    .restart local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "tpmti":B
    :catch_0
    move-exception v4

    .line 221
    .local v4, "e":Ljava/io/IOException;
    const/4 v10, 0x0

    goto :goto_2

    .line 177
    .end local v0    # "adDigtialLength":I
    .end local v1    # "adLength":I
    .end local v2    # "data":[B
    .end local v3    # "dateBytes":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "index":I
    .end local v6    # "result":[B
    .end local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "tpmti":B
    :catch_1
    move-exception v10

    goto :goto_0

    .line 228
    .restart local v0    # "adDigtialLength":I
    .restart local v1    # "adLength":I
    .restart local v2    # "data":[B
    .restart local v3    # "dateBytes":[B
    .restart local v5    # "index":I
    .restart local v6    # "result":[B
    .restart local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "tpmti":B
    :catch_2
    move-exception v10

    goto :goto_1
.end method

.method private static getNextMessageId()I
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getSimCardState(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "state":I
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 273
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 277
    :cond_0
    return v0
.end method
