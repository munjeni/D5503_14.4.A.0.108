.class public Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;
.super Ljava/lang/Object;
.source "TypedSettingItem.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;"
    }
.end annotation


# instance fields
.field private final mAdditionalTextForAccessibility:Ljava/lang/String;

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDialogItemType:I

.field private final mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIconId:I

.field private mIsSelectable:Z

.field private mIsSelected:Z

.field private mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

.field private final mSubTextId:I

.field private final mText:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;IIILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)V
    .locals 2
    .param p2, "iconId"    # I
    .param p3, "labelId"    # I
    .param p4, "subTextId"    # I
    .param p5, "additionalTextForAccessibility"    # Ljava/lang/String;
    .param p6, "dialogItemType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III",
            "Ljava/lang/String;",
            "I",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p7, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    .line 50
    iput p3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIconId:I

    .line 53
    iput p6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    .line 54
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    .line 58
    iput p4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubTextId:I

    .line 59
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 61
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;ILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)V
    .locals 2
    .param p2, "iconId"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "subTextId"    # I
    .param p5, "additionalTextForAccessibility"    # Ljava/lang/String;
    .param p6, "dialogItemType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p7, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    .line 76
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 77
    iput p4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubTextId:I

    .line 78
    iput p2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIconId:I

    .line 79
    iput p6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    .line 80
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 81
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    .line 85
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 86
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 89
    return-void
.end method


# virtual methods
.method public compareData(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    const/4 v1, 0x0

    .line 204
    instance-of v2, p1, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 205
    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    .line 206
    .local v0, "other":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<*>;"
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 208
    .end local v0    # "other":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<*>;"
    :cond_0
    return v1
.end method

.method public compareData(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 213
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    const/16 v3, 0x20

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "description":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 118
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->isSelectable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_not_configurable_txt:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDialogItemType()I
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIconId:I

    return v0
.end method

.method public getSubText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 105
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubTextId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubTextId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 93
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    return v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 184
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;->onItemSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    if-nez v0, :cond_1

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;->onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    goto :goto_0
.end method

.method public setOnSelectedListener(Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .prologue
    .line 199
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 200
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 160
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    .line 161
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 155
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 156
    return-void
.end method
