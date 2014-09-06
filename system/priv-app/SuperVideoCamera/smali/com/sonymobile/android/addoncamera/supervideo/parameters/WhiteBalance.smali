.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;
.super Ljava/lang/Enum;
.source "WhiteBalance.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

.field public static final enum AUTO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

.field public static final enum CLOUDY_DAYLIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

.field public static final enum DAYLIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

.field public static final enum FLUORESCENT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

.field public static final enum INCANDESCENT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

.field private static final sParameterTextId:I = 0x7f0a0053


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    const-string v1, "AUTO"

    const v3, 0x7f020095

    const v4, 0x7f0a0054

    const-string v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->AUTO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    .line 28
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    const-string v4, "INCANDESCENT"

    const v6, 0x7f020099

    const v7, 0x7f0a0055

    const-string v8, "incandescent"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->INCANDESCENT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    .line 32
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    const-string v4, "FLUORESCENT"

    const v6, 0x7f020098

    const v7, 0x7f0a0056

    const-string v8, "fluorescent"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->FLUORESCENT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    .line 36
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    const-string v4, "DAYLIGHT"

    const v6, 0x7f020097

    const v7, 0x7f0a0057

    const-string v8, "daylight"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->DAYLIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    .line 40
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    const-string v4, "CLOUDY_DAYLIGHT"

    const v6, 0x7f020096

    const v7, 0x7f0a0058

    const-string v8, "cloudy-daylight"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->AUTO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->INCANDESCENT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->FLUORESCENT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->DAYLIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    aput-object v1, v0, v12

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->mIconId:I

    .line 67
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->mTextId:I

    .line 68
    iput-object p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->mValue:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static getOptions(Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;
    .locals 9
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 107
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v4, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;>;"
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v6

    .line 109
    .local v6, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 110
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 111
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 112
    .local v7, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 113
    .local v5, "supportedValue":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 114
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v5    # "supportedValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_0

    .line 121
    .end local v0    # "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v7    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;
    :cond_2
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    return-object v8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    return-object v0
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->mIconId:I

    return v0
.end method

.method public getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->WHITE_BALANCE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f0a0053

    return v0
.end method

.method public getRecommendedValue([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .param p2, "value"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .prologue
    .line 136
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->mValue:Ljava/lang/String;

    return-object v0
.end method
