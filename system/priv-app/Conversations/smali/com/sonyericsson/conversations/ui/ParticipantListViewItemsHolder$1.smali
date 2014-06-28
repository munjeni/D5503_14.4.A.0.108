.class Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;
.super Ljava/lang/Object;
.source "ParticipantListViewItemsHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 95
    .local v1, "contactId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 98
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    :cond_0
    return-void

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v0

    .line 103
    .local v0, "addressType":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    # getter for: Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddToConatctMode:Z
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->access$000(Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "phone"

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 111
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    iget-object v5, v5, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 114
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 116
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "mailto"

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;

    iget-object v5, v5, Lcom/sonyericsson/conversations/ui/ParticipantListViewItemsHolder;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method
