.class Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/ConversationListModel;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 155
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 156
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 161
    if-lez p3, :cond_0

    .line 162
    invoke-static {}, Lcom/sonyericsson/conversations/model/ConversationCache;->clear()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_DELETE_OBSOLETE_THREADS_COMPLETE:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    return-void
.end method
