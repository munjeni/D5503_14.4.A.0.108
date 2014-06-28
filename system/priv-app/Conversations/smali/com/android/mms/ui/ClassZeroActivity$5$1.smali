.class Lcom/android/mms/ui/ClassZeroActivity$5$1;
.super Ljava/lang/Thread;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassZeroActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ClassZeroActivity$5;

.field final synthetic val$currentZeroValues:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity$5;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$5$1;->this$1:Lcom/android/mms/ui/ClassZeroActivity$5;

    iput-object p3, p0, Lcom/android/mms/ui/ClassZeroActivity$5$1;->val$currentZeroValues:Landroid/content/ContentValues;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$5$1;->this$1:Lcom/android/mms/ui/ClassZeroActivity$5;

    iget-object v1, v1, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ClassZeroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 281
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$5$1;->this$1:Lcom/android/mms/ui/ClassZeroActivity$5;

    iget-object v1, v1, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ClassZeroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$5$1;->val$currentZeroValues:Landroid/content/ContentValues;

    invoke-static {v1, v0, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 283
    return-void
.end method
