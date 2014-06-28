.class Lcom/sonyericsson/conversations/backup/DatabaseWriter;
.super Landroid/os/AsyncTask;
.source "DatabaseWriter.java"


# annotations
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


# static fields
.field static final SEQUENCE_TIME:Ljava/lang/String; = "sequence_time"

.field static final TAG:Ljava/lang/String; = "Conversations DatabaseWriter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDBSmsStateManager:Lcom/sonyericsson/conversations/backup/SmsStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/sonyericsson/conversations/backup/SmsStateManager;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/backup/SmsStateManager;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mDBSmsStateManager:Lcom/sonyericsson/conversations/backup/SmsStateManager;

    .line 74
    return-void
.end method

.method private getThreadId()J
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 224
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 227
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private parseMessagesList(Landroid/content/Context;Lcom/sonyericsson/conversations/backup/XMLParser;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messagesParser"    # Lcom/sonyericsson/conversations/backup/XMLParser;
    .param p3, "tempFile"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v5, 0x0

    .line 280
    .local v5, "messagesFIS":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-direct {v4, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    .local v4, "messagesDataFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .end local v5    # "messagesFIS":Ljava/io/FileInputStream;
    .local v6, "messagesFIS":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v10

    if-lez v10, :cond_0

    .line 286
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 288
    .local v3, "is":Lorg/xml/sax/InputSource;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 291
    .local v8, "reader":Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 293
    invoke-interface {v8, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 296
    .end local v3    # "is":Lorg/xml/sax/InputSource;
    .end local v8    # "reader":Lorg/xml/sax/XMLReader;
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_2

    .line 297
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 300
    .end local v4    # "messagesDataFile":Ljava/io/File;
    .end local v6    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v5    # "messagesFIS":Ljava/io/FileInputStream;
    .local v7, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_0
    :try_start_2
    const-string v10, "Conversations DatabaseWriter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Configuration Exception while parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    if-eqz v5, :cond_1

    .line 308
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 314
    .end local v7    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_1
    :goto_1
    return-void

    .line 307
    .end local v5    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v4    # "messagesDataFile":Ljava/io/File;
    .restart local v6    # "messagesFIS":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v6, :cond_3

    .line 308
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v5, v6

    .line 312
    .end local v6    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v5    # "messagesFIS":Ljava/io/FileInputStream;
    goto :goto_1

    .line 310
    .end local v5    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v6    # "messagesFIS":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 311
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "Conversations DatabaseWriter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception while closing inputstream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 313
    .end local v6    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v5    # "messagesFIS":Ljava/io/FileInputStream;
    goto :goto_1

    .line 310
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "messagesDataFile":Ljava/io/File;
    .restart local v7    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v1

    .line 311
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "Conversations DatabaseWriter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception while closing inputstream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v9

    .line 302
    .local v9, "sax":Lorg/xml/sax/SAXException;
    :goto_2
    :try_start_5
    const-string v10, "Conversations DatabaseWriter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SAX Exception while parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 307
    if-eqz v5, :cond_1

    .line 308
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 310
    :catch_4
    move-exception v1

    .line 311
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "Conversations DatabaseWriter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception while closing inputstream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 303
    .end local v1    # "e":Ljava/io/IOException;
    .end local v9    # "sax":Lorg/xml/sax/SAXException;
    :catch_5
    move-exception v2

    .line 304
    .local v2, "ioe":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v10, "Conversations DatabaseWriter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception while reading from temporary file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 307
    if-eqz v5, :cond_1

    .line 308
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    .line 310
    :catch_6
    move-exception v1

    .line 311
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "Conversations DatabaseWriter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception while closing inputstream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 306
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 307
    :goto_4
    if-eqz v5, :cond_4

    .line 308
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 312
    :cond_4
    :goto_5
    throw v10

    .line 310
    :catch_7
    move-exception v1

    .line 311
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "Conversations DatabaseWriter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while closing inputstream "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 306
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v4    # "messagesDataFile":Ljava/io/File;
    .restart local v6    # "messagesFIS":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v5    # "messagesFIS":Ljava/io/FileInputStream;
    goto :goto_4

    .line 303
    .end local v5    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v6    # "messagesFIS":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v5    # "messagesFIS":Ljava/io/FileInputStream;
    goto :goto_3

    .line 301
    .end local v5    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v6    # "messagesFIS":Ljava/io/FileInputStream;
    :catch_9
    move-exception v9

    move-object v5, v6

    .end local v6    # "messagesFIS":Ljava/io/FileInputStream;
    .restart local v5    # "messagesFIS":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 299
    .end local v4    # "messagesDataFile":Ljava/io/File;
    :catch_a
    move-exception v7

    goto/16 :goto_0
.end method

.method private restoreSms()V
    .locals 6

    .prologue
    .line 104
    new-instance v2, Lcom/sonyericsson/conversations/backup/XMLParser;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/sonyericsson/conversations/backup/XMLParser;-><init>(ILcom/sonyericsson/conversations/backup/DatabaseWriter;)V

    .line 106
    .local v2, "smsMessagesparser":Lcom/sonyericsson/conversations/backup/XMLParser;
    new-instance v0, Lcom/sonyericsson/conversations/backup/MessagesReader;

    iget-object v3, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/sonyericsson/conversations/backup/MessagesReader;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;)V

    .line 108
    .local v0, "messagesReader":Lcom/sonyericsson/conversations/backup/MessagesReader;
    iget-object v3, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mDBSmsStateManager:Lcom/sonyericsson/conversations/backup/SmsStateManager;

    invoke-virtual {v0, v3, v4, v5}, Lcom/sonyericsson/conversations/backup/MessagesReader;->getCurrentDBMessagesList(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/backup/SmsStateManager;)V

    .line 111
    iget-object v3, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    const-string v4, "TempSmsFile"

    invoke-direct {p0, v3, v2, v4}, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->parseMessagesList(Landroid/content/Context;Lcom/sonyericsson/conversations/backup/XMLParser;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/XMLParser;->getSmsMessagesList()Ljava/util/ArrayList;

    move-result-object v1

    .line 117
    .local v1, "smsMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/backup/SmsModel;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->saveSmsMessagesToDatabase(Ljava/util/ArrayList;)V

    .line 119
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/XMLParser;->clearSmsMessagesList()V

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "obj"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 85
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->setmRestoreIsOnGoing(Z)V

    .line 87
    invoke-direct {p0}, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->restoreSms()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {v1}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->setmRestoreIsOnGoing(Z)V

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->setmRestoreIsOnGoing(Z)V

    throw v0
.end method

.method public saveSmsMessagesToDatabase(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/backup/SmsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "smsMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/backup/SmsModel;>;"
    const/4 v12, 0x1

    .line 129
    if-nez p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "allSmsValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 137
    .local v5, "smsMessagesSize":I
    const-string v9, "content://sms/backup-restore/"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 139
    .local v4, "smsBackupRestoreUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_11

    .line 141
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/backup/SmsModel;

    .line 142
    .local v3, "sms":Lcom/sonyericsson/conversations/backup/SmsModel;
    invoke-static {v3, v12}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->generateSmsStateKey(Lcom/sonyericsson/conversations/backup/SmsModel;I)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "keyString":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mDBSmsStateManager:Lcom/sonyericsson/conversations/backup/SmsStateManager;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mDBSmsStateManager:Lcom/sonyericsson/conversations/backup/SmsStateManager;

    invoke-virtual {v9, v2}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->hasMessage(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 139
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_3
    const-wide/16 v7, 0x0

    .line 154
    .local v7, "threadId":J
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->getThreadId()J

    move-result-wide v7

    .line 159
    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v6, "smsValues":Landroid/content/ContentValues;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getAddress()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 162
    const-string v9, "address"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_5
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 165
    const-string v9, "date"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v9, "sequence_time"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_3
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getProtocol()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 171
    const-string v9, "protocol"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_6
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getRead()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 174
    const-string v9, "read"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getRead()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_7
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getStatus()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 177
    const-string v9, "status"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_8
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 180
    const-string v9, "type"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_9
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getPathPresent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 183
    const-string v9, "reply_path_present"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getPathPresent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_a
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getBody()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 186
    const-string v9, "body"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_b
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getServiceCenter()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 189
    const-string v9, "service_center"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getServiceCenter()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_c
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getLocked()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 192
    const-string v9, "locked"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getLocked()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_d
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getSeen()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 195
    const-string v9, "seen"

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/SmsModel;->getSeen()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_e
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_f

    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-eqz v9, :cond_f

    .line 198
    const-string v9, "thread_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    :cond_f
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x14

    if-lt v9, v10, :cond_2

    .line 205
    iget-object v9, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-array v9, v12, [Landroid/content/ContentValues;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/ContentValues;

    invoke-virtual {v10, v4, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 168
    :cond_10
    const-string v9, "sequence_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    .line 214
    .end local v2    # "keyString":Ljava/lang/String;
    .end local v3    # "sms":Lcom/sonyericsson/conversations/backup/SmsModel;
    .end local v6    # "smsValues":Landroid/content/ContentValues;
    .end local v7    # "threadId":J
    :cond_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 215
    iget-object v9, p0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-array v9, v12, [Landroid/content/ContentValues;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/ContentValues;

    invoke-virtual {v10, v4, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method
