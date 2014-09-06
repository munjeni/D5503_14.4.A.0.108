.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;
.super Ljava/lang/Object;
.source "SettingUiUtil.java"


# instance fields
.field private final mMenuShortcutTag:Ljava/lang/Object;

.field private final mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ui"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
    .param p2, "menuShortcutTag"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    .line 25
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;)Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    return-object v0
.end method


# virtual methods
.method public openMenuDialogAndSelectItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .locals 5
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "selectItemData"    # Ljava/lang/Object;
    .param p3, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p4, "selectedTab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 38
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->selectShortcut(Ljava/lang/Object;)V

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    invoke-interface {v3, p2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->compareData(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 44
    .restart local v2    # "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    invoke-virtual {v3, p1, p3, p4, v4}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Ljava/lang/Object;)V

    .line 52
    if-eqz v2, :cond_1

    .line 53
    move-object v1, v2

    .line 55
    .local v1, "requestToSelect":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;

    invoke-direct {v4, p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .end local v1    # "requestToSelect":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1
    return-void

    .line 41
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
