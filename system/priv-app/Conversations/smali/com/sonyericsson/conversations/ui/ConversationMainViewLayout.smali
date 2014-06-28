.class public Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;
.super Landroid/widget/RelativeLayout;
.source "ConversationMainViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;
    }
.end annotation


# instance fields
.field private mKeyboardListener:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;->mKeyboardListener:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;->mKeyboardListener:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;->mKeyboardListener:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;

    .line 35
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 43
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;->mKeyboardListener:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 45
    .local v0, "heightSize":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;->mKeyboardListener:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;->onDisplayHeightChange(I)V

    .line 47
    .end local v0    # "heightSize":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 48
    return-void
.end method

.method public setKeyboardVisibilityListener(Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;->mKeyboardListener:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;

    .line 39
    return-void
.end method
