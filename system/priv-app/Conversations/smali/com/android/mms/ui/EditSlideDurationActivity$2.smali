.class Lcom/android/mms/ui/EditSlideDurationActivity$2;
.super Ljava/lang/Object;
.source "EditSlideDurationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditSlideDurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditSlideDurationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/mms/ui/EditSlideDurationActivity$2;->this$0:Lcom/android/mms/ui/EditSlideDurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity$2;->this$0:Lcom/android/mms/ui/EditSlideDurationActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditSlideDurationActivity;->editDone()V

    .line 142
    return-void
.end method
