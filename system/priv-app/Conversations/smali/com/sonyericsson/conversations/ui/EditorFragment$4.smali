.class Lcom/sonyericsson/conversations/ui/EditorFragment$4;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->onConvertToSms()V
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
    .line 1452
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onConvertToMessageType(I)V

    .line 1456
    return-void
.end method
