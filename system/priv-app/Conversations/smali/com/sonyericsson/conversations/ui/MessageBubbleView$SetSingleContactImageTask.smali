.class Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;
.super Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;
.source "MessageBubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageBubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSingleContactImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParticipant:Lcom/sonyericsson/conversations/model/Participant;

.field private mPersonPhoto:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;-><init>()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->mPersonPhoto:Landroid/graphics/Bitmap;

    .line 274
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 275
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->mContext:Landroid/content/Context;

    .line 276
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundHighPriority([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 266
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->doInBackgroundHighPriority([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackgroundHighPriority([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackgroundLowPriority([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 266
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->doInBackgroundLowPriority([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackgroundLowPriority([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/Participant;->getPersonPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->mPersonPhoto:Landroid/graphics/Bitmap;

    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecuteLowPriority(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 266
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->onPostExecuteLowPriority(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecuteLowPriority(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->access$300(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->access$300(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->mPersonPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;Landroid/graphics/Bitmap;)V

    .line 294
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v1, v2

    invoke-super {p0, v1}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->execute([Ljava/lang/Object;)Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;

    .line 299
    return-void
.end method
