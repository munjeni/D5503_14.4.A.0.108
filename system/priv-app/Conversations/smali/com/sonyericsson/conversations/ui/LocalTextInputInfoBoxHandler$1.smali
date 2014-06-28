.class Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;
.super Ljava/lang/Object;
.source "LocalTextInputInfoBoxHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 55
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputCommandArgs()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string v7, "primary_info"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "primaryInfo":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string v7, "secondary_info"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "secondaryInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move v0, v4

    .line 61
    .local v0, "hasPrimaryInfo":Z
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 63
    .local v1, "hasSecondaryInfo":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    .line 64
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->access$000(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :goto_2
    if-nez v0, :cond_6

    .line 70
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mPrimaryInfoView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->access$100(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_1
    :goto_3
    if-nez v1, :cond_7

    .line 81
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mSecondaryInfoView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->access$200(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .end local v0    # "hasPrimaryInfo":Z
    .end local v1    # "hasSecondaryInfo":Z
    .end local v2    # "primaryInfo":Ljava/lang/String;
    .end local v3    # "secondaryInfo":Ljava/lang/String;
    :cond_2
    :goto_4
    return-void

    .restart local v2    # "primaryInfo":Ljava/lang/String;
    .restart local v3    # "secondaryInfo":Ljava/lang/String;
    :cond_3
    move v0, v5

    .line 60
    goto :goto_0

    .restart local v0    # "hasPrimaryInfo":Z
    :cond_4
    move v1, v5

    .line 61
    goto :goto_1

    .line 66
    .restart local v1    # "hasSecondaryInfo":Z
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->access$000(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 72
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mPrimaryInfoView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->access$100(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mPrimaryInfoView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->access$100(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mPrimaryInfoView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->access$100(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 83
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mSecondaryInfoView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->access$200(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mSecondaryInfoView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->access$200(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 87
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->mSecondaryInfoView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;->access$200(Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
