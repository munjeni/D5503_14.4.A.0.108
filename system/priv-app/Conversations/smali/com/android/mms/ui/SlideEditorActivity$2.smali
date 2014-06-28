.class Lcom/android/mms/ui/SlideEditorActivity$2;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    new-instance v2, Lcom/android/mms/ui/SlideEditorActivity$2$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideEditorActivity$2$1;-><init>(Lcom/android/mms/ui/SlideEditorActivity$2;)V

    .line 181
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700dd

    const v3, 0x7f0700db

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/app/FragmentManager;)V

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->hideInputMethod(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$200(Lcom/android/mms/ui/SlideEditorActivity;Z)V

    .line 189
    return-void
.end method
