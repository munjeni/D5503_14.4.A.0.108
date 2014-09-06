.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;
.super Ljava/lang/Enum;
.source "SteadyShot.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

.field public static final enum OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

.field public static final enum ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

.field private static final sParameterTextId:I = 0x7f0a01b8


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 22
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    const-string v1, "ON"

    const v4, 0x7f0a0014

    const-string v5, "on"

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    .line 26
    new-instance v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    const-string v5, "OFF"

    const v8, 0x7f0a0015

    const-string v9, "off"

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->mIconId:I

    .line 54
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->mTextId:I

    .line 55
    iput-object p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->mValue:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static getOptions(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;
    .locals 8
    .param p0, "mode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v7, 0x0

    .line 102
    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->HIGH_FRAME_RATE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {p0, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    new-array v5, v7, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    .line 114
    :goto_0
    return-object v5

    .line 105
    :cond_0
    const-string v5, "sony-vs-values"

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "supported":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 108
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 109
    .local v4, "value":Ljava/lang/String;
    const-string v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    sget-object v6, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    sget-object v7, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    aput-object v7, v5, v6

    goto :goto_0

    .line 108
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    new-array v5, v7, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    return-object v0
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->mIconId:I

    return v0
.end method

.method public getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->STEADY_SHOT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method

.method public getParameterKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->STEADY_SHOT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f0a01b8

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedValue([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .param p2, "value"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .prologue
    .line 128
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->mValue:Ljava/lang/String;

    return-object v0
.end method
