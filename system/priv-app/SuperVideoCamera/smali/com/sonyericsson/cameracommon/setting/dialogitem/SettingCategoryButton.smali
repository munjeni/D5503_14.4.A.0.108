.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingCategoryButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;
    }
.end annotation


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 29
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 62
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 65
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    .line 66
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_category_button:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mDivider:Landroid/view/View;

    .line 69
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->category:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mCategory:Landroid/widget/TextView;

    .line 70
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->value_description:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValueDescription:Landroid/widget/TextView;

    .line 73
    return-void
.end method

.method private getSelectedItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 134
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 80
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mCategory:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getSelectedItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    .line 84
    .local v1, "selected":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    if-eqz v1, :cond_1

    .line 86
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getSubText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "subString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 92
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValueDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValueDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .end local v2    # "subString":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 104
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$color;->default_text_col:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 111
    .local v3, "textColor":I
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mCategory:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValueDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->changeDrawableState(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->background(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->apply()V

    .line 122
    return-void

    .line 95
    .end local v3    # "textColor":I
    .restart local v2    # "subString":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValueDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 100
    .end local v2    # "subString":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_1
.end method
