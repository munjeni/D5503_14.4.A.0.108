.class public Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
.super Ljava/lang/Object;
.source "SettingItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAdditionalTextForAccessibility:Ljava/lang/String;

.field private final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mDialogItemType:I

.field private mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mIconId:I

.field private mIsSelectable:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelected:Z

.field private mSubTextId:I

.field private mText:Ljava/lang/String;

.field private mTextId:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    .line 13
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    .line 14
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubTextId:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    .line 18
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 19
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSelectable:Z

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSelected:Z

    .line 25
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 10

    .prologue
    .line 34
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 35
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubTextId:I

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;-><init>(Ljava/lang/Object;ILjava/lang/String;ILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)V

    .line 55
    .local v0, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 57
    .local v8, "child":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 45
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .end local v8    # "child":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubTextId:I

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;-><init>(Ljava/lang/Object;IIILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)V

    .restart local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    goto :goto_0

    .line 61
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSelectable:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelectable(Z)V

    .line 62
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSelected:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 64
    return-object v0
.end method

.method public dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    .line 94
    return-object p0
.end method

.method public executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    .local p1, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 99
    return-object p0
.end method

.method public iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    .line 69
    return-object p0
.end method

.method public item(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 1
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-object p0
.end method

.method public selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSelectable:Z

    .line 117
    return-object p0
.end method

.method public selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSelected:Z

    .line 112
    return-object p0
.end method

.method public subTextId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubTextId:I

    .line 79
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    .line 74
    return-object p0
.end method
