.class Lcom/android/phone/DeleteFdnContactScreen$3;
.super Ljava/lang/Object;
.source "DeleteFdnContactScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DeleteFdnContactScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$3;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$3;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 233
    return-void
.end method
