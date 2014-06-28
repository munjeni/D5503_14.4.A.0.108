.class Lcom/sonyericsson/conversations/ui/EditorFragment$22;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->addMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    .prologue
    .line 2367
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2369
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2371
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2700(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->getItemId(I)J

    move-result-wide v1

    long-to-int v1, v1

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->launchPickerByType(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1500(Lcom/sonyericsson/conversations/ui/EditorFragment;I)V

    .line 2372
    return-void
.end method
