.class Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/SlideshowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

.field final synthetic val$model:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRotating()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$000(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$000(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$000(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 122
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v2

    # setter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$002(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # invokes: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->initMediaController()V
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$100(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)V

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    # setter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$202(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$200(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/events/EventTarget;

    const-string v2, "SimlDocumentEnd"

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$000(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$200(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->init(Lorg/w3c/dom/smil/ElementTime;)V

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$000(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 153
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    new-instance v2, Lcom/sonyericsson/conversations/ui/SlideshowActivity$ScreenReceiver;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$000(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$ScreenReceiver;-><init>(Lcom/android/mms/dom/smil/SmilPlayer;)V

    # setter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$302(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$300(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void

    .line 150
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->access$000(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    goto :goto_0
.end method
