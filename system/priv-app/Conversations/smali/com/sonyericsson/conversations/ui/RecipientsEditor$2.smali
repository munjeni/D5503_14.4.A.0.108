.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x2c

    .line 378
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNameAndNumbers()Ljava/util/List;

    move-result-object v4

    .line 380
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 381
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V
    invoke-static {v8}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1100(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    .line 387
    const-string v5, "\n| "

    .line 388
    .local v5, "sRegularExpression":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "csText":Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 391
    .local v3, "lastsecond":I
    const/4 v2, 0x0

    .line 392
    .local v2, "lastSpanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_0

    .line 393
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lastSpanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    check-cast v2, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 396
    .restart local v2    # "lastSpanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 398
    .local v6, "sb":Landroid/text/SpannableStringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 399
    .local v7, "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v9, v7, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    iget-object v10, v7, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participantToSpan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v8, v9, v10}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1700(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 400
    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 403
    .end local v7    # "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_1
    if-eqz v2, :cond_2

    .line 404
    iget-object v8, v2, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 407
    :cond_2
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 408
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    # setter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSelectionEnd:I
    invoke-static {v8, v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1802(Lcom/sonyericsson/conversations/ui/RecipientsEditor;I)I

    .line 410
    :cond_3
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v9, -0x1

    # setter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSelectionEnd:I
    invoke-static {v8, v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1802(Lcom/sonyericsson/conversations/ui/RecipientsEditor;I)I

    .line 413
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 415
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V
    invoke-static {v8}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1600(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    .line 417
    .end local v0    # "csText":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lastSpanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v3    # "lastsecond":I
    .end local v5    # "sRegularExpression":Ljava/lang/String;
    .end local v6    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_4
    return-void
.end method
