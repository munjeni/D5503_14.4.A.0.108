.class public Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;
.super Landroid/widget/TextView;
.source "SearchCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewSnippet"
.end annotation


# static fields
.field private static final WAIT_FOR_RUNNABLE:J = 0x2710L

.field private static final WAIT_FOR_TASK:J = 0xaL


# instance fields
.field private mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFullText:Ljava/lang/String;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTargetString:Ljava/lang/String;

.field private mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->initForegroundColorSpan()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->initForegroundColorSpan()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->initForegroundColorSpan()V

    .line 75
    return-void
.end method

.method private initForegroundColorSpan()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I

    move-result v0

    .line 79
    .local v0, "accentColor":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 80
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "fullText"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 93
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;-><init>(Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Landroid/text/style/ForegroundColorSpan;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    .line 98
    .local v6, "task":Landroid/os/AsyncTask;
    new-instance v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet$1;

    invoke-direct {v0, p0, v6}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet$1;-><init>(Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;Landroid/os/AsyncTask;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    return-void
.end method
