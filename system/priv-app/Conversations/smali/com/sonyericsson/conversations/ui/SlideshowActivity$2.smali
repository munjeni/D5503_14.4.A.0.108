.class Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$000(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$000(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->forwardSlide()V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$400(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 207
    :cond_0
    return-void
.end method
