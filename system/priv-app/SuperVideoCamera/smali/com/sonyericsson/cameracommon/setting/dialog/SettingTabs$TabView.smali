.class Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;
.super Ljava/lang/Object;
.source "SettingTabs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field final mFrame:Landroid/widget/FrameLayout;

.field final mIcon:Landroid/widget/ImageView;

.field mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;I)V
    .locals 2
    .param p2, "layoutId"    # I

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mIcon:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->clear()V

    .line 139
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->access$100(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->mListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->access$100(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;->onTabSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    goto :goto_0
.end method

.method public set(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$TabView;->mTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->iconId:I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    return-void
.end method
