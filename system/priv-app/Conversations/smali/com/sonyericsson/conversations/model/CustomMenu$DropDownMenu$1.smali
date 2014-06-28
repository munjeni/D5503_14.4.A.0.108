.class Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu$1;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu$1;->this$0:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu$1;->this$0:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    # getter for: Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->access$000(Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 51
    return-void
.end method
