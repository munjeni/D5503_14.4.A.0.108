.class public abstract Lcom/sonyericsson/conversations/ui/util/ClickFilter$FilteredOnClickListener;
.super Lcom/sonyericsson/conversations/ui/util/ClickFilter;
.source "ClickFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/ClickFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FilteredOnClickListener"
.end annotation


# static fields
.field private static final DEFAULT_FILTER_TIME:I = 0xc8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/ClickFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->executeAndFilter(I)V

    .line 56
    return-void
.end method
