.class public final enum Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;
.super Ljava/lang/Enum;
.source "GeotagExplanatoryDialog.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

.field private static final sParameterTextId:I


# instance fields
.field private final mIconId:I

.field private final mIsGeotagExplanatoryDialogOn:Z

.field private final mProviderValue:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    const-string v1, "ON"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_on_txt:I

    const-string v6, "on"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;-><init>(Ljava/lang/String;IIIZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->ON:Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    .line 30
    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    const-string v7, "OFF"

    sget v10, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const-string v12, "off"

    move v8, v5

    move v9, v3

    move v11, v2

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;-><init>(Ljava/lang/String;IIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->OFF:Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->ON:Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->OFF:Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->$VALUES:[Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    .line 39
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_geotagging_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "isGeotagExplanatoryDialogOn"    # Z
    .param p6, "providerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->mIconId:I

    .line 64
    iput p4, p0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->mTextId:I

    .line 65
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->mIsGeotagExplanatoryDialogOn:Z

    .line 66
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->mProviderValue:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->$VALUES:[Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG_EXPLANATORY_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->mTextId:I

    return v0
.end method

.method public isGeotagExplanatoryDialogOn()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->mIsGeotagExplanatoryDialogOn:Z

    return v0
.end method
