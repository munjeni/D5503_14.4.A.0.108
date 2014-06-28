.class public Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;
.super Ljava/lang/Thread;
.source "RecipientsEditorModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/RecipientsEditorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetContactInfoThread"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/RecipientsEditorModel;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->this$0:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->mStop:Z

    .line 272
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->mList:Ljava/util/List;

    .line 273
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 280
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    :cond_0
    return-void

    .line 284
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    .local v0, "address":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->mStop:Z

    if-nez v5, :cond_0

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 290
    new-instance v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v1, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, "contact":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->this$0:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    # getter for: Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mRecentContactName:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->access$000(Lcom/sonyericsson/conversations/model/RecipientsEditorModel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    if-eqz v4, :cond_3

    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local v4    # "name":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_1

    .line 296
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "contact":Lcom/sonyericsson/conversations/model/Participant;
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    .restart local v0    # "address":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->mStop:Z

    if-nez v5, :cond_0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 302
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->this$0:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getContactLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 303
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->this$0:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    # getter for: Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mRecentContactLabel:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->access$100(Lcom/sonyericsson/conversations/model/RecipientsEditorModel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    if-eqz v3, :cond_6

    .end local v3    # "label":Ljava/lang/CharSequence;
    :goto_3
    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .restart local v3    # "label":Ljava/lang/CharSequence;
    :cond_6
    const-string v3, ""

    goto :goto_3
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->mStop:Z

    .line 277
    return-void
.end method
