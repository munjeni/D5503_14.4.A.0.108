.class public abstract Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "ExtendedCursorAdapter.java"


# static fields
.field public static final NO_CURSOR_ADAPTER_FLAGS:I


# instance fields
.field protected mAutoRequery:Z

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 21
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mAutoRequery:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mAutoRequery:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-boolean p3, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mAutoRequery:Z

    .line 29
    return-void
.end method


# virtual methods
.method public isAutoRequery()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mAutoRequery:Z

    return v0
.end method

.method public setAutoRequery(Z)V
    .locals 2
    .param p1, "autoRequery"    # Z

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 39
    .local v0, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mAutoRequery:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 43
    :cond_0
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mAutoRequery:Z

    .line 44
    return-void
.end method
