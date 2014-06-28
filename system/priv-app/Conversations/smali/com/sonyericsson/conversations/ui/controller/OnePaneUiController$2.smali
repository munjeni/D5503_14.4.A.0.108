.class Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$2;
.super Ljava/lang/Object;
.source "OnePaneUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->onEndSearchMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->updateOptionMenu()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->access$100(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)V

    .line 280
    return-void
.end method
