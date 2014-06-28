.class public Lcom/android/mms/model/TextModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "TextModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextModel"


# instance fields
.field private final mCharset:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "charset"    # I
    .param p5, "data"    # [B
    .param p6, "region"    # Lcom/android/mms/model/RegionModel;

    .prologue
    .line 51
    const-string v2, "text"

    if-eqz p5, :cond_1

    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;)V

    .line 54
    if-nez p4, :cond_0

    .line 57
    const/16 p4, 0x6a

    .line 59
    :cond_0
    iput p4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    .line 60
    invoke-direct {p0, p5}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 61
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    new-array v5, v0, [B

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "region"    # Lcom/android/mms/model/RegionModel;

    .prologue
    .line 46
    const/16 v4, 0x6a

    const/4 v0, 0x0

    new-array v5, v0, [B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .line 47
    return-void
.end method

.method private extractTextFromData([B)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 64
    if-eqz p1, :cond_1

    .line 66
    :try_start_0
    iget v2, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 77
    :goto_0
    return-object v2

    .line 69
    :cond_0
    iget v2, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "TextModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public cloneText()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 102
    return-void
.end method

.method public getCharset()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilMediaStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 116
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 117
    return-void

    .line 112
    :cond_1
    iget-short v0, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v0, v3, :cond_0

    .line 113
    iput-boolean v2, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 98
    return-void
.end method
