.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$5;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->updateText(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2000(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)V

    .line 559
    return-void
.end method
