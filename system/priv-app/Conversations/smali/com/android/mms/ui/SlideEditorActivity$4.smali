.class Lcom/android/mms/ui/SlideEditorActivity$4;
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
    .line 211
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$400(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 215
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->removeImage()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$500(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->removeVideo()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;)V

    goto :goto_0
.end method
