.class Lcom/sonyericsson/conversations/ui/ConversationContactBadge$3;
.super Ljava/lang/Object;
.source "ConversationContactBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->sendAddressToContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    return-void
.end method
