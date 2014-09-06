.class public final enum Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
.super Ljava/lang/Enum;
.source "SizeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/device/SizeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LcdSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

.field public static final enum EXT_LARGE:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

.field public static final enum FULL_HD:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

.field public static final enum LARGE:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

.field public static final enum MIDDLE:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

.field public static final enum SMALL:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

.field public static final enum WUXGA:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    const-string v1, "WUXGA"

    const/16 v2, 0x780

    const/16 v3, 0x4b0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->WUXGA:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    .line 102
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    const-string v1, "FULL_HD"

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->FULL_HD:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    .line 105
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    const-string v1, "EXT_LARGE"

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->EXT_LARGE:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    .line 108
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    const-string v1, "LARGE"

    const/16 v2, 0x3c0

    const/16 v3, 0x21c

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->LARGE:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    .line 111
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    const-string v1, "MIDDLE"

    const/16 v2, 0x356

    const/16 v3, 0x1e0

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->MIDDLE:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    .line 114
    new-instance v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    const-string v1, "SMALL"

    const/4 v2, 0x5

    const/16 v3, 0x1e0

    const/16 v4, 0x140

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->SMALL:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    sget-object v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->WUXGA:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->FULL_HD:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->EXT_LARGE:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->LARGE:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->MIDDLE:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->SMALL:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->$VALUES:[Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput p3, p0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->width:I

    .line 122
    iput p4, p0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->height:I

    .line 123
    return-void
.end method

.method public static getLcdSize(I)Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
    .locals 5
    .param p0, "height"    # I

    .prologue
    .line 126
    invoke-static {}, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->values()[Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 127
    .local v3, "size":Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
    iget v4, v3, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->height:I

    if-ne p0, v4, :cond_0

    .line 134
    .end local v3    # "size":Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
    :goto_1
    return-object v3

    .line 126
    .restart local v3    # "size":Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "size":Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
    :cond_1
    sget-object v4, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->FULL_HD:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    iget v4, v4, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->height:I

    if-ge v4, p0, :cond_2

    sget-object v4, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->WUXGA:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    iget v4, v4, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->height:I

    if-ge p0, v4, :cond_2

    .line 132
    sget-object v3, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->WUXGA:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    goto :goto_1

    .line 134
    :cond_2
    sget-object v3, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->LARGE:Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;->$VALUES:[Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/device/SizeConstants$LcdSize;

    return-object v0
.end method
