.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;
.super Ljava/lang/Object;
.source "CommonSettingItemResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

.field private final mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

.field private final mItems:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field private final mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p3, "executorFactory"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;
    .param p4, "settingItems"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 46
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .line 48
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mItems:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 49
    return-void
.end method

.method private getDialogItemType(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)I
    .locals 3
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    const/4 v0, 0x3

    .line 127
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 144
    :goto_0
    :pswitch_0
    return v0

    .line 136
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSettingItem(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 5
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ">;)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .line 154
    .local v0, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 155
    .local v2, "selected":Z
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->isSelectable(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 157
    .local v1, "selectable":Z
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getTextId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    return-object v3

    .line 155
    .end local v1    # "selectable":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVisible(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 111
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 113
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->isAvailable()Z

    move-result v0

    goto :goto_0

    .line 116
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isPreinstalledApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public generateItemAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 14

    .prologue
    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v11, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v11, v12}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 58
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v10, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;>;"
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mItems:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .local v1, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_1

    aget-object v6, v1, v3

    .line 60
    .local v6, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    invoke-direct {p0, v6}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->isVisible(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 61
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v6    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v3    # "i$":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 67
    .restart local v6    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    invoke-direct {p0, v6}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->getDialogItemType(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)I

    move-result v5

    .line 69
    .local v5, "itemType":I
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v12, v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v12

    invoke-interface {v12}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getIconId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getTitleId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    iget-object v13, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-virtual {v12, v6, v13}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->getExecutor(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    .line 75
    .local v2, "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;>;"
    sget-object v11, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_UPLOAD:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v6, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 85
    :cond_2
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 78
    :cond_3
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    invoke-virtual {v11, v5}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->getChangeValueExecutor(I)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v9

    .line 80
    .local v9, "valueExecutor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    array-length v7, v1

    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v8, v1, v4

    .line 81
    .local v8, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-direct {p0, v8, v9}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->getSettingItem(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->item(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 88
    .end local v1    # "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .end local v2    # "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;>;"
    .end local v4    # "i$":I
    .end local v5    # "itemType":I
    .end local v6    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v8    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .end local v9    # "valueExecutor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    :cond_4
    return-object v0
.end method

.method public generateItemAdapter(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 9
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 97
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v7, v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 98
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->getDialogItemType(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)I

    move-result v4

    .line 100
    .local v4, "itemType":I
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    invoke-virtual {v7, v4}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->getChangeValueExecutor(I)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v6

    .line 103
    .local v6, "valueExecutor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v1, v2

    .line 104
    .local v3, "item":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-direct {p0, v3, v6}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->getSettingItem(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "item":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_0
    return-object v0
.end method
