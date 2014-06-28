.class Lcom/android/mms/ui/BasicSlideEditorView$1;
.super Ljava/lang/Object;
.source "BasicSlideEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BasicSlideEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BasicSlideEditorView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BasicSlideEditorView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 95
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    # getter for: Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z
    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->access$000(Lcom/android/mms/ui/BasicSlideEditorView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    # getter for: Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;
    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->access$100(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    # getter for: Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;
    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->access$100(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;->onTextChanged(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method
