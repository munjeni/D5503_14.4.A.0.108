.class Lcom/android/phone/am/SomcAmManager$2;
.super Ljava/lang/Object;
.source "SomcAmManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 197
    iput-object p1, p0, Lcom/android/phone/am/SomcAmManager$2;->this$0:Lcom/android/phone/am/SomcAmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/am/SomcAmManager$2;->this$0:Lcom/android/phone/am/SomcAmManager;

    # getter for: Lcom/android/phone/am/SomcAmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->access$000(Lcom/android/phone/am/SomcAmManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1099

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    const/4 v0, 0x1

    return v0
.end method
