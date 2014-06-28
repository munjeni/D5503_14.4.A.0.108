.class Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;
.super Ljava/lang/Object;
.source "MessageContentSlideshowBrief.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->initReadMoreButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 96
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "thread_id"

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mThreadId:J
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->access$000(Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 99
    const-string v2, "caller"

    const-string v3, "ReadMore"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method
