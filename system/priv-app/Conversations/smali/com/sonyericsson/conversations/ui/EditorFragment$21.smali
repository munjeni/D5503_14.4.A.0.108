.class Lcom/sonyericsson/conversations/ui/EditorFragment$21;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initMasterPile()V
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
    .line 2114
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBlockMasterPileTap:Z
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1900(Lcom/sonyericsson/conversations/ui/EditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2211
    :cond_0
    :goto_0
    return-void

    .line 2120
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2200(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/PileView;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2200(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/PileView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/sonyericsson/conversations/ui/PileViewItem;

    .line 2129
    .local v16, "item":Lcom/sonyericsson/conversations/ui/PileViewItem;
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/conversations/ui/PileViewItem;->removeButtonIsBeingPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v2, 0x1

    # setter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBlockMasterPileTap:Z
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1902(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)Z

    .line 2132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2133
    new-instance v6, Lcom/sonyericsson/conversations/ui/EditorFragment$21$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$21$1;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment$21;)V

    .line 2141
    .local v6, "delPositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v8, Lcom/sonyericsson/conversations/ui/EditorFragment$21$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$21$2;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment$21;)V

    .line 2151
    .local v8, "delNegativeClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v11, Lcom/sonyericsson/conversations/ui/EditorFragment$21$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$21$3;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment$21;)V

    .line 2161
    .local v11, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v2, 0x0

    const v3, 0x1080027

    const v4, 0x7f070039

    const v5, 0x7f0700dd

    const v7, 0x7f0700db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->showDialog(Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static/range {v1 .. v13}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2300(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 2169
    .end local v6    # "delPositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v8    # "delNegativeClickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v11    # "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->deleteItem(I)V

    goto/16 :goto_0

    .line 2175
    .end local v16    # "item":Lcom/sonyericsson/conversations/ui/PileViewItem;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v2, 0x1

    # setter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileIsExpanded:Z
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2002(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)Z

    .line 2181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v2, 0x1

    # setter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBlockMasterPileTap:Z
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1902(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)Z

    .line 2185
    const/4 v14, 0x0

    .line 2186
    .local v14, "delay":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodManager;

    .line 2187
    .local v15, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hideInputMethod(Z)V

    .line 2189
    const/16 v14, 0xc8

    .line 2195
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2600(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$21$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$21$4;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment$21;)V

    int-to-long v3, v14

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
