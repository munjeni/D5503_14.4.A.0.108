.class Lcom/android/mms/ui/SlideEditorActivity$15;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 10
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "append"    # Z

    .prologue
    const/4 v8, 0x0

    const v9, 0x7f0700fe

    .line 780
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 781
    .local v0, "context":Landroid/content/Context;
    if-nez p1, :cond_0

    .line 782
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1800(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 816
    :goto_0
    return-void

    .line 789
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 790
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 791
    .local v2, "messageId":J
    invoke-static {v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v5

    .line 792
    .local v5, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    invoke-virtual {v5, p1, v2, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v4

    .line 793
    .local v4, "newUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 798
    .end local v2    # "messageId":J
    .end local v4    # "newUri":Landroid/net/Uri;
    .end local v5    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :catch_0
    move-exception v1

    .line 799
    .local v1, "e":Lcom/google/android/mms/MmsException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-string v7, "add picture failed"

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$2000(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V

    .line 800
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1800(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 795
    .end local v1    # "e":Lcom/google/android/mms/MmsException;
    :cond_1
    :try_start_1
    const-string v6, "SlideEditorActivity"

    const-string v7, "mUri is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 803
    :catch_1
    move-exception v1

    .line 804
    .local v1, "e":Lcom/android/mms/UnsupportContentTypeException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f0700fb

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1800(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f0700fc

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1800(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 807
    .end local v1    # "e":Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v1

    .line 808
    .local v1, "e":Lcom/android/mms/ResolutionException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f0700ff

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1800(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f070100

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1800(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 811
    .end local v1    # "e":Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v1

    .line 812
    .local v1, "e":Lcom/android/mms/ExceedMessageSizeException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f0700fd

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1800(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1800(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
