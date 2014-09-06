.class Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask$1;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;)V
    .locals 0

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask$1;->this$1:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1806
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask$1;->this$1:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->calculateRemainStorage(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$2100(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;ZZ)V

    .line 1807
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask$1;->this$1:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1808
    return-void
.end method
