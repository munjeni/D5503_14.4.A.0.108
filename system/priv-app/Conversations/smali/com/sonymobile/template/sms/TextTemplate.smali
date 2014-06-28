.class public Lcom/sonymobile/template/sms/TextTemplate;
.super Ljava/lang/Object;
.source "TextTemplate.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mId:I

.field private mIsUserDefined:Z

.field private mSid:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/template/sms/TextTemplate;->mIsUserDefined:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/template/sms/TextTemplate;->mId:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sonymobile/template/sms/TextTemplate;->mSid:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/template/sms/TextTemplate;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isUserDefinedTemplate()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sonymobile/template/sms/TextTemplate;->mIsUserDefined:Z

    return v0
.end method

.method public setAsUserDefinedTemplate(Z)V
    .locals 0
    .param p1, "defautItem"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sonymobile/template/sms/TextTemplate;->mIsUserDefined:Z

    .line 59
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/sonymobile/template/sms/TextTemplate;->mId:I

    .line 39
    return-void
.end method

.method public setSid(I)V
    .locals 0
    .param p1, "sid"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sonymobile/template/sms/TextTemplate;->mSid:I

    .line 47
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/template/sms/TextTemplate;->mText:Ljava/lang/String;

    .line 55
    return-void
.end method
