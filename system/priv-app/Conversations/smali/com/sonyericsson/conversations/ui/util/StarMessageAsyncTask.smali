.class public Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;
.super Landroid/os/AsyncTask;
.source "StarMessageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonyericsson/conversations/model/Message;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "message"    # [Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 43
    if-eqz p1, :cond_1

    aget-object v0, p1, v2

    if-eqz v0, :cond_1

    .line 44
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v6, 0x1

    .line 46
    .local v6, "newStatus":I
    aget-object v0, p1, v2

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-ne v0, v7, :cond_0

    .line 47
    const/4 v6, 0x0

    .line 49
    :cond_0
    const-string v0, "star_status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v6    # "newStatus":I
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, [Lcom/sonyericsson/conversations/model/Message;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->doInBackground([Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
