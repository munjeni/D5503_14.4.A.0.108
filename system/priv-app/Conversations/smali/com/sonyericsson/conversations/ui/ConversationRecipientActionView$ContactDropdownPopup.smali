.class Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "ConversationRecipientActionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDropdownPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .line 268
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 270
    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 271
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 273
    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 278
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 279
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 280
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 281
    return-void
.end method
