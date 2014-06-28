.class Lcom/sonyericsson/conversations/ui/EditorFragment$17;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->startLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$locationController:Lcom/sonyericsson/conversations/ui/util/AddMediaController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/util/AddMediaController;)V
    .locals 0

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$17;->val$locationController:Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1972
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1975
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1600(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    .line 1976
    .local v1, "itemId":I
    packed-switch v1, :pswitch_data_0

    .line 1993
    .end local v1    # "itemId":I
    :goto_0
    :pswitch_0
    return-void

    .line 1978
    .restart local v1    # "itemId":I
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hideInputMethod(Z)V

    .line 1979
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$17;->val$locationController:Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchLocationEdior(Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1989
    .end local v1    # "itemId":I
    :catch_0
    move-exception v0

    .line 1991
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1983
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "itemId":I
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$17;->val$locationController:Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchLocationEdior(Landroid/net/Uri;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1976
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
