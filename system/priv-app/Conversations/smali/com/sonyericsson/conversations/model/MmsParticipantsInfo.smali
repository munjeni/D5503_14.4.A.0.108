.class public Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
.super Ljava/lang/Object;
.source "MmsParticipantsInfo.java"


# instance fields
.field mBccList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field mCcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFrom:Lcom/sonyericsson/conversations/model/Participant;

.field mToList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mToList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mCcList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mBccList:Ljava/util/ArrayList;

    .line 57
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 58
    .local v8, "id":J
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "addr"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 59
    .local v1, "uri":Landroid/net/Uri;
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mContext:Landroid/content/Context;

    .line 61
    const/4 v7, 0x0

    .line 63
    .local v7, "c":Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "address"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "type"

    aput-object v3, v2, v0

    .line 67
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 68
    if-eqz v7, :cond_1

    .line 69
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "address":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 72
    .local v10, "type":I
    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    .line 83
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mBccList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v3, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "address":Ljava/lang/String;
    .end local v10    # "type":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 92
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_0
    throw v0

    .line 74
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v10    # "type":I
    :sswitch_1
    :try_start_1
    new-instance v0, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v0, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mFrom:Lcom/sonyericsson/conversations/model/Participant;

    goto :goto_0

    .line 77
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mToList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v3, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :sswitch_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mCcList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v3, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v6    # "address":Ljava/lang/String;
    .end local v10    # "type":I
    :cond_1
    if-eqz v7, :cond_2

    .line 92
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_2
    return-void

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_3
        0x89 -> :sswitch_1
        0x97 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getMyNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 163
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAll(Landroid/content/Context;Z)Ljava/util/Set;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "excludeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 105
    .local v0, "all":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mFrom:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mToList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mCcList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mBccList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-static {p1}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getMyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "myNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    new-instance v2, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 116
    .end local v1    # "myNumber":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getAllRecipientsCount()I
    .locals 5

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 137
    .local v0, "all":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mToList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mCcList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mBccList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mFrom:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 142
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mFrom:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getMyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "myNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    new-instance v2, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, "participantSelf":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 153
    .end local v2    # "participantSelf":Lcom/sonyericsson/conversations/model/Participant;
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    goto :goto_0
.end method

.method public getBccRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mBccList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCcRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mCcList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSender()Lcom/sonyericsson/conversations/model/Participant;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mFrom:Lcom/sonyericsson/conversations/model/Participant;

    return-object v0
.end method

.method public getToRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mToList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasMultipleRecipients()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getAllRecipientsCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
