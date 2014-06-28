.class public Lcom/sonyericsson/conversations/backup/XMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLParser.java"


# instance fields
.field public mAddressFlag:Z

.field private mBodyFlag:Z

.field private mDatabaseWriter:Lcom/sonyericsson/conversations/backup/DatabaseWriter;

.field private mDateFlag:Z

.field private mLockedFlag:Z

.field private mMessagesBuffer:Ljava/lang/StringBuffer;

.field private mProtocolFlag:Z

.field private mReadFlag:Z

.field private mReplyPathFlag:Z

.field private mRuntime:Ljava/lang/Runtime;

.field private mSeenFlag:Z

.field private mServiceCenterFlag:Z

.field private mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

.field private mSmsFlag:Z

.field private mSmsMessagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/backup/SmsModel;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusFlag:Z

.field private mTypeFlag:Z


# direct methods
.method public constructor <init>(ILcom/sonyericsson/conversations/backup/DatabaseWriter;)V
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "dbWriter"    # Lcom/sonyericsson/conversations/backup/DatabaseWriter;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsMessagesList:Ljava/util/ArrayList;

    .line 69
    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mRuntime:Ljava/lang/Runtime;

    .line 71
    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mDatabaseWriter:Lcom/sonyericsson/conversations/backup/DatabaseWriter;

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsMessagesList:Ljava/util/ArrayList;

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mRuntime:Ljava/lang/Runtime;

    .line 78
    iput-object p2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mDatabaseWriter:Lcom/sonyericsson/conversations/backup/DatabaseWriter;

    .line 79
    return-void
.end method

.method private checkSmsMessagesMemoryAffection()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 223
    .local v0, "messagesSize":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mDatabaseWriter:Lcom/sonyericsson/conversations/backup/DatabaseWriter;

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mDatabaseWriter:Lcom/sonyericsson/conversations/backup/DatabaseWriter;

    iget-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/backup/DatabaseWriter;->saveSmsMessagesToDatabase(Ljava/util/ArrayList;)V

    .line 227
    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 233
    :cond_1
    return-void

    .line 230
    :cond_2
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "No Free memory available. Unable to restore messages"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 205
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsFlag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 207
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearSmsMessagesList()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsMessagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 99
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "Sms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsFlag:Z

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsMessagesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/conversations/backup/XMLParser;->checkSmsMessagesMemoryAffection()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mAddressFlag:Z

    if-eqz v0, :cond_2

    const-string v0, "Address"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mAddressFlag:Z

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setAddress(Ljava/lang/String;)V

    .line 157
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 158
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mDateFlag:Z

    if-eqz v0, :cond_3

    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mDateFlag:Z

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setDate(Ljava/lang/String;)V

    .line 161
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 162
    :cond_3
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mProtocolFlag:Z

    if-eqz v0, :cond_4

    const-string v0, "Protocol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mProtocolFlag:Z

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setProtocol(Ljava/lang/String;)V

    .line 165
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 166
    :cond_4
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mReadFlag:Z

    if-eqz v0, :cond_5

    const-string v0, "Read"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mReadFlag:Z

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setRead(Ljava/lang/String;)V

    .line 169
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 170
    :cond_5
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mStatusFlag:Z

    if-eqz v0, :cond_6

    const-string v0, "Status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mStatusFlag:Z

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setStatus(Ljava/lang/String;)V

    .line 173
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 174
    :cond_6
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mTypeFlag:Z

    if-eqz v0, :cond_7

    const-string v0, "Type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mTypeFlag:Z

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setType(Ljava/lang/String;)V

    .line 177
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 178
    :cond_7
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mReplyPathFlag:Z

    if-eqz v0, :cond_8

    const-string v0, "ReplyPathPresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 179
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mReplyPathFlag:Z

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setPathPresent(Ljava/lang/String;)V

    .line 181
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 182
    :cond_8
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mBodyFlag:Z

    if-eqz v0, :cond_9

    const-string v0, "Body"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 183
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mBodyFlag:Z

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setBody(Ljava/lang/String;)V

    .line 185
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 186
    :cond_9
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mServiceCenterFlag:Z

    if-eqz v0, :cond_a

    const-string v0, "ServiceCenter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 187
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mServiceCenterFlag:Z

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setServiceCenter(Ljava/lang/String;)V

    .line 189
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 190
    :cond_a
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mLockedFlag:Z

    if-eqz v0, :cond_b

    const-string v0, "Locked"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 191
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mLockedFlag:Z

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setLocked(Ljava/lang/String;)V

    .line 193
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 194
    :cond_b
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSeenFlag:Z

    if-eqz v0, :cond_0

    const-string v0, "Seen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSeenFlag:Z

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setSeen(Ljava/lang/String;)V

    .line 197
    iput-object v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public getSmsMessagesList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/backup/SmsModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsMessagesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 94
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsFlag:Z

    .line 107
    new-instance v0, Lcom/sonyericsson/conversations/backup/SmsModel;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/backup/SmsModel;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSmsDatabase:Lcom/sonyericsson/conversations/backup/SmsModel;

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v0, "Address"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mAddressFlag:Z

    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mDateFlag:Z

    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 114
    :cond_3
    const-string v0, "Protocol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mProtocolFlag:Z

    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 117
    :cond_4
    const-string v0, "Read"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mReadFlag:Z

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 120
    :cond_5
    const-string v0, "Status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mStatusFlag:Z

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 123
    :cond_6
    const-string v0, "Type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mTypeFlag:Z

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 126
    :cond_7
    const-string v0, "ReplyPathPresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 127
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mReplyPathFlag:Z

    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 129
    :cond_8
    const-string v0, "Body"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 130
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mBodyFlag:Z

    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 132
    :cond_9
    const-string v0, "ServiceCenter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 133
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mServiceCenterFlag:Z

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 135
    :cond_a
    const-string v0, "Locked"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 136
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mLockedFlag:Z

    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 138
    :cond_b
    const-string v0, "Seen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mSeenFlag:Z

    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/XMLParser;->mMessagesBuffer:Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
