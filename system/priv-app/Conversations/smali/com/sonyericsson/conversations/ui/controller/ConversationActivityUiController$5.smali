.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->convertMessageTypeInUiThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$messageType:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;->val$messageType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;->val$messageType:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->convertToMessageType(I)V

    .line 1127
    return-void
.end method
