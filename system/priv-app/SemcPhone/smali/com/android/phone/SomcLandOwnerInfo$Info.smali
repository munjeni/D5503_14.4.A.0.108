.class Lcom/android/phone/SomcLandOwnerInfo$Info;
.super Ljava/lang/Object;
.source "SomcLandOwnerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcLandOwnerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# instance fields
.field private final mData:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcLandOwnerInfo$Info;->mData:[Ljava/lang/String;

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/SomcLandOwnerInfo$Info;->mData:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 127
    iget-object v5, p0, Lcom/android/phone/SomcLandOwnerInfo$Info;->mData:[Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, ""

    .line 137
    :goto_0
    return-object v5

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v1, "displayName":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/phone/SomcLandOwnerInfo$Info;->mData:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 131
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 132
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    .end local v4    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
