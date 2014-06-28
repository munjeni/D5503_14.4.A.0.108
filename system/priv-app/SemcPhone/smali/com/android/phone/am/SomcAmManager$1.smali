.class Lcom/android/phone/am/SomcAmManager$1;
.super Ljava/lang/Object;
.source "SomcAmManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmManager;->playMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmManager;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmManager;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/phone/am/SomcAmManager$1;->this$0:Lcom/android/phone/am/SomcAmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager$1;->this$0:Lcom/android/phone/am/SomcAmManager;

    # getter for: Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->access$000(Lcom/android/phone/am/SomcAmManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1014

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    return-void
.end method
