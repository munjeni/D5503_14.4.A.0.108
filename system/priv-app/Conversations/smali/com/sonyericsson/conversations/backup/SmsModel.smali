.class public Lcom/sonyericsson/conversations/backup/SmsModel;
.super Ljava/lang/Object;
.source "SmsModel.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mLocked:Ljava/lang/String;

.field private mPathPresent:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mRead:Ljava/lang/String;

.field private mSeen:Ljava/lang/String;

.field private mServiceCenter:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mLocked:Ljava/lang/String;

    return-object v0
.end method

.method public getPathPresent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mPathPresent:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mRead:Ljava/lang/String;

    return-object v0
.end method

.method public getSeen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mSeen:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mAddress:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mBody:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mDate:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setLocked(Ljava/lang/String;)V
    .locals 0
    .param p1, "locked"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mLocked:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setPathPresent(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyPathPresent"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mPathPresent:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mProtocol:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setRead(Ljava/lang/String;)V
    .locals 0
    .param p1, "read"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mRead:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setSeen(Ljava/lang/String;)V
    .locals 0
    .param p1, "seen"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mSeen:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setServiceCenter(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceCenter"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mServiceCenter:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mStatus:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/SmsModel;->mType:Ljava/lang/String;

    .line 231
    return-void
.end method
