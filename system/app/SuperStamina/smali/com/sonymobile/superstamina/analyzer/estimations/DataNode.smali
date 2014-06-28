.class Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
.super Ljava/lang/Object;
.source "DataNode.java"


# static fields
.field private static final REGEX_FIELD:Ljava/lang/String; = "(\\w*)=(\\w*)"


# instance fields
.field public lastScreenEventTime:J

.field public lastScreenOnState:Z

.field public screenOnCount:I

.field public screenOnLevelChange:I

.field public screenOnTime:J

.field public screenOnTimeNoLevelChange:J

.field public startLevel:I

.field public startTime:J

.field public stopLevel:I

.field public stopTime:J

.field public xssmActive:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNew(ZJ)Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    .locals 2
    .param p1, "newXssmActiveState"    # Z
    .param p2, "currentTime"    # J

    .prologue
    .line 176
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    invoke-direct {v0}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;-><init>()V

    .line 177
    .local v0, "node":Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    iput-boolean p1, v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->xssmActive:Z

    .line 178
    iget-boolean v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenOnState:Z

    iput-boolean v1, v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenOnState:Z

    .line 179
    iput-wide p2, v0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenEventTime:J

    .line 181
    return-object v0
.end method

.method public getLevelChange()I
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startLevel:I

    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopLevel:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStandbyLevelChange()I
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startLevel:I

    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopLevel:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnLevelChange:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStandbyTime()J
    .locals 4

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopTime:J

    iget-wide v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalTime()J
    .locals 4

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopTime:J

    iget-wide v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isValid(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-wide p1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopTime:J

    .line 117
    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopTime:J

    iget-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x112a880

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->getLevelChange()I

    move-result v1

    if-lez v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->getStandbyTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public set(Ljava/lang/String;)V
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 68
    const-string v3, "(\\w*)=(\\w*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 69
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 71
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 72
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "key":Ljava/lang/String;
    const-string v3, "xssmActive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->xssmActive:Z

    goto :goto_0

    .line 76
    :cond_1
    const-string v3, "startTime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startTime:J

    goto :goto_0

    .line 78
    :cond_2
    const-string v3, "stopTime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopTime:J

    goto :goto_0

    .line 80
    :cond_3
    const-string v3, "startLevel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startLevel:I

    goto :goto_0

    .line 82
    :cond_4
    const-string v3, "stopLevel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopLevel:I

    goto :goto_0

    .line 84
    :cond_5
    const-string v3, "screenOnTime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 85
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTime:J

    goto :goto_0

    .line 86
    :cond_6
    const-string v3, "screenOnTimeNoLevelChange"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 87
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTimeNoLevelChange:J

    goto/16 :goto_0

    .line 88
    :cond_7
    const-string v3, "lastScreenEventTime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 89
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenEventTime:J

    goto/16 :goto_0

    .line 90
    :cond_8
    const-string v3, "lastScreenOnState"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 91
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenOnState:Z

    goto/16 :goto_0

    .line 92
    :cond_9
    const-string v3, "screenOnLevelChange"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 93
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnLevelChange:I

    goto/16 :goto_0

    .line 94
    :cond_a
    const-string v3, "screenOnCount"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnCount:I

    goto/16 :goto_0

    .line 98
    .end local v0    # "key":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " xssmActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->xssmActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->startLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->stopLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenOnTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenOnTimeNoLevelChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnTimeNoLevelChange:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastScreenEventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastScreenOnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->lastScreenOnState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenOnLevelChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnLevelChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenOnCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->screenOnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
