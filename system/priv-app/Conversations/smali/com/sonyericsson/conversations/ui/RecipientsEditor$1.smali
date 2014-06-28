.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 250
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 13
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v9, 0x0

    const/4 v12, -0x1

    .line 302
    if-nez p1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v11, 0x1

    # setter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mParticipantChanged:Z
    invoke-static {v10, v11}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1002(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "currentText":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
    invoke-static {v10}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$900(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 311
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
    invoke-static {v10}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$900(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v10

    invoke-interface {v10, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;->onEditorContentChanged(Ljava/lang/String;)V

    .line 314
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 317
    .local v6, "len":I
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeTextListener()V
    invoke-static {v10}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1100(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    .line 320
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getAllRecipientCount()I

    move-result v10

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mMaxRecipientCount:I
    invoke-static {v11}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1200(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)I

    move-result v11

    if-le v10, v11, :cond_3

    .line 321
    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->SPANOBJECT:Ljava/lang/Object;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$100()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p1, v10}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 322
    .local v8, "start":I
    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->SPANOBJECT:Ljava/lang/Object;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$100()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p1, v10}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 323
    .local v2, "end":I
    if-eq v8, v12, :cond_2

    if-eq v2, v12, :cond_2

    .line 324
    invoke-interface {p1, v8, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 326
    :cond_2
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->couldNotAddMoreRecipientsToast()V
    invoke-static {v10}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1300(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    .line 329
    .end local v2    # "end":I
    .end local v8    # "start":I
    :cond_3
    const/4 v3, 0x0

    .line 332
    .local v3, "isGenerateBubble":Z
    const/4 v10, 0x2

    if-lt v6, v10, :cond_4

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsInputLastSeparator:Z
    invoke-static {v10}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$500(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 333
    new-instance v4, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-direct {v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;-><init>()V

    .line 335
    .local v4, "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    add-int/lit8 v10, v6, -0x2

    add-int/lit8 v11, v6, -0x2

    const-class v12, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v10, v11, v12}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 337
    .local v0, "a":[Landroid/text/style/ImageSpan;
    if-eqz v0, :cond_4

    array-length v10, v0

    if-gtz v10, :cond_4

    .line 339
    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, "name":Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 341
    .local v5, "lastsecond":I
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    .line 342
    iget-object v10, v4, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    iput-object v10, v4, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    .line 344
    iget-object v10, v4, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 345
    if-gez v5, :cond_7

    :goto_1
    invoke-interface {p1, v9, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 346
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->editorRecipientAdded(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V
    invoke-static {v9, v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V

    .line 347
    const/4 v3, 0x1

    .line 352
    .end local v0    # "a":[Landroid/text/style/ImageSpan;
    .end local v4    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v5    # "lastsecond":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsInputLastSeparator:Z
    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$500(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C
    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$600(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_5

    if-nez v3, :cond_5

    .line 353
    add-int/lit8 v9, v6, -0x1

    invoke-interface {p1, v9, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 357
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$700(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 358
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    instance-of v9, v9, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTextBeforeLength:I
    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)I

    move-result v9

    if-ge v6, v9, :cond_8

    .line 360
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->deleteCommaAndImageSpan(Ljava/lang/CharSequence;)V
    invoke-static {v9, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$800(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)V

    .line 366
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addTextListener()V
    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1600(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    .line 368
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->reportRecipientsChange()V

    goto/16 :goto_0

    .line 345
    .restart local v0    # "a":[Landroid/text/style/ImageSpan;
    .restart local v4    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .restart local v5    # "lastsecond":I
    .restart local v7    # "name":Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v5, 0x1

    goto :goto_1

    .line 362
    .end local v0    # "a":[Landroid/text/style/ImageSpan;
    .end local v4    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v5    # "lastsecond":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->changeBubbleLandscape(Ljava/lang/CharSequence;)V
    invoke-static {v9, p1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1500(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 254
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->SPANOBJECT:Ljava/lang/Object;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$100()Ljava/lang/Object;

    move-result-object v1

    add-int v2, p2, p3

    const/16 v3, 0x12

    invoke-interface {v0, v1, p2, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 256
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    add-int v2, p2, p4

    const-class v3, Landroid/text/style/ImageSpan;

    invoke-interface {v0, p2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    # setter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedImage:[Landroid/text/style/ImageSpan;
    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$202(Lcom/sonyericsson/conversations/ui/RecipientsEditor;[Landroid/text/style/ImageSpan;)[Landroid/text/style/ImageSpan;

    .line 257
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    add-int v2, p2, p4

    const-class v3, Landroid/text/Annotation;

    invoke-interface {v0, p2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    # setter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mAffectedAnnotation:[Landroid/text/Annotation;
    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$302(Lcom/sonyericsson/conversations/ui/RecipientsEditor;[Landroid/text/Annotation;)[Landroid/text/Annotation;

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    # setter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTextBeforeLength:I
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$402(Lcom/sonyericsson/conversations/ui/RecipientsEditor;I)I

    .line 259
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v7, 0x1

    .line 262
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v6, 0x0

    # setter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsInputLastSeparator:Z
    invoke-static {v5, v6}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$502(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z

    .line 265
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 266
    move-object v4, p1

    .line 267
    .local v4, "seq":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 268
    .local v2, "len":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v3

    .line 270
    .local v3, "selection":I
    if-lez v2, :cond_1

    if-ne p4, v7, :cond_1

    if-ne v2, v3, :cond_1

    .line 271
    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 272
    .local v0, "c":C
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_0

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_1

    .line 276
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # setter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C
    invoke-static {v5, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$602(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)C

    .line 277
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # setter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsInputLastSeparator:Z
    invoke-static {v5, v7}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$502(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z

    .line 283
    .end local v0    # "c":C
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$700(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    .line 284
    .local v1, "isFullScreenMode":Z
    if-nez v1, :cond_2

    .line 286
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 287
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTextBeforeLength:I
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 288
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->deleteCommaAndImageSpan(Ljava/lang/CharSequence;)V
    invoke-static {v5, v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$800(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)V

    .line 292
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$900(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 293
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mTextBeforeLength:I
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 294
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$900(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;->onEditorDeleteText()V

    .line 299
    :cond_3
    :goto_0
    return-void

    .line 296
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$1;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$900(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;->onEditorAddText()V

    goto :goto_0
.end method
