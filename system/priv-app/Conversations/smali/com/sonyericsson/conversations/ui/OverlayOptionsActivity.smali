.class public abstract Lcom/sonyericsson/conversations/ui/OverlayOptionsActivity;
.super Landroid/app/Activity;
.source "OverlayOptionsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    const/4 v0, 0x1

    return v0
.end method
