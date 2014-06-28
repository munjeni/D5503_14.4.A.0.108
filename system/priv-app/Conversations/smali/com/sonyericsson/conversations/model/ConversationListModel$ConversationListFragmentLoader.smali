.class Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;
.super Landroid/content/CursorLoader;
.source "ConversationListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationListFragmentLoader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationListFragmentLoader"


# instance fields
.field private mIsThrottleSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mIsThrottleSet:Z

    .line 117
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
    .line 121
    invoke-direct/range {p0 .. p6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mIsThrottleSet:Z

    .line 122
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    const-string v2, "ConversationListFragmentLoader"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 138
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mIsThrottleSet:Z

    if-eqz v0, :cond_0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 139
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 140
    cmp-long v0, p1, v1

    if-nez v0, :cond_2

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mIsThrottleSet:Z

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mIsThrottleSet:Z

    goto :goto_0
.end method
