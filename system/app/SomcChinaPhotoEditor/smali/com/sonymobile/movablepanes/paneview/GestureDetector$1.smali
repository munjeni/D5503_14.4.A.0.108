.class Lcom/sonymobile/movablepanes/paneview/GestureDetector$1;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/movablepanes/paneview/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/movablepanes/paneview/GestureDetector;


# direct methods
.method constructor <init>(Lcom/sonymobile/movablepanes/paneview/GestureDetector;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    # getter for: Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->access$000(Lcom/sonymobile/movablepanes/paneview/GestureDetector;)Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    # getter for: Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mGestureListener:Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->access$300(Lcom/sonymobile/movablepanes/paneview/GestureDetector;)Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    # getter for: Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mStartX:I
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->access$100(Lcom/sonymobile/movablepanes/paneview/GestureDetector;)I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    # getter for: Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mStartY:I
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->access$200(Lcom/sonymobile/movablepanes/paneview/GestureDetector;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;->onLongPress(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    sget-object v1, Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;->LONGPRESSED:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    # setter for: Lcom/sonymobile/movablepanes/paneview/GestureDetector;->mState:Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;
    invoke-static {v0, v1}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->access$002(Lcom/sonymobile/movablepanes/paneview/GestureDetector;Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;)Lcom/sonymobile/movablepanes/paneview/GestureDetector$TouchState;

    .line 167
    :cond_0
    return-void
.end method
