.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;
.super Ljava/lang/Object;
.source "SettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mBackground:Landroid/view/View;

.field mCenterDividerLeft:Landroid/view/View;

.field mCenterDividerRight:Landroid/view/View;

.field mContainer:Landroid/view/View;

.field mDivider:Landroid/view/View;

.field mImage:Landroid/widget/ImageView;

.field mText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$1;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$ViewHolder;-><init>()V

    return-void
.end method