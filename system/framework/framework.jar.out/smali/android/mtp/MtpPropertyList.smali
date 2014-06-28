.class Landroid/mtp/MtpPropertyList;
.super Ljava/lang/Object;
.source "MtpPropertyList.java"


# instance fields
.field private mCount:I

.field public mDataTypes:[I

.field public mLongValues:[J

.field private mMaxCount:I

.field public mObjectHandles:[I

.field public mPropertyCodes:[I

.field public mResult:I

.field public mStringValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "maxCount"    # I
    .param p2, "result"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    .line 50
    iput p2, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    .line 51
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    .line 52
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    .line 53
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    .line 55
    return-void
.end method

.method private resizeLists()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 121
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    .line 123
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v2, v5, [I

    .line 124
    .local v2, "objectHandles":[I
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v3, v5, [I

    .line 125
    .local v3, "propertyCodes":[I
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v0, v5, [I

    .line 127
    .local v0, "dataTypes":[I
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    array-length v6, v6

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    array-length v6, v6

    invoke-static {v5, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    array-length v6, v6

    invoke-static {v5, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iput-object v2, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    .line 132
    iput-object v3, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    .line 133
    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    .line 135
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-eqz v5, :cond_0

    .line 136
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v5, [J

    .line 137
    .local v1, "longValues":[J
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    array-length v6, v6

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    .line 141
    .end local v1    # "longValues":[J
    :cond_0
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 142
    iget v5, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v4, v5, [Ljava/lang/String;

    .line 143
    .local v4, "stringValues":[Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput-object v4, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    .line 146
    .end local v4    # "stringValues":[Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public append(IIIJ)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "type"    # I
    .param p4, "value"    # J

    .prologue
    .line 58
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 59
    .local v0, "index":I
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    if-ne v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Landroid/mtp/MtpPropertyList;->resizeLists()V

    .line 62
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-nez v1, :cond_1

    .line 63
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    .line 65
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 66
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 67
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aput p3, v1, v0

    .line 68
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    aput-wide p4, v1, v0

    .line 69
    return-void
.end method

.method public append(IIILjava/lang/String;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "type"    # I
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 93
    .local v0, "index":I
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Landroid/mtp/MtpPropertyList;->resizeLists()V

    .line 96
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 97
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    .line 99
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 100
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 101
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aput p3, v1, v0

    .line 102
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aput-object p4, v1, v0

    .line 103
    return-void
.end method

.method public append(IILjava/lang/String;)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 72
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 73
    .local v0, "index":I
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    if-ne v0, v1, :cond_0

    .line 74
    invoke-direct {p0}, Landroid/mtp/MtpPropertyList;->resizeLists()V

    .line 76
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 77
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    .line 79
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 80
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 81
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    const v2, 0xffff

    aput v2, v1, v0

    .line 82
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aput-object p3, v1, v0

    .line 83
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    return v0
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 106
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    .line 107
    return-void
.end method
