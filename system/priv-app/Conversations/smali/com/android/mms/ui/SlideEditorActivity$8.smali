.class Lcom/android/mms/ui/SlideEditorActivity$8;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;


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
    .line 362
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$8;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$8;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$8;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$8;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    .line 367
    :cond_0
    return-void
.end method
