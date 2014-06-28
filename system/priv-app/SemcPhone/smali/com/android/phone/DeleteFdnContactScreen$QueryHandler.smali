.class Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DeleteFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    .line 179
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 180
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/4 v0, 0x0

    .line 200
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    const-string v2, "onDeleteComplete"

    # invokes: Lcom/android/phone/DeleteFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/DeleteFdnContactScreen;->access$000(Lcom/android/phone/DeleteFdnContactScreen;Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    # invokes: Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/DeleteFdnContactScreen;->access$100(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    .line 202
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    if-lez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    # invokes: Lcom/android/phone/DeleteFdnContactScreen;->handleResult(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/DeleteFdnContactScreen;->access$200(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    .line 203
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 192
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 184
    if-eqz p3, :cond_0

    .line 185
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_0
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 196
    return-void
.end method
