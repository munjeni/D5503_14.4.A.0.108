.class public Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;
.super Ljava/lang/Object;
.source "ModeSettingItemResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

.field private final mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramManager"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;",
            "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, "executorFactory":Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;, "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory<Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    .line 42
    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    .line 43
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .line 44
    return-void
.end method

.method private getItemType(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)I
    .locals 2
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .prologue
    .line 110
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$parameters$ParamKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 112
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 114
    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 119
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getItemType(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)I
    .locals 2
    .param p1, "value"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .prologue
    .line 127
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$parameters$ParamKey:[I

    invoke-interface {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;->getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 129
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 132
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getSettingItem(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 7
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->getItemType(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)I

    move-result v3

    .line 78
    .local v3, "type":I
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->getTitleTextId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-virtual {v5, p1, v6}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->getOpenValueSelectDialogExecutor(Ljava/lang/Object;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    .line 84
    .local v0, "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;>;"
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->getValueItems(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 85
    .local v2, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->item(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    goto :goto_0

    .line 88
    .end local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    return-object v4
.end method

.method private getValueItems(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Ljava/util/List;
    .locals 10
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v7}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->options(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v6

    .line 95
    .local v6, "options":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v7}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->get(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v1

    .line 96
    .local v1, "current":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    move-object v0, v6

    .local v0, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 97
    .local v3, "item":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;->getIconId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;->getTextId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->getItemType(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v8

    if-ne v3, v1, :cond_0

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->getItemType(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->getChangeValueExecutor(I)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 106
    .end local v3    # "item":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public generateControlItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->EV:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->getSettingItem(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 72
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->WHITE_BALANCE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->getSettingItem(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 73
    return-object v0
.end method

.method public generateTorchItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 5

    .prologue
    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v3, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 62
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->PHOTO_LIGHT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-direct {p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->getValueItems(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 63
    .local v2, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    .end local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_0
    return-object v0
.end method

.method public generateVideoSettingItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->STEADY_SHOT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->options(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->STEADY_SHOT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->getSettingItem(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->mParamManager:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->VIDEO_AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->options(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 53
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->VIDEO_AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->getSettingItem(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 55
    :cond_1
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->MICROPHONE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->getSettingItem(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 56
    return-object v0
.end method
