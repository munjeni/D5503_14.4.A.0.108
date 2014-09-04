.class public Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;
.super Ljava/lang/Object;
.source "TextEditViewContainer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 576
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsEmpty:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$1000(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsEmpty:Z
    invoke-static {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$1002(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;Z)Z

    .line 578
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$1100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$1100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;->onTextInPhotoBounds(Z)V

    .line 588
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setFilterData()V
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$1200(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)V

    .line 589
    return-void

    .line 581
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsEmpty:Z
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$1002(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;Z)Z

    .line 584
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$1100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->access$1100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;->onTextInPhotoBounds(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 566
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 572
    return-void
.end method
