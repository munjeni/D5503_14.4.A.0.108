.class Lcom/android/phone/SomcCallRecorder$RecorderTask$1;
.super Ljava/lang/Object;
.source "SomcCallRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcCallRecorder$RecorderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SomcCallRecorder$RecorderTask;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcCallRecorder$RecorderTask;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask$1;->this$1:Lcom/android/phone/SomcCallRecorder$RecorderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 170
    const-string v0, "SomcCallRecorder"

    const-string v1, "onError() : Error happens while recording..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask$1;->this$1:Lcom/android/phone/SomcCallRecorder$RecorderTask;

    iget-object v0, v0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    # getter for: Lcom/android/phone/SomcCallRecorder;->mEventListener:Lcom/android/phone/SomcCallRecorder$EventListener;
    invoke-static {v0}, Lcom/android/phone/SomcCallRecorder;->access$200(Lcom/android/phone/SomcCallRecorder;)Lcom/android/phone/SomcCallRecorder$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/phone/SomcCallRecorder$EventListener;->onRecorderStop()V

    .line 172
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask$1;->this$1:Lcom/android/phone/SomcCallRecorder$RecorderTask;

    iget-object v0, v0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->stop()V

    .line 173
    return-void
.end method
