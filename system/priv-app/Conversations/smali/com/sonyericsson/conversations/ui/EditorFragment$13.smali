.class Lcom/sonyericsson/conversations/ui/EditorFragment$13;
.super Lcom/sonyericsson/conversations/ui/util/ClickFilter$FilteredOnClickListener;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initSketchButton()V
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
    .line 1901
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/ClickFilter$FilteredOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 2

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/16 v1, 0x8

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->launchPickerByType(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1500(Lcom/sonyericsson/conversations/ui/EditorFragment;I)V

    .line 1905
    return-void
.end method
