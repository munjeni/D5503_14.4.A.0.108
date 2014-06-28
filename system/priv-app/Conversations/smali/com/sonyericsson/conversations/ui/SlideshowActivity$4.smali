.class Lcom/sonyericsson/conversations/ui/SlideshowActivity$4;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/SlideshowActivity;->handleEvent(Lorg/w3c/dom/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

.field final synthetic val$event:Lorg/w3c/dom/events/Event;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$4;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$4;->val$event:Lorg/w3c/dom/events/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$4;->val$event:Lorg/w3c/dom/events/Event;

    invoke-interface {v1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "type":Ljava/lang/String;
    const-string v1, "SimlDocumentEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$4;->this$0:Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 372
    :cond_0
    return-void
.end method
