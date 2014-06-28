.class Lcom/android/mms/transaction/MmsContentChangedReceiver$1;
.super Ljava/lang/Thread;
.source "MmsContentChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MmsContentChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MmsContentChangedReceiver;

.field final synthetic val$changedUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MmsContentChangedReceiver;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/mms/transaction/MmsContentChangedReceiver$1;->this$0:Lcom/android/mms/transaction/MmsContentChangedReceiver;

    iput-object p3, p0, Lcom/android/mms/transaction/MmsContentChangedReceiver$1;->val$changedUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/MmsContentChangedReceiver$1;->val$changedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 57
    return-void
.end method
