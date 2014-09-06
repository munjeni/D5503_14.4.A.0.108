.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
.super Ljava/lang/Enum;
.source "CommonSettingKey.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/settings/SettingKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
        ">;",
        "Lcom/sonyericsson/cameracommon/settings/SettingKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum AUTO_UPLOAD:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum BALLOON_TIPS_COUNTER:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum GEO_TAG_EXPLANATORY_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum TERM_OF_USE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;


# instance fields
.field private final mDefault:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

.field private mKey:Ljava/lang/String;

.field private mTitleTextId:I

.field private mValues:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v1, "AUTO_UPLOAD"

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_auto_upload_all_title_txt:I

    const-string v4, "auto_upload"

    sget-object v5, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_UPLOAD:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 36
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "GEO_TAG"

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_geotagging_title_txt:I

    const-string v7, "geo_tag"

    sget-object v8, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    move-result-object v9

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 41
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "GEO_TAG_EXPLANATORY_DIALOG"

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_geotagging_title_cy_txt:I

    const-string v7, "geo_tag_explanatory_dialog"

    sget-object v8, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->ON:Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    invoke-static {}, Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;->values()[Lcom/sonyericsson/cameracommon/messagepopup/GeotagExplanatoryDialog;

    move-result-object v9

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG_EXPLANATORY_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 46
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "FAST_CAPTURE"

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_title_txt:I

    const-string v7, "fast-capture"

    sget-object v8, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    new-array v9, v13, [Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v0, v9, v2

    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v0, v9, v10

    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v0, v9, v11

    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v0, v9, v12

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 56
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "TOUCH_CAPTURE"

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_touch_capturing_title_txt:I

    const-string v7, "touch_capture"

    sget-object v8, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    move-result-object v9

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 61
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "SHUTTER_SOUND"

    const/4 v5, 0x5

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_shutter_sound_title_txt:I

    const-string v7, "shutter_sound"

    sget-object v8, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 66
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "SAVE_DESTINATION"

    const/4 v5, 0x6

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_title_txt:I

    const-string v7, "storage"

    sget-object v8, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 71
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "BALLOON_TIPS_COUNTER"

    const/4 v5, 0x7

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_balloon_tips_modeselector_title_txt:I

    const-string v7, "balloon_tips_for_mode_selector"

    sget-object v8, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->COUNT_START:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->BALLOON_TIPS_COUNTER:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 76
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "VOLUME_KEY"

    const/16 v5, 0x8

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_volumekey_txt:I

    const-string v7, "volume_key"

    sget-object v8, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->ZOOM:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 81
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "TERM_OF_USE"

    const/16 v5, 0x9

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_title_txt:I

    const-string v7, "term_of_use"

    sget-object v8, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    new-array v9, v2, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TERM_OF_USE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_UPLOAD:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG_EXPLANATORY_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->BALLOON_TIPS_COUNTER:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TERM_OF_USE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 0
    .param p3, "titleTextId"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .param p6, "values"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            "[",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mTitleTextId:I

    .line 112
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mKey:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mDefault:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 114
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mValues:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 115
    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 190
    .local v3, "setting":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v4, v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    .end local v3    # "setting":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :goto_1
    return-object v3

    .line 189
    .restart local v3    # "setting":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v3    # "setting":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static fromValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .locals 6
    .param p0, "settingKey"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 208
    .local v3, "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    .end local v3    # "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :goto_1
    return-object v3

    .line 207
    .restart local v3    # "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getValueFromProviderString(Ljava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Ljava/lang/String;
    .locals 5
    .param p0, "providerValue"    # Ljava/lang/String;
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 217
    .local v3, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getProviderValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    .end local v3    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :goto_1
    return-object v4

    .line 216
    .restart local v3    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mDefault:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    return-object v0
.end method

.method public getDefaultValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .locals 1
    .param p1, "settingKey"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mDefault:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mTitleTextId:I

    return v0
.end method

.method public getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mValues:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    return-object v0
.end method
