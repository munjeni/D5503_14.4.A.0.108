.class public final enum Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
.super Ljava/lang/Enum;
.source "SettingTabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

.field public static final enum Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

.field public static final enum Photo:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

.field public static final enum Video:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;


# instance fields
.field private final iconId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    const-string v1, "Photo"

    sget v2, Lcom/sonyericsson/cameracommon/R$drawable;->setting_tab_photo:I

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Photo:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 29
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    const-string v1, "Video"

    sget v2, Lcom/sonyericsson/cameracommon/R$drawable;->setting_tab_video:I

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Video:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 30
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    const-string v1, "Common"

    sget v2, Lcom/sonyericsson/cameracommon/R$drawable;->setting_tab_common:I

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Photo:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Video:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->$VALUES:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "iconId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->iconId:I

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 27
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->iconId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->$VALUES:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    return-object v0
.end method
