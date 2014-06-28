.class Lcom/android/phone/SomcCallRecorder$EventHandler$1;
.super Ljava/lang/Object;
.source "SomcCallRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcCallRecorder$EventHandler;->handleEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcCallRecorder$EventHandler;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/android/phone/SomcCallRecorder$EventHandler;I)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder$EventHandler$1;->this$0:Lcom/android/phone/SomcCallRecorder$EventHandler;

    iput p2, p0, Lcom/android/phone/SomcCallRecorder$EventHandler$1;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/android/phone/SomcCallRecorder$EventHandler$1;->val$event:I

    sparse-switch v0, :sswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 109
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$EventHandler$1;->this$0:Lcom/android/phone/SomcCallRecorder$EventHandler;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder$EventHandler;->onStartRecording()V

    goto :goto_0

    .line 112
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$EventHandler$1;->this$0:Lcom/android/phone/SomcCallRecorder$EventHandler;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder$EventHandler;->onStopRecording()V

    goto :goto_0

    .line 115
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$EventHandler$1;->this$0:Lcom/android/phone/SomcCallRecorder$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcCallRecorder$EventHandler;->onNotEnoughStorage(Z)V

    goto :goto_0

    .line 118
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$EventHandler$1;->this$0:Lcom/android/phone/SomcCallRecorder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcCallRecorder$EventHandler;->onNotEnoughStorage(Z)V

    goto :goto_0

    .line 121
    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$EventHandler$1;->this$0:Lcom/android/phone/SomcCallRecorder$EventHandler;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder$EventHandler;->onAudioResourceOccupied()V

    goto :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
    .end sparse-switch
.end method
