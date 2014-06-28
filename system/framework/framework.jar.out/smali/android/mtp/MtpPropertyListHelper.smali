.class Landroid/mtp/MtpPropertyListHelper;
.super Ljava/lang/Object;
.source "MtpPropertyListHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Landroid/mtp/MtpPropertyList;IIIJLjava/lang/String;)V
    .locals 1
    .param p0, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "type"    # I
    .param p4, "longValue"    # J
    .param p6, "strValue"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-static {p3}, Landroid/mtp/MtpPropertyListHelper;->isStringType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0, p1, p2, p3, p6}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual/range {p0 .. p5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_0
.end method

.method public static filterNullProperty(Landroid/mtp/MtpPropertyList;)Landroid/mtp/MtpPropertyList;
    .locals 10
    .param p0, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 12
    const/4 v7, 0x0

    .line 13
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/mtp/MtpPropertyList;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 14
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v1, v1, v8

    if-eqz v1, :cond_0

    add-int/lit8 v7, v7, 0x1

    .line 13
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Landroid/mtp/MtpPropertyList;

    iget v1, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    invoke-direct {v0, v7, v1}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 17
    .local v0, "newMtpPropertyList":Landroid/mtp/MtpPropertyList;
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/mtp/MtpPropertyList;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_8

    .line 18
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v1, v1, v8

    if-eqz v1, :cond_3

    .line 19
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aget-object v1, v1, v8

    if-nez v1, :cond_4

    :cond_2
    const/4 v9, 0x1

    .line 21
    .local v9, "isEmptyValue":Z
    :goto_2
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aget v1, v1, v8

    invoke-static {v1}, Landroid/mtp/MtpPropertyListHelper;->isStringType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v9, :cond_5

    .line 17
    .end local v9    # "isEmptyValue":Z
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 19
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 22
    .restart local v9    # "isEmptyValue":Z
    :cond_5
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aget v1, v1, v8

    iget-object v2, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v2, v2, v8

    iget-object v3, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aget v3, v3, v8

    iget-object v4, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-nez v4, :cond_6

    const-wide/16 v4, 0x0

    :goto_4
    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v6, :cond_7

    const/4 v6, 0x0

    :goto_5
    invoke-static/range {v0 .. v6}, Landroid/mtp/MtpPropertyListHelper;->append(Landroid/mtp/MtpPropertyList;IIIJLjava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    aget-wide v4, v4, v8

    goto :goto_4

    :cond_7
    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aget-object v6, v6, v8

    goto :goto_5

    .line 29
    .end local v9    # "isEmptyValue":Z
    :cond_8
    return-object v0
.end method

.method private static isStringType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 33
    const v0, 0xffff

    if-eq p0, v0, :cond_0

    const v0, 0xfffe

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4001

    if-lt p0, v0, :cond_1

    const/16 v0, 0x400a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetMtpPropertyList(Landroid/mtp/MtpPropertyList;)V
    .locals 3
    .param p0, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 49
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 53
    :cond_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
