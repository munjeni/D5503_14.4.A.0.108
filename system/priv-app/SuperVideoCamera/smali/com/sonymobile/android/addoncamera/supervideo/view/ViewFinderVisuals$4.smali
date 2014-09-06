.class synthetic Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$TouchCapture:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$ViewFinderVisuals$UiComponentKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 957
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->values()[Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    :try_start_0
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_22

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SURFACE_SIZE:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_21

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_20

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_FORCE_PAUSE_VIEW_FINDER:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1f

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_SHOW_BLANK_SCREEN:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1e

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1d

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_CLOSE_DIALOGS:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1c

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RELOAD_CONTENT:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1b

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_ADD_NEW_CONTENT:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1a

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_19

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_18

    :goto_a
    :try_start_b
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_STARTED:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_17

    :goto_b
    :try_start_c
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_STOPPED:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_16

    :goto_c
    :try_start_d
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SET_EARLY_THUMBNAIL:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_15

    :goto_d
    :try_start_e
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_14

    :goto_e
    :try_start_f
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_THUMBNAIL_STORE_PROGRESS_ANIMATION:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_13

    :goto_f
    :try_start_10
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_FADE_OUT_THUMBNAIL_ANIMATION:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_12

    :goto_10
    :try_start_11
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$SuperVideoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHORAGE_DIALOG_OPEN:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 927
    :goto_11
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->values()[Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$ViewFinderVisuals$UiComponentKind:[I

    :try_start_12
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$ViewFinderVisuals$UiComponentKind:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_10

    .line 755
    :goto_12
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->values()[Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    :try_start_13
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_f

    :goto_13
    :try_start_14
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_e

    :goto_14
    :try_start_15
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_d

    :goto_15
    :try_start_16
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_c

    :goto_16
    :try_start_17
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_ZOOMING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_b

    :goto_17
    :try_start_18
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_ZOOMING_WHILE_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_a

    :goto_18
    :try_start_19
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_UI_COMPONENT_DISPLAY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_9

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_8

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_7

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_6

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_5

    .line 552
    :goto_1d
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$TouchCapture:[I

    :try_start_1e
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$TouchCapture:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_4

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$TouchCapture:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_3

    .line 428
    :goto_1f
    invoke-static {}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->values()[Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    :try_start_20
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ALWAYS_CANCELED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_2

    :goto_20
    :try_start_21
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->REGION_ASSIGNED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_1

    :goto_21
    :try_start_22
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$4;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->REGION_OVERLAID:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_0

    :goto_22
    return-void

    :catch_0
    move-exception v0

    goto :goto_22

    :catch_1
    move-exception v0

    goto :goto_21

    :catch_2
    move-exception v0

    goto :goto_20

    .line 552
    :catch_3
    move-exception v0

    goto :goto_1f

    :catch_4
    move-exception v0

    goto :goto_1e

    .line 755
    :catch_5
    move-exception v0

    goto :goto_1d

    :catch_6
    move-exception v0

    goto :goto_1c

    :catch_7
    move-exception v0

    goto :goto_1b

    :catch_8
    move-exception v0

    goto :goto_1a

    :catch_9
    move-exception v0

    goto/16 :goto_19

    :catch_a
    move-exception v0

    goto/16 :goto_18

    :catch_b
    move-exception v0

    goto/16 :goto_17

    :catch_c
    move-exception v0

    goto/16 :goto_16

    :catch_d
    move-exception v0

    goto/16 :goto_15

    :catch_e
    move-exception v0

    goto/16 :goto_14

    :catch_f
    move-exception v0

    goto/16 :goto_13

    .line 927
    :catch_10
    move-exception v0

    goto/16 :goto_12

    .line 957
    :catch_11
    move-exception v0

    goto/16 :goto_11

    :catch_12
    move-exception v0

    goto/16 :goto_10

    :catch_13
    move-exception v0

    goto/16 :goto_f

    :catch_14
    move-exception v0

    goto/16 :goto_e

    :catch_15
    move-exception v0

    goto/16 :goto_d

    :catch_16
    move-exception v0

    goto/16 :goto_c

    :catch_17
    move-exception v0

    goto/16 :goto_b

    :catch_18
    move-exception v0

    goto/16 :goto_a

    :catch_19
    move-exception v0

    goto/16 :goto_9

    :catch_1a
    move-exception v0

    goto/16 :goto_8

    :catch_1b
    move-exception v0

    goto/16 :goto_7

    :catch_1c
    move-exception v0

    goto/16 :goto_6

    :catch_1d
    move-exception v0

    goto/16 :goto_5

    :catch_1e
    move-exception v0

    goto/16 :goto_4

    :catch_1f
    move-exception v0

    goto/16 :goto_3

    :catch_20
    move-exception v0

    goto/16 :goto_2

    :catch_21
    move-exception v0

    goto/16 :goto_1

    :catch_22
    move-exception v0

    goto/16 :goto_0
.end method
