.class Lcom/sonyericsson/conversations/ui/EditorFragment$12;
.super Lcom/sonyericsson/conversations/ui/util/ClickFilter$FilteredOnClickListener;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initTakePhotoButton()V
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
    .line 1890
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/ClickFilter$FilteredOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 2

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->launchPickerByType(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1500(Lcom/sonyericsson/conversations/ui/EditorFragment;I)V

    .line 1894
    return-void
.end method
