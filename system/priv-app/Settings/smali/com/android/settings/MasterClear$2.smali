.class Lcom/android/settings/MasterClear$2;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    # getter for: Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$400(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 189
    return-void
.end method
