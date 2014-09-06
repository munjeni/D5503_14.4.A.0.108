.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;
.super Ljava/lang/Enum;
.source "PhotoLight.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

.field public static final enum OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

.field public static final enum ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

.field private static final sParameterTextId:I = 0x7f0a023e


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    const-string v1, "ON"

    const v3, 0x7f02003d

    const v4, 0x7f0a0014

    const-string v5, "torch"

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    .line 27
    new-instance v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    const-string v5, "OFF"

    const v7, 0x7f02003e

    const v8, 0x7f0a0015

    const-string v9, "off"

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "booleanValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->mIconId:I

    .line 57
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->mTextId:I

    .line 58
    iput-object p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->mValue:Ljava/lang/String;

    .line 59
    iput-boolean p6, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->mBooleanValue:Z

    .line 60
    return-void
.end method

.method public static getOptions(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;
    .locals 10
    .param p0, "mode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 98
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v5, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;>;"
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v7

    .line 100
    .local v7, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    .line 101
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 102
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    move-result-object v1

    .line 103
    .local v1, "expectedOptions":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;
    move-object v0, v1

    .local v0, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v8, v0, v3

    .line 104
    .local v8, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 105
    .local v6, "supportedValue":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 106
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v6    # "supportedValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 113
    .end local v0    # "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;
    .end local v1    # "expectedOptions":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v8    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;
    :cond_2
    const/4 v9, 0x0

    new-array v9, v9, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    return-object v9
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    return-object v0
.end method


# virtual methods
.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->mBooleanValue:Z

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->mIconId:I

    return v0
.end method

.method public getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->PHOTO_LIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f0a023e

    return v0
.end method

.method public getRecommendedValue([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .param p2, "value"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .prologue
    .line 132
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->mValue:Ljava/lang/String;

    return-object v0
.end method
