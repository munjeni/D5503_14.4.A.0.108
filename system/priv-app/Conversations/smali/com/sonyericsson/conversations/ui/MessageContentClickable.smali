.class public interface abstract Lcom/sonyericsson/conversations/ui/MessageContentClickable;
.super Ljava/lang/Object;
.source "MessageContentClickable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;
    }
.end annotation


# virtual methods
.method public abstract setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
.end method

.method public abstract setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V
.end method

.method public abstract setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
.end method
