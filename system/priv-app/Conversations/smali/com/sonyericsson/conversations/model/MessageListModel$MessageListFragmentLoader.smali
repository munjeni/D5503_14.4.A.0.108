.class Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;
.super Landroid/content/CursorLoader;
.source "MessageListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/MessageListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageListFragmentLoader"
.end annotation


# instance fields
.field private mIsThrottleSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mIsThrottleSet:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct/range {p0 .. p6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mIsThrottleSet:Z

    .line 84
    return-void
.end method


# virtual methods
.method public setUpdateThrottle(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 88
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mIsThrottleSet:Z

    if-eqz v0, :cond_0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 90
    cmp-long v0, p1, v1

    if-nez v0, :cond_2

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mIsThrottleSet:Z

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mIsThrottleSet:Z

    goto :goto_0
.end method
