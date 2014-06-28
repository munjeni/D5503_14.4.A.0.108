.class Lcom/android/mms/ui/SlideEditorActivity$11;
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
    .line 407
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$400(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # operator++ for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$308(Lcom/android/mms/ui/SlideEditorActivity;)I

    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$1700(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 413
    :cond_0
    return-void
.end method
