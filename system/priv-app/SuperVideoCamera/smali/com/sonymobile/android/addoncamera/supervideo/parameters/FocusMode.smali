.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
.super Ljava/lang/Enum;
.source "FocusMode.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

.field public static final enum FACE_DETECTION:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

.field public static final enum FIXED:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

.field public static final enum OBJECT_TRACKING:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

.field public static final enum SINGLE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

.field private static final TAG:Ljava/lang/String; = "FocusMode"

.field private static final sParameterTextId:I = 0x7f0a0038

.field private static final sRecommendedVideoFocusModeNoExtension:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

.field private static final sRecommendedVideoFocusModes:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;


# instance fields
.field private final mFocusArea:Ljava/lang/String;

.field private final mIconId:I

.field private final mSuccessSound:Z

.field private final mTextId:I

.field private mValueForVideo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 26
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0a0039

    const-string v5, "continuous-video"

    const-string v6, "center"

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->SINGLE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    .line 32
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    const-string v1, "FIXED"

    const/4 v2, 0x1

    const/4 v3, -0x1

    const v4, 0x7f0a003b

    const-string v5, "fixed"

    const-string v6, "center"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->FIXED:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    .line 39
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x2

    const/4 v3, -0x1

    const v4, 0x7f0a003c

    const-string v5, "continuous-video"

    const-string v6, "center"

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->FACE_DETECTION:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    .line 45
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    const-string v1, "OBJECT_TRACKING"

    const/4 v2, 0x3

    const/4 v3, -0x1

    const v4, 0x7f0a0208

    const-string v5, "continuous-video"

    const-string v6, "center"

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->SINGLE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->FIXED:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->FACE_DETECTION:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->SINGLE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->FACE_DETECTION:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->FIXED:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->sRecommendedVideoFocusModes:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->SINGLE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->FIXED:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->sRecommendedVideoFocusModeNoExtension:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "valueForVideo"    # Ljava/lang/String;
    .param p6, "areaValue"    # Ljava/lang/String;
    .param p7, "successSound"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->mIconId:I

    .line 97
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->mTextId:I

    .line 98
    iput-object p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->mValueForVideo:Ljava/lang/String;

    .line 99
    iput-object p6, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->mFocusArea:Ljava/lang/String;

    .line 100
    iput-boolean p7, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->mSuccessSound:Z

    .line 101
    return-void
.end method

.method public static getDefaultValue()Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->SINGLE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    return-object v0
.end method

.method public static getFocusModeOptions(Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 210
    const-string v1, "sony-extension-version"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 212
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->sRecommendedVideoFocusModes:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    .line 214
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->sRecommendedVideoFocusModeNoExtension:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    goto :goto_0
.end method

.method public static getOptions(Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    .locals 13
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 157
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;>;"
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v8

    .line 160
    .local v8, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "sony-focus-area-values"

    const-string v12, ","

    invoke-static {p0, v11, v12}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->getSupportedValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 163
    .local v7, "supportedFocusArea":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_5

    .line 164
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 166
    invoke-static {p0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->getFocusModeOptions(Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    move-result-object v1

    .line 169
    .local v1, "expectedOptions":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v5, "modeOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;>;"
    move-object v0, v1

    .local v0, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v10, v0, v3

    .line 171
    .local v10, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 172
    .local v9, "supportedValue":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->getValueForVideo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 173
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v9    # "supportedValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 180
    .end local v10    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 181
    move-object v6, v5

    .line 194
    .end local v3    # "i$":I
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_4

    .line 195
    sget-object v11, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->FACE_DETECTION:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    invoke-static {v11, v6}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->remove(Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;Ljava/util/List;)V

    .line 199
    :cond_4
    const-string v11, "off"

    const-string v12, "sony-object-tracking-supported"

    invoke-virtual {p0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 201
    sget-object v11, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    invoke-static {v11, v6}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->remove(Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;Ljava/util/List;)V

    .line 206
    .end local v0    # "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    .end local v1    # "expectedOptions":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    .end local v4    # "len$":I
    .end local v5    # "modeOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;>;"
    :cond_5
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    invoke-interface {v6, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    return-object v11

    .line 183
    .restart local v0    # "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    .restart local v1    # "expectedOptions":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "modeOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;>;"
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    .line 184
    .restart local v10    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 185
    .restart local v9    # "supportedValue":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->getFocusArea()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 186
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getSupportedValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v4, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 234
    invoke-virtual {v5, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 235
    .local v3, "supported":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "supported":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private static remove(Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;Ljava/util/List;)V
    .locals 1
    .param p0, "option"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;>;"
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    return-object v0
.end method


# virtual methods
.method public getFocusArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->mFocusArea:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->mIconId:I

    return v0
.end method

.method public getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->FOCUS_MODE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 247
    const v0, 0x7f0a0038

    return v0
.end method

.method public getRecommendedValue([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .param p2, "value"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .prologue
    .line 261
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->SINGLE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueForVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->mValueForVideo:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessSound()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->mSuccessSound:Z

    return v0
.end method
