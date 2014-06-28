.class public Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;
.super Landroid/content/CursorLoader;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
    .line 215
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;->mIsThrottleSet:Z

    .line 216
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
    .line 220
    invoke-direct/range {p0 .. p6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;->mIsThrottleSet:Z

    .line 221
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 228
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 238
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;->mIsThrottleSet:Z

    if-eqz v0, :cond_0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 239
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 240
    cmp-long v0, p1, v1

    if-nez v0, :cond_2

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;->mIsThrottleSet:Z

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;->mIsThrottleSet:Z

    goto :goto_0
.end method
