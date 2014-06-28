.class abstract Lcom/android/phone/SomcCallRecorder$EventHandler;
.super Ljava/lang/Object;
.source "SomcCallRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EventHandler"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder$EventHandler;->mActivity:Landroid/app/Activity;

    .line 97
    return-void
.end method


# virtual methods
.method final handleEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$EventHandler;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/phone/SomcCallRecorder$EventHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/SomcCallRecorder$EventHandler$1;-><init>(Lcom/android/phone/SomcCallRecorder$EventHandler;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method abstract onAudioResourceOccupied()V
.end method

.method abstract onNotEnoughStorage(Z)V
.end method

.method abstract onStartRecording()V
.end method

.method abstract onStopRecording()V
.end method
