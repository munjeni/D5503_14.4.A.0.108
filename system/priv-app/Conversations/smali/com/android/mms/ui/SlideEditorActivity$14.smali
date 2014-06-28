.class Lcom/android/mms/ui/SlideEditorActivity$14;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideEditorActivity;->showLayoutSelectorDialog()V
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
    .line 664
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$14;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 666
    packed-switch p2, :pswitch_data_0

    .line 674
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 675
    return-void

    .line 668
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$14;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->changeLayout(I)V

    goto :goto_0

    .line 671
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$14;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->changeLayout(I)V

    goto :goto_0

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
