.class Lcom/android/mms/ui/MessageUtils$3$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$3;

.field final synthetic val$part:Lcom/google/android/mms/pdu/PduPart;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$3;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$3$1;->this$0:Lcom/android/mms/ui/MessageUtils$3;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$3$1;->val$part:Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$3$1;->this$0:Lcom/android/mms/ui/MessageUtils$3;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$3;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$3$1;->val$part:Lcom/google/android/mms/pdu/PduPart;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$3$1;->this$0:Lcom/android/mms/ui/MessageUtils$3;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageUtils$3;->val$append:Z

    invoke-interface {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;->onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V

    .line 296
    return-void
.end method
