.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;
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
    .line 423
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$700(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$3;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 427
    return-void
.end method
