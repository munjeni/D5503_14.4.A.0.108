.class public Lcom/sonyericsson/conversations/model/Participant;
.super Ljava/lang/Object;
.source "Participant.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADDRESSES_STRING_SEPARATOR:Ljava/lang/String; = ";"

.field public static final REQUIRED_SIZE:I = 0x140

.field private static final TAG:Ljava/lang/String; = "Participant"

.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_PHONENUMBER:I = 0x1

.field private static sMySelfParticipant:Lcom/sonyericsson/conversations/model/Participant; = null

.field private static final serialVersionUID:J = -0x20f90aae3b294e63L


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mIsInputNumber:Z

.field private final mIsMe:Z

.field private mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/model/Participant;->sMySelfParticipant:Lcom/sonyericsson/conversations/model/Participant;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsInputNumber:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsMe:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    .line 73
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsInputNumber:Z

    .line 65
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsMe:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Participant;->determineType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    .line 67
    iget v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "address":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static createAddressStringForMessageDetails(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;
    .locals 5
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 260
    const-string v1, ""

    .line 262
    .local v1, "addressStr":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 263
    const-string v3, "Participant"

    const-string v4, "participant is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    :goto_0
    return-object v1

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "address":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 269
    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 278
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static createAddressStringForMessageDetails(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "addresses"    # Ljava/lang/String;

    .prologue
    .line 311
    const-string v1, ""

    .line 313
    .local v1, "addressStr":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    const-string v5, "Participant"

    const-string v6, "addresses is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-object v1

    .line 316
    :cond_0
    const-string v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "array":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v3, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 319
    new-instance v5, Lcom/sonyericsson/conversations/model/Participant;

    aget-object v6, v2, v4

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 322
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-eq v5, v4, :cond_2

    .line 326
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 329
    .end local v0    # "address":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static createAddressStringForMessageDetails(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const-string v1, ""

    .line 289
    .local v1, "addressStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 290
    :cond_0
    const-string v4, "Participant"

    const-string v5, "participants is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-object v1

    .line 292
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 294
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-static {v4}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 297
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v4, v3, :cond_3

    .line 301
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 304
    .end local v0    # "address":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private determineType(Ljava/lang/String;)I
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v1

    .line 78
    .local v1, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v1, p1}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const/4 v2, 0x2

    .line 86
    :goto_0
    return v2

    .line 82
    :cond_0
    const-string v2, ".*[a-zA-Z].*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 83
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    .line 86
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getMySelfParticipant()Lcom/sonyericsson/conversations/model/Participant;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/sonyericsson/conversations/model/Participant;->sMySelfParticipant:Lcom/sonyericsson/conversations/model/Participant;

    return-object v0
.end method

.method private getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsMe:Z

    if-eqz v0, :cond_2

    .line 128
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getProfileMatch()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 133
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    return-object v0

    .line 130
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    iget v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    if-ne p0, p1, :cond_0

    .line 230
    :goto_0
    return v1

    .line 219
    :cond_0
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/Participant;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 220
    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 222
    .local v0, "otherP":Lcom/sonyericsson/conversations/model/Participant;
    iget v3, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    iget v4, v0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    if-eq v3, v4, :cond_1

    move v1, v2

    .line 223
    goto :goto_0

    .line 224
    :cond_1
    iget v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    if-ne v2, v1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .end local v0    # "otherP":Lcom/sonyericsson/conversations/model/Participant;
    :cond_3
    move v1, v2

    .line 230
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 103
    .local v0, "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_2

    .line 104
    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->address:Ljava/lang/String;

    .line 106
    .local v1, "personAddress":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsInputNumber:Z

    if-eqz v2, :cond_1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    .line 112
    .end local v1    # "personAddress":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContactId()J
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 118
    .local v0, "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_0

    .line 119
    iget-wide v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->contactId:J

    .line 121
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 138
    .local v0, "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_0

    .line 139
    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    .line 141
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v4

    .line 173
    .local v4, "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->mPhotoId:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 175
    const/4 v0, 0x0

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    const/4 v0, 0x0

    .line 179
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v1

    .line 181
    .local v1, "contactId":J
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    .line 182
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 184
    .local v3, "contactUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 185
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Lcom/sonyericsson/conversations/model/ModelCache;->getPersonPhoto(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x7

    .line 241
    .local v0, "hash":I
    iget v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    add-int/lit16 v0, v2, 0xd9

    .line 245
    iget v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 254
    :cond_0
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 256
    return v0

    .line 251
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method public isInCache()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsMe:Z

    if-eqz v0, :cond_2

    .line 148
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getProfileMatch()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    if-eqz v0, :cond_4

    .line 160
    :cond_1
    :goto_1
    return v1

    .line 150
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v3

    iget v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatchInMap(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mPerson:Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    .line 160
    goto :goto_1
.end method

.method public isMe()Z
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 197
    .local v0, "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_0

    .line 198
    iget-boolean v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->mIsMe:Z

    .line 200
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsMe:Z

    goto :goto_0
.end method

.method public setIsInputNumber(Z)V
    .locals 0
    .param p1, "isInputNumber"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsInputNumber:Z

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "personName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "personName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "personName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
