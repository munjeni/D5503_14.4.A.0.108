.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;
.super Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;
.source "CommonSettingExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .param p3, "settingChanger"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getExecutor(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .locals 3
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p2, "dialogItemFactory"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            "Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->getOpenValueSelectDialogExecutor(Ljava/lang/Object;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v0

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory$1;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;)V

    goto :goto_0

    .line 46
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
