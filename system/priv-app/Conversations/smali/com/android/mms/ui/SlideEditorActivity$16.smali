.class Lcom/android/mms/ui/SlideEditorActivity$16;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideEditorActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;

.field final synthetic val$adapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$16;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideEditorActivity$16;->val$adapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$16;->val$adapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getItemId(I)J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 869
    :goto_0
    return-void

    .line 854
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$16;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->addImage()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$2100(Lcom/android/mms/ui/SlideEditorActivity;)V

    goto :goto_0

    .line 857
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$16;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->takePicture()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$2200(Lcom/android/mms/ui/SlideEditorActivity;)V

    goto :goto_0

    .line 861
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$16;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->addVideo()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$2300(Lcom/android/mms/ui/SlideEditorActivity;)V

    goto :goto_0

    .line 864
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$16;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->recordVideo()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$2400(Lcom/android/mms/ui/SlideEditorActivity;)V

    goto :goto_0

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
