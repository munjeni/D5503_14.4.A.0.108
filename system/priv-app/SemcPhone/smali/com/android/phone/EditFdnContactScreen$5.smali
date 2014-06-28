.class Lcom/android/phone/EditFdnContactScreen$5;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 531
    return-void
.end method
