.class Lcom/android/phone/EditFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    .line 477
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 478
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 500
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 486
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string v2, "onInsertComplete"

    # invokes: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # invokes: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->access$600(Lcom/android/phone/EditFdnContactScreen;Z)V

    .line 488
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V
    invoke-static {v2, v0, v1}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;ZZ)V

    .line 489
    return-void

    :cond_1
    move v0, v1

    .line 488
    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 482
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/4 v1, 0x0

    .line 493
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string v2, "onUpdateComplete"

    # invokes: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # invokes: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->access$600(Lcom/android/phone/EditFdnContactScreen;Z)V

    .line 495
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    if-lez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V
    invoke-static {v2, v0, v1}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;ZZ)V

    .line 496
    return-void

    :cond_1
    move v0, v1

    .line 495
    goto :goto_0
.end method
