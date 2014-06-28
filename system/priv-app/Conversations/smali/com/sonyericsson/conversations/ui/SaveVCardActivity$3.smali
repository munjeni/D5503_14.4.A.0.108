.class Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;
.super Ljava/lang/Object;
.source "SaveVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SaveVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->access$000(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    # setter for: Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->access$002(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Lcom/android/vcard/VCardEntry;)Lcom/android/vcard/VCardEntry;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    # setter for: Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->access$102(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 118
    return-void
.end method
