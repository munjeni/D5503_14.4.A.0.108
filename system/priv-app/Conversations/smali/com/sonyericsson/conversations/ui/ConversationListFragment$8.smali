.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const-string v1, ""

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const v3, 0x7f070081

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 804
    return-void
.end method
