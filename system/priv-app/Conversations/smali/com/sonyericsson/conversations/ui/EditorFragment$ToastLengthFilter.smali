.class Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToastLengthFilter"
.end annotation


# instance fields
.field private mMax:I

.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;I)V
    .locals 2
    .param p2, "max"    # I

    .prologue
    .line 1736
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 1737
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 1734
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;->mToast:Landroid/widget/Toast;

    .line 1738
    iput p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;->mMax:I

    .line 1739
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 1745
    iget v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 1746
    .local v1, "spaceLeft":I
    sub-int v0, p3, p2

    .line 1747
    .local v0, "inputLength":I
    if-ge v1, v0, :cond_0

    .line 1748
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1749
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const v3, 0x7f0700c3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;->mToast:Landroid/widget/Toast;

    .line 1753
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method
