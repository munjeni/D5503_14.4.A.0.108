.class Lcom/android/mms/ui/SlideEditorActivity$13;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideEditorActivity;->showDurationDialog()V
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
    .line 632
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 634
    if-ltz p2, :cond_0

    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeDuration(II)V

    .line 647
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 648
    return-void

    .line 638
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-class v2, Lcom/android/mms/ui/EditSlideDurationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 640
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "slide_index"

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    const-string v1, "slide_total"

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$400(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    const-string v1, "dur"

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$400(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$13;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
