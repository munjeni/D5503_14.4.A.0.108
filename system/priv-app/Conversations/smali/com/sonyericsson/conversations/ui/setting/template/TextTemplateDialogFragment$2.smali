.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;
.super Ljava/lang/Object;
.source "TextTemplateDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 138
    return-void
.end method
