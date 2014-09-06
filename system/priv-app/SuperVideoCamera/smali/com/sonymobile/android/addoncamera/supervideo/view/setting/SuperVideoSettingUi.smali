.class public Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;
.super Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
.source "SuperVideoSettingUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;,
        Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;
    }
.end annotation


# static fields
.field private static final COMMON_ITEMS:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field private static final SHORTCUT_ITEMS:[Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

.field private static final TABS:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

.field private final mItemResolver:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;

.field private final mParameterManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

.field private final mShortcutItemExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;",
            ">;"
        }
    .end annotation
.end field

.field private final mUtil:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Control:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Torch:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->SHORTCUT_ITEMS:[Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_UPLOAD:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->COMMON_ITEMS:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 71
    new-array v0, v5, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Video:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->TABS:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V
    .locals 3
    .param p1, "activity"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;
    .param p2, "dialogStack"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .param p3, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p4, "paramManager"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;",
            "Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p5, "settingChanger":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface<Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;>;"
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->COMMON_ITEMS:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V

    .line 240
    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mShortcutItemExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 88
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    .line 89
    iput-object p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mParameterManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    .line 91
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-direct {v0, v1, p0, p5}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 96
    .local v0, "executorFactory":Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;, "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory<Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;>;"
    new-instance v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;

    invoke-direct {v1, p1, p4, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;-><init>(Landroid/content/Context;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;

    .line 98
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mUtil:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->TABS:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    return-object v0
.end method

.method private getShortcutIconResource(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;)I
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    .prologue
    .line 222
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$setting$SuperVideoSettingUi$Shortcut:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 236
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 224
    :pswitch_0
    const v2, 0x7f020048

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mParameterManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->PHOTO_LIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-virtual {v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->get(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;->getIconId()I

    move-result v2

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mParameterManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->WHITE_BALANCE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-virtual {v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->get(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v1

    .line 229
    .local v1, "wb":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mParameterManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->EV:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-virtual {v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->get(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    .line 230
    .local v0, "ev":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->AUTO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->ZERO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    if-ne v0, v2, :cond_0

    .line 231
    const v2, 0x7f02003a

    goto :goto_0

    .line 233
    :cond_0
    const v2, 0x7f020039

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isVisible(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 208
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$setting$SuperVideoSettingUi$Shortcut:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 217
    :cond_0
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 210
    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mParameterManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->PHOTO_LIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-virtual {v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->options(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v2

    array-length v2, v2

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showStorageExplanatoryDialog()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 288
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mParameterManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    if-ne v0, v2, :cond_1

    .line 294
    const v1, 0x7f0a02a4

    .line 299
    .local v1, "messageResID":I
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v2, 0x7f0a0117

    const/4 v3, 0x0

    const v4, 0x7f0a011d

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0

    .line 296
    .end local v1    # "messageResID":I
    :cond_1
    const v1, 0x7f0a02a5

    .restart local v1    # "messageResID":I
    goto :goto_1
.end method


# virtual methods
.method public onSettingChanged(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 7
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 115
    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->updateMenuItems(Z)V

    .line 156
    return-void

    .line 117
    :pswitch_0
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->setShutterSound()V

    .line 118
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isShutterSoundEnabled(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v1

    .line 119
    .local v1, "sound":Z
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->getRecordSoundFilePath(Z)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "soundFilePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getSoundPlayer()Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playShutterSound(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v1    # "sound":Z
    .end local v2    # "soundFilePath":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    new-instance v5, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/GeotagDialogListener;

    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-direct {v5, v6}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/GeotagDialogListener;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    invoke-virtual {v3, p1, v4, p0, v5}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setDestinationToSave()V

    .line 133
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->requestCheckCurrent()V

    .line 135
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isToggledStorageReady()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V

    .line 140
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    .line 142
    .local v0, "current":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    sget-object v3, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    if-ne v0, v3, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->showStorageExplanatoryDialog()V

    goto :goto_0

    .line 148
    .end local v0    # "current":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :pswitch_3
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->setTouchCapture()V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTabSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->onTabSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->updateMenuItems(Z)V

    .line 111
    return-void
.end method

.method public openSaveDestinationSettingDialog()V
    .locals 5

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mUtil:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mCommonItemResolver:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->generateItemAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->TABS:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    sget-object v4, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->openMenuDialogAndSelectItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 183
    return-void
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->setup()V

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->updateShortcutItems()V

    .line 105
    return-void
.end method

.method public updateMenuItems(Z)V
    .locals 3
    .param p1, "resetScrollPosition"    # Z

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->getSelectedTab()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-result-object v1

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$setting$dialog$SettingTabs$Tab:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->getSelectedTab()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 164
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->generateVideoSettingItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->updateMenuItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Z)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mCommonItemResolver:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->generateItemAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->updateMenuItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Z)V

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->findCommonSettingKeyShownBySettingDialog()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .line 170
    .local v0, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mCommonItemResolver:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->generateItemAdapter(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->updateSettingItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateShortcutItems()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 187
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-direct {v0, v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->SHORTCUT_ITEMS:[Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    .local v1, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .line 190
    .local v3, "item":Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;
    invoke-direct {p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->isVisible(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->getShortcutIconResource(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mShortcutItemExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 188
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_0
    sget-object v5, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    invoke-static {v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    invoke-direct {p0, v6}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->getShortcutIconResource(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mShortcutItemExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 204
    .end local v3    # "item":Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->updateShortcutItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 205
    return-void
.end method
