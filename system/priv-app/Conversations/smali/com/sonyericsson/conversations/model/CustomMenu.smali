.class public Lcom/sonyericsson/conversations/model/CustomMenu;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/CustomMenu;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/CustomMenu;->mMenus:Ljava/util/ArrayList;

    .line 75
    return-void
.end method


# virtual methods
.method public addDropDownMenu(Landroid/widget/TextView;I)Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "menuId"    # I

    .prologue
    .line 78
    new-instance v0, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/CustomMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 79
    .local v0, "menu":Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/CustomMenu;->mMenus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-object v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 85
    return-void
.end method
