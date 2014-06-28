.class Lcom/android/mms/ui/SlideEditorActivity$12;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
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
    .line 416
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v2, 0x0

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->hideInputMethod(Z)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$200(Lcom/android/mms/ui/SlideEditorActivity;Z)V

    .line 421
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mResultIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 422
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 423
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 424
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 425
    return-void
.end method
