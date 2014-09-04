.class public abstract Lcom/adobe/xmp/options/Options;
.super Ljava/lang/Object;
.source "Options.java"


# instance fields
.field private optionNames:Ljava/util/Map;

.field private options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    .line 49
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;->assertOptionsValid(I)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->setOptions(I)V

    .line 51
    return-void
.end method

.method private assertOptionsValid(I)V
    .locals 4
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getValidOptions()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v0, p1, v1

    .line 237
    .local v0, "invalidOptions":I
    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->assertConsistency(I)V

    .line 246
    return-void

    .line 243
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The option bit(s) 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    const-string v3, " are invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    .line 243
    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private getOptionName(I)Ljava/lang/String;
    .locals 3
    .param p1, "option"    # I

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;->procureOptionNames()Ljava/util/Map;

    move-result-object v1

    .line 260
    .local v1, "optionsNames":Ljava/util/Map;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 261
    .local v0, "key":Ljava/lang/Integer;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->defineOptionName(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_1

    .line 267
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_0
    :goto_0
    return-object v2

    .line 271
    :cond_1
    const-string v2, "<option name not defined>"

    goto :goto_0
.end method

.method private procureOptionNames()Ljava/util/Map;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/options/Options;->optionNames:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected assertConsistency(I)V
    .locals 0
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 60
    return-void
.end method

.method public containsAllOptions(I)Z
    .locals 1
    .param p1, "optionBits"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsOneOf(I)Z
    .locals 1
    .param p1, "optionBits"    # I

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract defineOptionName(I)Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    check-cast p1, Lcom/adobe/xmp/options/Options;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOption(I)Z
    .locals 1
    .param p1, "optionBit"    # I

    .prologue
    .line 99
    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptions()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    return v0
.end method

.method public getOptionsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    iget v5, p0, Lcom/adobe/xmp/options/Options;->options:I

    if-eqz v5, :cond_2

    .line 162
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget v4, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 164
    .local v4, "theBits":I
    :goto_0
    if-nez v4, :cond_0

    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "theBits":I
    :goto_1
    return-object v5

    .line 166
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    .restart local v4    # "theBits":I
    :cond_0
    add-int/lit8 v5, v4, -0x1

    and-int v1, v4, v5

    .line 167
    .local v1, "oneLessBit":I
    xor-int v3, v4, v1

    .line 168
    .local v3, "singleBit":I
    invoke-direct {p0, v3}, Lcom/adobe/xmp/options/Options;->getOptionName(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "bitName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    if-eqz v1, :cond_1

    .line 172
    const-string v5, " | "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_1
    move v4, v1

    goto :goto_0

    .line 180
    .end local v0    # "bitName":Ljava/lang/String;
    .end local v1    # "oneLessBit":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "singleBit":I
    .end local v4    # "theBits":I
    :cond_2
    const-string v5, "<none>"

    goto :goto_1
.end method

.method protected abstract getValidOptions()I
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    return v0
.end method

.method public isExactly(I)Z
    .locals 1
    .param p1, "optionBits"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOption(IZ)V
    .locals 2
    .param p1, "optionBits"    # I
    .param p2, "value"    # Z

    .prologue
    .line 109
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 110
    return-void

    .line 109
    :cond_0
    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setOptions(I)V
    .locals 0
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;->assertOptionsValid(I)V

    .line 130
    iput p1, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adobe/xmp/options/Options;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
