.class Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;
.super Ljava/lang/Object;
.source "SimMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SimMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v6, 0x0

    .line 149
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    const v3, 0x7f0a00a9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    # setter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextView:Landroid/widget/TextView;
    invoke-static {v4, v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$102(Lcom/sonyericsson/conversations/ui/SimMessageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 153
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$100(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$100(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 155
    .local v2, "text":Landroid/text/Spannable;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$100(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$100(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 157
    .local v1, "spans":[Landroid/text/style/ClickableSpan;
    array-length v3, v1

    if-gtz v3, :cond_1

    .line 184
    .end local v1    # "spans":[Landroid/text/style/ClickableSpan;
    .end local v2    # "text":Landroid/text/Spannable;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v1    # "spans":[Landroid/text/style/ClickableSpan;
    .restart local v2    # "text":Landroid/text/Spannable;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    aget-object v3, v1, v6

    check-cast v3, Landroid/text/style/URLSpan;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    # setter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mUri:Landroid/net/Uri;
    invoke-static {v4, v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$002(Lcom/sonyericsson/conversations/ui/SimMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 162
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$000(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$000(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    const/4 v3, 0x1

    const v4, 0x7f070059

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 169
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$600(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 172
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_2
    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 175
    .end local v1    # "spans":[Landroid/text/style/ClickableSpan;
    .end local v2    # "text":Landroid/text/Spannable;
    :cond_3
    const/4 v3, 0x2

    const v4, 0x7f0700d2

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 177
    .restart local v0    # "item":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$600(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 179
    const/4 v3, 0x3

    const v4, 0x7f07001a

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 181
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$600(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 183
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    # setter for: Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mCM:Landroid/view/ContextMenu;
    invoke-static {v3, p1}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->access$702(Lcom/sonyericsson/conversations/ui/SimMessageFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto :goto_0
.end method
