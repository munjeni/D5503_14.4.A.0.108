.class Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$5;
.super Ljava/lang/Object;
.source "TwoPaneUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->onCloseSearchModeInConversationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$5;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$5;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->invalidateOptionsMenu()V

    .line 355
    return-void
.end method
