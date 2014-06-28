.class Lcom/android/phone/am/SomcAmRecordGreetingActivity$10;
.super Ljava/lang/Object;
.source "SomcAmRecordGreetingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmRecordGreetingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$10;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$10;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 714
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 715
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$10;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 716
    return-void
.end method
