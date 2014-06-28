.class public final Lcom/sonyericsson/fmradio/station/RadioStation;
.super Ljava/lang/Object;
.source "RadioStation.java"


# instance fields
.field private final mProgramServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/station/RadioStation;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "programServiceName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .end local p1    # "programServiceName":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/fmradio/station/RadioStation;->mProgramServiceName:Ljava/lang/String;

    .line 38
    return-void

    .line 37
    .restart local p1    # "programServiceName":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 54
    if-ne p0, p1, :cond_0

    .line 55
    const/4 v1, 0x1

    .line 61
    :goto_0
    return v1

    .line 57
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/fmradio/station/RadioStation;

    if-nez v1, :cond_1

    .line 58
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/sonyericsson/fmradio/station/RadioStation;

    .line 61
    .local v0, "station":Lcom/sonyericsson/fmradio/station/RadioStation;
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/RadioStation;->getProgramServiceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/station/RadioStation;->mProgramServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getProgramServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/fmradio/station/RadioStation;->mProgramServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/fmradio/station/RadioStation;->mProgramServiceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioStation:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/station/RadioStation;->mProgramServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
