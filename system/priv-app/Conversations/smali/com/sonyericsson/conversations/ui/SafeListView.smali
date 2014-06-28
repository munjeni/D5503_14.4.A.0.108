.class public Lcom/sonyericsson/conversations/ui/SafeListView;
.super Landroid/widget/ListView;
.source "SafeListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 25
    :try_start_0
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method
