.class Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;
.super Ljava/lang/Object;
.source "ConversationRecipientActionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 228
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$600(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_1

    .line 229
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # setter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddToContactMode:Z
    invoke-static {v5, v6}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$502(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Z)Z

    .line 230
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$700(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->show()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v3, 0x0

    .line 235
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$600(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    .line 236
    .local v4, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 237
    .local v1, "contactId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 240
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 259
    .restart local v3    # "intent":Landroid/content/Intent;
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->access$100(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "ConversationActionView"

    const-string v6, "Activity not found."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v0

    .line 245
    .local v0, "addressType":I
    if-ne v0, v9, :cond_3

    .line 247
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 249
    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 251
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "mailto"

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method
