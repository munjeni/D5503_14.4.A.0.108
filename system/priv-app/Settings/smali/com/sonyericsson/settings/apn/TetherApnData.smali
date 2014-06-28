.class public Lcom/sonyericsson/settings/apn/TetherApnData;
.super Ljava/lang/Object;
.source "TetherApnData.java"


# instance fields
.field private mApnData:[Ljava/lang/String;

.field private mIsTetherDunRequired:Z

.field private mIsTetherDunValid:Z

.field private mTypeArrayAsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 12
    .param p1, "isTetherDunRequired"    # Z
    .param p2, "apnDataString"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunRequired:Z

    .line 26
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    .line 28
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunRequired:Z

    .line 65
    move-object v1, p2

    .line 67
    .local v1, "apnData":Ljava/lang/String;
    const/16 v8, 0x12

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    .line 68
    iget-object v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    if-eqz v1, :cond_4

    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 74
    const-string v8, "^\\[ApnSettingV2\\]\\s*.*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 75
    const/4 v7, 0x2

    .line 76
    .local v7, "version":I
    const-string v8, "^\\[ApnSettingV2\\]\\s*"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_0
    const-string v8, "\\s*,\\s*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "a":[Ljava/lang/String;
    array-length v8, v0

    const/16 v9, 0xe

    if-ge v8, v9, :cond_1

    .line 83
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    .line 124
    .end local v0    # "a":[Ljava/lang/String;
    .end local v7    # "version":I
    :goto_1
    return-void

    .line 78
    :cond_0
    const/4 v7, 0x1

    .restart local v7    # "version":I
    goto :goto_0

    .line 93
    .restart local v0    # "a":[Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 94
    invoke-direct {p0, v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->getTypeArrayAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    .line 95
    const-string v5, "IP"

    .line 96
    .local v5, "protocol":Ljava/lang/String;
    const-string v6, "IP"

    .line 97
    .local v6, "roamingProtocol":Ljava/lang/String;
    const/4 v3, 0x1

    .line 98
    .local v3, "carrierEnabled":Z
    const/4 v2, 0x0

    .line 114
    .local v2, "bearer":I
    :goto_2
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0xd

    invoke-static {v0, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget-object v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v9, 0xe

    aput-object v5, v8, v9

    .line 116
    iget-object v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v9, 0xf

    aput-object v6, v8, v9

    .line 117
    iget-object v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v9, 0x10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 118
    iget-object v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v9, 0x11

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 119
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    goto :goto_1

    .line 100
    .end local v2    # "bearer":I
    .end local v3    # "carrierEnabled":Z
    .end local v5    # "protocol":Ljava/lang/String;
    .end local v6    # "roamingProtocol":Ljava/lang/String;
    :cond_2
    array-length v8, v0

    const/16 v9, 0x12

    if-ge v8, v9, :cond_3

    .line 101
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    goto :goto_1

    .line 104
    :cond_3
    const/16 v8, 0xd

    aget-object v8, v0, v8

    const-string v9, "|"

    const-string v10, ","

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    .line 105
    const/16 v8, 0xe

    aget-object v5, v0, v8

    .line 106
    .restart local v5    # "protocol":Ljava/lang/String;
    const/16 v8, 0xf

    aget-object v6, v0, v8

    .line 108
    .restart local v6    # "roamingProtocol":Ljava/lang/String;
    const/16 v8, 0x10

    :try_start_0
    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 112
    .restart local v3    # "carrierEnabled":Z
    :goto_3
    const/16 v8, 0x11

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "bearer":I
    goto :goto_2

    .line 109
    .end local v2    # "bearer":I
    .end local v3    # "carrierEnabled":Z
    :catch_0
    move-exception v4

    .line 110
    .local v4, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    .restart local v3    # "carrierEnabled":Z
    goto :goto_3

    .line 122
    .end local v0    # "a":[Ljava/lang/String;
    .end local v3    # "carrierEnabled":Z
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "protocol":Ljava/lang/String;
    .end local v6    # "roamingProtocol":Ljava/lang/String;
    .end local v7    # "version":I
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    goto :goto_1
.end method

.method private getTypeArrayAsString([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "a"    # [Ljava/lang/String;

    .prologue
    const/16 v5, 0xd

    .line 248
    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    const/4 v3, 0x0

    .line 264
    :goto_0
    return-object v3

    .line 252
    :cond_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0xd

    new-array v1, v3, [Ljava/lang/String;

    .line 253
    .local v1, "typeArray":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, p1

    add-int/lit8 v4, v4, -0xd

    invoke-static {p1, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v2, "types":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 258
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 260
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAuthType()I
    .locals 3

    .prologue
    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getBearer()I
    .locals 3

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCarrierEnabled()Z
    .locals 3

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 288
    :goto_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRoamingProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTypeArray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isTetherDunValid()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    return v0
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 2
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 309
    return-void
.end method

.method public setAuthType(I)V
    .locals 3
    .param p1, "authType"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 353
    return-void
.end method

.method public setBearer(I)V
    .locals 3
    .param p1, "bearer"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 393
    return-void
.end method

.method public setCarrierEnabled(Z)V
    .locals 3
    .param p1, "carrierEnabled"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 384
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 2
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    .line 345
    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 2
    .param p1, "mmsPort"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 341
    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 2
    .param p1, "mmsProxy"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    .line 337
    return-void
.end method

.method public setMmsc(Ljava/lang/String;)V
    .locals 2
    .param p1, "mmsc"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    .line 333
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 2
    .param p1, "mnc"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    .line 349
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 305
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 325
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 2
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 317
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object p1, v0, v1

    .line 366
    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 2
    .param p1, "proxy"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 313
    return-void
.end method

.method public setRoamingProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "roamingProtocol"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xf

    aput-object p1, v0, v1

    .line 375
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x6

    aput-object p1, v0, v1

    .line 329
    return-void
.end method

.method public setTypeArray(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeArrayAsString"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 321
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[ApnSettingV2] "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    const-string v3, ","

    const-string v4, "|"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
