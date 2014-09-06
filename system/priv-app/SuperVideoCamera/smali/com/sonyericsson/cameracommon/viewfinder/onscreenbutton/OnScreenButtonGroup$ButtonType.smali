.class public final enum Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
.super Ljava/lang/Enum;
.source "OnScreenButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

.field public static final enum CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

.field public static final enum HIDDEN:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

.field public static final enum NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

.field public static final enum PHOTO_TO_VIDEO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

.field public static final enum START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

.field public static final enum STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

.field public static final enum VIDEO_TO_PHOTO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;


# instance fields
.field final backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field final mainButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field final subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, -0x1

    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    const-string v1, "NONE"

    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v3, v9, v9, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v4, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v4, v9, v9, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v5, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v6, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_bg_icn:I

    sget v7, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_port_bg_icn:I

    invoke-direct {v5, v6, v7, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .line 76
    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    const-string v4, "HIDDEN"

    new-instance v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v6, v9, v9, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v7, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v7, v9, v9, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v8, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_bg_icn:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_port_bg_icn:I

    invoke-direct {v8, v0, v1, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->HIDDEN:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .line 90
    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    const-string v4, "CAPTURE"

    new-instance v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_photo_large:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_photo_large_portrait:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_shutter_button_txt:I

    invoke-direct {v6, v0, v1, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v7, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_photo_small:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_photo_small_portrait:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_shutter_button_txt:I

    invoke-direct {v7, v0, v1, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v8, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_video_bg_icn:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_video_bg_port_icn:I

    invoke-direct {v8, v0, v1, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .line 108
    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    const-string v4, "START_RECORDING"

    new-instance v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_video_large:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_video_large_portrait:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_recording_button_txt:I

    invoke-direct {v6, v0, v1, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v7, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_video_small:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_video_small_portrait:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_recording_button_txt:I

    invoke-direct {v7, v0, v1, v5}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v8, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_video_bg_icn:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_video_bg_port_icn:I

    invoke-direct {v8, v0, v1, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .line 125
    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    const-string v4, "STOP_RECORDING"

    const/4 v5, 0x4

    new-instance v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->recording_button_animation_large:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->recording_button_animation_large_port:I

    sget v7, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_recording_stop_button_txt:I

    invoke-direct {v6, v0, v1, v7}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v7, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->recording_button_animation_small:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->recording_button_animation_small_port:I

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_recording_stop_button_txt:I

    invoke-direct {v7, v0, v1, v8}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v8, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_video_bg_icn:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_video_bg_port_icn:I

    invoke-direct {v8, v0, v1, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .line 142
    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    const-string v4, "PHOTO_TO_VIDEO"

    const/4 v5, 0x5

    new-instance v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_switch_photo_to_video:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_switch_photo_to_video_portrait:I

    sget v7, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_switch_to_video_txt:I

    invoke-direct {v6, v0, v1, v7}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v7, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_switch_photo_to_video:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_switch_photo_to_video_portrait:I

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_switch_to_video_txt:I

    invoke-direct {v7, v0, v1, v8}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v8, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_bg_icn:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_port_bg_icn:I

    invoke-direct {v8, v0, v1, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PHOTO_TO_VIDEO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .line 159
    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    const-string v4, "VIDEO_TO_PHOTO"

    const/4 v5, 0x6

    new-instance v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_switch_video_to_photo:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_switch_video_to_photo_portrait:I

    sget v7, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_switch_to_photo_txt:I

    invoke-direct {v6, v0, v1, v7}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v7, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_switch_video_to_photo:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->capture_button_switch_video_to_photo_portrait:I

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_switch_to_photo_txt:I

    invoke-direct {v7, v0, v1, v8}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    new-instance v8, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_bg_icn:I

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_capture_button_photo_port_bg_icn:I

    invoke-direct {v8, v0, v1, v9}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->VIDEO_TO_PHOTO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->HIDDEN:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->START_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    aput-object v1, v0, v12

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->STOP_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PHOTO_TO_VIDEO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->VIDEO_TO_PHOTO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V
    .locals 0
    .param p3, "main"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
    .param p4, "sub"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
    .param p5, "background"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;",
            "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;",
            "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 177
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->mainButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 178
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 179
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 180
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    return-object v0
.end method
