.class Lcom/android/phone/ADNList$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    .line 202
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 203
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 230
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onDeleteComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    # invokes: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 232
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 218
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onInsertComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    # invokes: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 220
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: cursor.count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    iput-object p3, v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 209
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    # invokes: Lcom/android/phone/ADNList;->setAdapter()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$000(Lcom/android/phone/ADNList;)V

    .line 210
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const/4 v1, 0x0

    # invokes: Lcom/android/phone/ADNList;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/ADNList;->access$100(Lcom/android/phone/ADNList;Z)V

    .line 213
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 214
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 224
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onUpdateComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    # invokes: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 226
    return-void
.end method
