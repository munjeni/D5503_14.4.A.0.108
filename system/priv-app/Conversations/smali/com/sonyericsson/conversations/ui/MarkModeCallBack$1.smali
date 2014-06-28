.class Lcom/sonyericsson/conversations/ui/MarkModeCallBack$1;
.super Ljava/lang/Object;
.source "MarkModeCallBack.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->initSelectionMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MarkModeCallBack;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$1;->this$0:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$1;->this$0:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$1;->this$0:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    # getter for: Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->access$000(Lcom/sonyericsson/conversations/ui/MarkModeCallBack;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
