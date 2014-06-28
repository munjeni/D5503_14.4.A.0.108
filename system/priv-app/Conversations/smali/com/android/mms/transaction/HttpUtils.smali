.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/HttpUtils$HttpErrorException;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HDR_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HDR_KEY_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String; = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

.field public static final HTTP_GET_METHOD:I = 0x2

.field private static final HTTP_MAX_SEGMENT_SIZE:I = 0x564

.field public static final HTTP_POST_METHOD:I = 0x1

.field private static final LOCAL_LOGV:Z = false

.field private static final MMS_READ_BUFFER:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "HttpUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/android/mms/transaction/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;F)V
    .locals 8
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "quality"    # F

    .prologue
    .line 311
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "language":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 314
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 319
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    const-string v3, ";q="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "q":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "q":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsUserAgentString()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "userAgentString":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 267
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 268
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v4

    .line 272
    .local v4, "soTimeout":I
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 274
    invoke-static {}, Lcom/android/mms/MmsConfig;->isMssModificationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 276
    :try_start_0
    const-class v6, Lorg/apache/http/params/HttpConnectionParams;

    const-string v7, "setMaxSegmentSize"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Lorg/apache/http/params/HttpParams;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 278
    .local v3, "setMSSMethod":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 279
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x564

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v3    # "setMSSMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "HttpUtils"

    const-string v7, "Could not setMaxSegmentSize"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 296
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 297
    .local v1, "locale":Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;F)V

    .line 300
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 302
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v3, 0x3f333333

    invoke-static {v0, v2, v3}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;F)V

    .line 306
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .param p0, "exception"    # Ljava/lang/Exception;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const-string v1, "HttpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 259
    throw v0
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "pdu"    # [B
    .param p5, "method"    # I
    .param p6, "isProxySet"    # Z
    .param p7, "proxyHost"    # Ljava/lang/String;
    .param p8, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p3, :cond_0

    .line 108
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "URL must not be null."

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 125
    :cond_0
    const/4 v6, 0x0

    .line 129
    .local v6, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v11, Ljava/net/URI;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 130
    .local v11, "hostUrl":Ljava/net/URI;
    new-instance v19, Lorg/apache/http/HttpHost;

    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v22

    const-string v23, "http"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    .local v19, "target":Lorg/apache/http/HttpHost;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    .line 135
    const/16 v16, 0x0

    .line 136
    .local v16, "req":Lorg/apache/http/HttpRequest;
    packed-switch p5, :pswitch_data_0

    .line 151
    const-string v21, "HttpUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown HTTP method: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ". Must be one of POST["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] or GET["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/android/mms/transaction/HttpUtils$HttpErrorException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 154
    const/4 v4, 0x0

    .line 246
    if-eqz v6, :cond_1

    .line 247
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 250
    .end local v11    # "hostUrl":Ljava/net/URI;
    .end local v16    # "req":Lorg/apache/http/HttpRequest;
    .end local v19    # "target":Lorg/apache/http/HttpHost;
    :cond_1
    :goto_0
    return-object v4

    .line 138
    .restart local v11    # "hostUrl":Ljava/net/URI;
    .restart local v16    # "req":Lorg/apache/http/HttpRequest;
    .restart local v19    # "target":Lorg/apache/http/HttpHost;
    :pswitch_0
    :try_start_1
    new-instance v10, Lcom/android/mms/transaction/ProgressCallbackEntity;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 141
    .local v10, "entity":Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string v21, "application/vnd.wap.mms-message"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 143
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 144
    .local v13, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v13, v10}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 145
    move-object/from16 v16, v13

    .line 158
    .end local v10    # "entity":Lcom/android/mms/transaction/ProgressCallbackEntity;
    .end local v13    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    .line 159
    .local v12, "params":Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_2

    .line 160
    new-instance v21, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v21

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v21

    invoke-static {v12, v0}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 163
    :cond_2
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 166
    const-string v21, "Accept"

    const-string v22, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v20

    .line 170
    .local v20, "xWapProfileUrl":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 171
    const-string v21, "x-wap-profile"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_3
    const-string v21, "Accept-Language"

    sget-object v22, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 177
    .local v17, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    .line 179
    .local v18, "status":Lorg/apache/http/StatusLine;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 180
    new-instance v21, Lcom/android/mms/transaction/HttpUtils$HttpErrorException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "HTTP error: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/android/mms/transaction/HttpUtils$HttpErrorException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/android/mms/transaction/HttpUtils$HttpErrorException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 231
    .end local v11    # "hostUrl":Ljava/net/URI;
    .end local v12    # "params":Lorg/apache/http/params/HttpParams;
    .end local v16    # "req":Lorg/apache/http/HttpRequest;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "status":Lorg/apache/http/StatusLine;
    .end local v19    # "target":Lorg/apache/http/HttpHost;
    .end local v20    # "xWapProfileUrl":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 232
    .local v9, "e":Ljava/net/URISyntaxException;
    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 246
    if-eqz v6, :cond_4

    .line 247
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 250
    .end local v9    # "e":Ljava/net/URISyntaxException;
    :cond_4
    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 148
    .restart local v11    # "hostUrl":Ljava/net/URI;
    .restart local v16    # "req":Lorg/apache/http/HttpRequest;
    .restart local v19    # "target":Lorg/apache/http/HttpHost;
    :pswitch_1
    :try_start_3
    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    .end local v16    # "req":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v16    # "req":Lorg/apache/http/HttpRequest;
    goto/16 :goto_1

    .line 183
    .restart local v12    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "status":Lorg/apache/http/StatusLine;
    .restart local v20    # "xWapProfileUrl":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/android/mms/transaction/HttpUtils$HttpErrorException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v10

    .line 184
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    const/4 v4, 0x0

    .line 185
    .local v4, "body":[B
    const/4 v7, 0x0

    .line 186
    .local v7, "dis":Ljava/io/DataInputStream;
    if-eqz v10, :cond_7

    .line 188
    :try_start_4
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 189
    new-instance v8, Ljava/io/DataInputStream;

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 190
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .local v8, "dis":Ljava/io/DataInputStream;
    :try_start_5
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v21, 0x1000

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 191
    .local v5, "buffArray":Ljava/io/ByteArrayOutputStream;
    const/16 v21, 0x1000

    move/from16 v0, v21

    new-array v14, v0, [B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    .local v14, "readBuffer":[B
    const/4 v15, 0x0

    .line 196
    .local v15, "readSize":I
    :goto_3
    :try_start_6
    invoke-virtual {v8, v14}, Ljava/io/DataInputStream;->read([B)I

    move-result v15

    .line 197
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v15, :cond_8

    .line 198
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    .line 205
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V

    .line 206
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    move-object v7, v8

    .line 225
    .end local v5    # "buffArray":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .end local v14    # "readBuffer":[B
    .end local v15    # "readSize":I
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    :cond_6
    :goto_5
    if-eqz v10, :cond_7

    .line 226
    :try_start_8
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/android/mms/transaction/HttpUtils$HttpErrorException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 246
    :cond_7
    if-eqz v6, :cond_1

    .line 247
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 201
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "buffArray":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v14    # "readBuffer":[B
    .restart local v15    # "readSize":I
    :cond_8
    const/16 v21, 0x0

    :try_start_9
    move/from16 v0, v21

    invoke-virtual {v5, v14, v0, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 204
    :catchall_0
    move-exception v21

    .line 205
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V

    .line 206
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 209
    :goto_6
    :try_start_b
    throw v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 225
    .end local v5    # "buffArray":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "readBuffer":[B
    .end local v15    # "readSize":I
    :catchall_1
    move-exception v21

    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    :goto_7
    if-eqz v10, :cond_9

    .line 226
    :try_start_c
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_9
    throw v21
    :try_end_c
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lcom/android/mms/transaction/HttpUtils$HttpErrorException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 233
    .end local v4    # "body":[B
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "hostUrl":Ljava/net/URI;
    .end local v12    # "params":Lorg/apache/http/params/HttpParams;
    .end local v16    # "req":Lorg/apache/http/HttpRequest;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "status":Lorg/apache/http/StatusLine;
    .end local v19    # "target":Lorg/apache/http/HttpHost;
    .end local v20    # "xWapProfileUrl":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 234
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_d
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 246
    if-eqz v6, :cond_4

    .line 247
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2

    .line 207
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "body":[B
    .restart local v5    # "buffArray":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "hostUrl":Ljava/net/URI;
    .restart local v12    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v14    # "readBuffer":[B
    .restart local v15    # "readSize":I
    .restart local v16    # "req":Lorg/apache/http/HttpRequest;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "status":Lorg/apache/http/StatusLine;
    .restart local v19    # "target":Lorg/apache/http/HttpHost;
    .restart local v20    # "xWapProfileUrl":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 208
    .local v9, "e":Ljava/io/IOException;
    :try_start_e
    const-string v21, "HttpUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error closing inputstream: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 207
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 208
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v22, "HttpUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error closing inputstream: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    .line 211
    .end local v5    # "buffArray":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v14    # "readBuffer":[B
    .end local v15    # "readSize":I
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    :cond_a
    :try_start_f
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_6

    .line 212
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v4, v0, [B

    .line 213
    new-instance v8, Ljava/io/DataInputStream;

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 215
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    :try_start_10
    invoke-virtual {v8, v4}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 218
    :try_start_11
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object v7, v8

    .line 221
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_5

    .line 219
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    :catch_4
    move-exception v9

    .line 220
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_12
    const-string v21, "HttpUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error closing input stream: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object v7, v8

    .line 222
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_5

    .line 217
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v21

    .line 218
    :try_start_13
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 221
    :goto_8
    :try_start_14
    throw v21

    .line 219
    :catch_5
    move-exception v9

    .line 220
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v22, "HttpUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error closing input stream: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_8

    .line 235
    .end local v4    # "body":[B
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "hostUrl":Ljava/net/URI;
    .end local v12    # "params":Lorg/apache/http/params/HttpParams;
    .end local v16    # "req":Lorg/apache/http/HttpRequest;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "status":Lorg/apache/http/StatusLine;
    .end local v19    # "target":Lorg/apache/http/HttpHost;
    .end local v20    # "xWapProfileUrl":Ljava/lang/String;
    :catch_6
    move-exception v9

    .line 236
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_15
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 246
    if-eqz v6, :cond_4

    .line 247
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 237
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v9

    .line 238
    .local v9, "e":Ljava/net/SocketException;
    :try_start_16
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 246
    if-eqz v6, :cond_4

    .line 247
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 239
    .end local v9    # "e":Ljava/net/SocketException;
    :catch_8
    move-exception v9

    .line 241
    .local v9, "e":Lcom/android/mms/transaction/HttpUtils$HttpErrorException;
    :try_start_17
    throw v9
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 246
    .end local v9    # "e":Lcom/android/mms/transaction/HttpUtils$HttpErrorException;
    :catchall_3
    move-exception v21

    if-eqz v6, :cond_b

    .line 247
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_b
    throw v21

    .line 242
    :catch_9
    move-exception v9

    .line 243
    .local v9, "e":Ljava/lang/Exception;
    :try_start_18
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 246
    if-eqz v6, :cond_4

    .line 247
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 225
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "body":[B
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "hostUrl":Ljava/net/URI;
    .restart local v12    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v16    # "req":Lorg/apache/http/HttpRequest;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "status":Lorg/apache/http/StatusLine;
    .restart local v19    # "target":Lorg/apache/http/HttpHost;
    .restart local v20    # "xWapProfileUrl":Ljava/lang/String;
    :catchall_4
    move-exception v21

    goto/16 :goto_7

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
