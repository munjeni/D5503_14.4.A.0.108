.class Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet$1;
.super Ljava/lang/Object;
.source "SearchCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

.field final synthetic val$task:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;Landroid/os/AsyncTask;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet$1;->this$0:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet$1;->val$task:Landroid/os/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 101
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet$1;->val$task:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet$1;->val$task:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet$1;->val$task:Landroid/os/AsyncTask;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet$1;->val$task:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0
.end method
