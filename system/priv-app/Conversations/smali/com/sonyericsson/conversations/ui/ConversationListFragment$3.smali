.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 268
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v2, p3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getThreadIdAtPosition(I)J

    move-result-wide v0

    .line 271
    .local v0, "threadId":J
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v3, p3}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getMessageUriAtPosition(I)Landroid/net/Uri;

    move-result-object v3

    # setter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mFocusedMessageUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$002(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 272
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v2, v0, v1, p3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onListItemClick(JI)V

    .line 273
    return-void
.end method
