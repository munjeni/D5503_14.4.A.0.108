.class public final Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
.super Ljava/lang/Object;
.source "Composer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/Composer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmsCounterInfo"
.end annotation


# instance fields
.field public encoding:I

.field public nrRemainingCharsInSegment:I

.field public nrSegments:I

.field public nrUsedCharsInSegment:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    .line 97
    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    .line 98
    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    .line 99
    return-void
.end method


# virtual methods
.method copyTo(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)V
    .locals 1
    .param p1, "other"    # Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    .prologue
    .line 90
    iget v0, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    iput v0, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    .line 91
    iget v0, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    iput v0, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    .line 92
    iget v0, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    iput v0, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    .line 93
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 103
    instance-of v2, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 104
    check-cast v0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    .line 106
    .local v0, "other":Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    iget v3, v0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    iget v3, v0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    iget v3, v0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 111
    .end local v0    # "other":Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    :cond_0
    return v1
.end method

.method public getSegmentSize()I
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0x2a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
