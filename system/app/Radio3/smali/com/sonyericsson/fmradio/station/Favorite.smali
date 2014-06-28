.class public final Lcom/sonyericsson/fmradio/station/Favorite;
.super Ljava/lang/Object;
.source "Favorite.java"


# instance fields
.field private final mColor:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/fmradio/station/Favorite;->mName:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/sonyericsson/fmradio/station/Favorite;->mColor:I

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 50
    if-ne p0, p1, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 57
    :goto_0
    return v1

    .line 53
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/fmradio/station/Favorite;

    if-nez v1, :cond_1

    .line 54
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 56
    check-cast v0, Lcom/sonyericsson/fmradio/station/Favorite;

    .line 57
    .local v0, "favorite":Lcom/sonyericsson/fmradio/station/Favorite;
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/station/Favorite;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sonyericsson/fmradio/station/Favorite;->mColor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/fmradio/station/Favorite;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/fmradio/station/Favorite;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Favorite:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/station/Favorite;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
