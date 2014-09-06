.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;
.super Ljava/lang/Object;
.source "CommonSettingChanger.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOnChangedListener:Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

.field private final mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;)V
    .locals 0
    .param p1, "settings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p2, "onChangedListener"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mOnChangedListener:Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

    .line 32
    return-void
.end method

.method private sendGoogleAnalyticsSettingsCommon(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 4
    .param p1, "commonValue"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 43
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 50
    :pswitch_0
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "value":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-static {v2, v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public changeValue(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 37
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mOnChangedListener:Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;->onSettingChanged(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 39
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->sendGoogleAnalyticsSettingsCommon(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 40
    return-void
.end method
