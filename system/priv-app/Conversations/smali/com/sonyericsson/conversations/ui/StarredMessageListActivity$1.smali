.class Lcom/sonyericsson/conversations/ui/StarredMessageListActivity$1;
.super Ljava/lang/Object;
.source "StarredMessageListActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactLookupChanged()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->access$000(Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;)Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->access$000(Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;)Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 41
    :cond_0
    return-void
.end method
