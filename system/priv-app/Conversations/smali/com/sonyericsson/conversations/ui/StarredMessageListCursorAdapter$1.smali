.class Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;
.super Ljava/lang/Object;
.source "StarredMessageListCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

.field final synthetic val$msgType:Ljava/lang/String;

.field final synthetic val$rowid:J

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;JLjava/lang/String;J)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    iput-wide p2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$threadId:J

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$msgType:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$rowid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->access$000(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v1, "onClickIntent":Landroid/content/Intent;
    const-string v2, "thread_id"

    iget-wide v3, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$threadId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "messageUri":Landroid/net/Uri;
    const-string v2, "sms"

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$msgType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$rowid:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 119
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 120
    const-string v2, "view_msg_uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->access$000(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 124
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->access$000(Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void

    .line 115
    :cond_2
    const-string v2, "mms"

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$msgType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter$1;->val$rowid:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
