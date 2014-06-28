.class Lcom/sonyericsson/conversations/ui/ConversationContactBadge$2;
.super Ljava/lang/Object;
.source "ConversationContactBadge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showSaveToContactDialog()V
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
    .line 131
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$2;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$2;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    # invokes: Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->sendAddressToContact()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->access$400(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 134
    return-void
.end method
