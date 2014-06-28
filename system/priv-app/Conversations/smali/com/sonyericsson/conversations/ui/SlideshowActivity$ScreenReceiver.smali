.class Lcom/sonyericsson/conversations/ui/SlideshowActivity$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlideshowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenReceiver"
.end annotation


# instance fields
.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 0
    .param p1, "smilPlayer"    # Lcom/android/mms/dom/smil/SmilPlayer;

    .prologue
    .line 390
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$ScreenReceiver;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 392
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$ScreenReceiver;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$ScreenReceiver;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$ScreenReceiver;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 400
    :cond_0
    return-void
.end method
