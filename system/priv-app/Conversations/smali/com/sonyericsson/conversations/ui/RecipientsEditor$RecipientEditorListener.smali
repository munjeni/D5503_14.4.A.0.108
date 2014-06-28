.class public interface abstract Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecipientEditorListener"
.end annotation


# virtual methods
.method public abstract onEditorAddText()V
.end method

.method public abstract onEditorContentChanged(Ljava/lang/String;)V
.end method

.method public abstract onEditorDeleteText()V
.end method

.method public abstract onEditorFocusChanged(Z)V
.end method

.method public abstract onRecipientsChanged(Z)V
.end method
