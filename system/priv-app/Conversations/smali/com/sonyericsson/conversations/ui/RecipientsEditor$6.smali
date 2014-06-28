.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addParticipiantToEditorAsync(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

.field final synthetic val$sbfinal:Landroid/text/SpannableStringBuilder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;->val$sbfinal:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;->val$sbfinal:Landroid/text/SpannableStringBuilder;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->participiantToEditorUI(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2300(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)V

    .line 918
    return-void
.end method
