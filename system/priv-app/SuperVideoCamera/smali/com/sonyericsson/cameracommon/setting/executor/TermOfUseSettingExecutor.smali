.class public Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;
.super Ljava/lang/Object;
.source "TermOfUseSettingExecutor.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .prologue
    .line 29
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    return-object v0
.end method

.method private showTermsAndConditions()V
    .locals 4

    .prologue
    .line 40
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 41
    .local v0, "act":Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$1;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;)V

    new-instance v3, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor$2;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showTermsAndConditions(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor<TT;>;"
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;->showTermsAndConditions()V

    .line 37
    return-void
.end method
