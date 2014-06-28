.class Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;
.super Ljava/lang/Object;
.source "SaveVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 74
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v5, 0x0

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->access$000(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Lcom/android/vcard/VCardEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->access$000(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Lcom/android/vcard/VCardEntry;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->access$100(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 81
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->access$100(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070047

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 94
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    # setter for: Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2, v5}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->access$102(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 95
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 96
    return-void

    .line 82
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SaveVCardActivity"

    const-string v3, "Error communicating with remote device while saving contact."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Landroid/content/OperationApplicationException;
    const-string v2, "SaveVCardActivity"

    const-string v3, "Application fails while saving contact."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
