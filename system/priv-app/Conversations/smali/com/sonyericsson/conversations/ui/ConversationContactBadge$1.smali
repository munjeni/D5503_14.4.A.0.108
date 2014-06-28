.class Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;
.super Ljava/lang/Object;
.source "ConversationContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
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
    .line 47
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 49
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->access$000(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 50
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->access$000(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->isMe()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    # invokes: Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->launchProfileViewer()V
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->access$100(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->access$000(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 55
    .local v0, "dataUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 57
    .local v1, "lookupUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Landroid/widget/QuickContactBadge;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->access$200(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Landroid/widget/QuickContactBadge;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v6, v4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0    # "dataUri":Landroid/net/Uri;
    .end local v1    # "lookupUri":Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->access$000(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 63
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    # invokes: Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showSaveToContactDialog()V
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->access$300(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    goto :goto_0
.end method
