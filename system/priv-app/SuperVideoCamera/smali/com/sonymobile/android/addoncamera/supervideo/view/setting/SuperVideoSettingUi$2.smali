.class synthetic Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;
.super Ljava/lang/Object;
.source "SuperVideoSettingUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$setting$dialog$SettingTabs$Tab:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$setting$SuperVideoSettingUi$Shortcut:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 208
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->values()[Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$setting$SuperVideoSettingUi$Shortcut:[I

    :try_start_0
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$setting$SuperVideoSettingUi$Shortcut:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$setting$SuperVideoSettingUi$Shortcut:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Torch:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$setting$SuperVideoSettingUi$Shortcut:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$setting$SuperVideoSettingUi$Shortcut:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Control:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    .line 162
    :goto_3
    invoke-static {}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->values()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$setting$dialog$SettingTabs$Tab:[I

    :try_start_4
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$setting$dialog$SettingTabs$Tab:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Video:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$setting$dialog$SettingTabs$Tab:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    .line 115
    :goto_5
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    :try_start_6
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    .line 162
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    .line 208
    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    goto/16 :goto_0
.end method
