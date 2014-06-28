.class Lcom/sonyericsson/conversations/ui/EditorFragment$24;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->showSendContactDialog([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$contactIds:[J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;[J)V
    .locals 0

    .prologue
    .line 3017
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$24;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$24;->val$contactIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3019
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3021
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$24;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2800(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    .line 3022
    .local v1, "itemId":I
    packed-switch v1, :pswitch_data_0

    .line 3036
    .end local v1    # "itemId":I
    :goto_0
    return-void

    .line 3024
    .restart local v1    # "itemId":I
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$24;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$24;->val$contactIds:[J

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->sendContactByVcard([J)V
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2900(Lcom/sonyericsson/conversations/ui/EditorFragment;[J)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3031
    .end local v1    # "itemId":I
    :catch_0
    move-exception v0

    .line 3034
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3028
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "itemId":I
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$24;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$24;->val$contactIds:[J

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->sendContactByText([J)V
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$3000(Lcom/sonyericsson/conversations/ui/EditorFragment;[J)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3022
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
