.class Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;
.super Landroid/os/AsyncTask;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddMediaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field errorText:I

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/EditorFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p2, "x1"    # Lcom/sonyericsson/conversations/ui/EditorFragment$1;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 17
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 299
    const/4 v14, 0x0

    aget-object v7, p1, v14

    check-cast v7, Landroid/net/Uri;

    .line 300
    .local v7, "imageUri":Landroid/net/Uri;
    const/4 v14, 0x1

    aget-object v10, p1, v14

    check-cast v10, Ljava/lang/StringBuilder;

    .line 301
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x2

    aget-object v14, p1, v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 304
    .local v8, "isLocation":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 305
    .local v12, "startTime":J
    const-string v14, "Conversations"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 306
    const-string v14, "EditorFragment"

    const-string v15, "onActivityResult: Add image started."

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;
    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 309
    if-eqz v8, :cond_5

    .line 312
    if-nez v7, :cond_3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-nez v14, :cond_3

    .line 313
    const v14, 0x7f0700ca

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->errorText:I

    .line 326
    :cond_1
    :goto_0
    const-string v14, "Conversations"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 328
    .local v4, "endTime":J
    sub-long v2, v4, v12

    .line 329
    .local v2, "elapsedTime":J
    const-string v14, "EditorFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onActivityResult: Add image ended. Time elapsed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v2    # "elapsedTime":J
    .end local v4    # "endTime":J
    .end local v12    # "startTime":J
    :cond_2
    :goto_1
    const/4 v14, 0x0

    return-object v14

    .line 315
    .restart local v12    # "startTime":J
    :cond_3
    if-eqz v7, :cond_4

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;
    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;ZZ)V

    .line 318
    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;
    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 332
    .end local v12    # "startTime":J
    :catch_0
    move-exception v11

    .line 338
    .local v11, "se":Ljava/lang/SecurityException;
    const-string v14, "EditorFragment"

    const-string v15, "Could not add media to MMS due to DRM protection"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    const v14, 0x7f070092

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->errorText:I

    goto :goto_1

    .line 323
    .end local v11    # "se":Ljava/lang/SecurityException;
    .restart local v12    # "startTime":J
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;
    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v7, v15}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 340
    .end local v12    # "startTime":J
    :catch_1
    move-exception v9

    .line 341
    .local v9, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    const-string v14, "EditorFragment"

    const-string v15, "Could not resize image enough to fit the message"

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    invoke-virtual {v9}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v6

    .line 343
    .local v6, "errorCode":I
    packed-switch v6, :pswitch_data_0

    .line 353
    const v14, 0x7f0700ca

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->errorText:I

    goto :goto_1

    .line 349
    :pswitch_0
    const v14, 0x7f0700cb

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->errorText:I

    goto :goto_1

    .line 356
    .end local v6    # "errorCode":I
    .end local v9    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    :catch_2
    move-exception v1

    .line 357
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const-string v14, "EditorFragment"

    const-string v15, "Could not add media to MMS"

    invoke-static {v14, v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    const v14, 0x7f0700ca

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->errorText:I

    goto :goto_1

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 290
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    .line 365
    iget v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->errorText:I

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->errorText:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$200(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->updateTextInputView()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$300(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V
    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$400(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)V

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$500(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 374
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 375
    return-void
.end method
