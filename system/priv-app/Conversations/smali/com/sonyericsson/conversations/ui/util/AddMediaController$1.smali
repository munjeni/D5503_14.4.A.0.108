.class Lcom/sonyericsson/conversations/ui/util/AddMediaController$1;
.super Ljava/lang/Object;
.source "AddMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/AddMediaController;->popUpToastInUiThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/AddMediaController;

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/AddMediaController;I)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController$1;->val$resourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController$1;->val$resourceId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    :cond_0
    return-void
.end method
