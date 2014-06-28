.class public Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
.super Ljava/lang/Object;
.source "MarkModeCallBack.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;
    }
.end annotation


# instance fields
.field public mActionMenu:Landroid/view/Menu;

.field private mContext:Landroid/content/Context;

.field public mCustomView:Landroid/view/View;

.field private mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

.field private mMultiSelectionMode:Landroid/view/ActionMode;

.field public mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/MarkModeCallBack;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private initSelectionMenu()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lcom/sonyericsson/conversations/model/CustomMenu;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/model/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, "customMenu":Lcom/sonyericsson/conversations/model/CustomMenu;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f030000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMultiSelectionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0004

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/CustomMenu;->addDropDownMenu(Landroid/widget/TextView;I)Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    .line 139
    new-instance v1, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$1;-><init>(Lcom/sonyericsson/conversations/ui/MarkModeCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 144
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    if-nez v1, :cond_0

    .line 107
    :goto_0
    return v0

    .line 91
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onMarkAll()V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onUnMarkAll()V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onDeleteMarkedItems()V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00cd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 72
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 73
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->initSelectionMenu()V

    .line 77
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->dismissPopupMenu()V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onNotifyActionModeDestroy()V

    .line 116
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .line 118
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    .line 119
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 120
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onUpdateActionMenu()V

    .line 84
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .line 124
    return-void
.end method

.method public setTitleOnSelectedView(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method
