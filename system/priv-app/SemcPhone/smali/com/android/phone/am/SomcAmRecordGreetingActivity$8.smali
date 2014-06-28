.class Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;
.super Ljava/lang/Object;
.source "SomcAmRecordGreetingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmRecordGreetingActivity;->initSaveButton()V
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
    .line 624
    iput-object p1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 626
    iget-object v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$1000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_0

    .line 627
    iget-object v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0166

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 668
    :goto_0
    return-void

    .line 633
    :cond_0
    new-instance v1, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    iget-object v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 635
    .local v1, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    const/4 v4, 0x0

    .line 636
    .local v4, "ret":Z
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 637
    iget-object v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mNameField:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$1000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$1100(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->saveGreetingToDb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 640
    :cond_1
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 641
    if-eqz v4, :cond_4

    .line 642
    iget-object v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.phone_preferences"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 644
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "key_am_greetings"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 647
    .local v0, "currentMessageId":I
    if-ne v0, v8, :cond_2

    .line 650
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 651
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "key_am_greetings"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 652
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 654
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    const/4 v6, 0x0

    # setter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$1102(Lcom/android/phone/am/SomcAmRecordGreetingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 655
    iget-object v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-virtual {v5, v8}, Landroid/app/Activity;->setResult(I)V

    .line 656
    iget-object v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0158

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 667
    .end local v0    # "currentMessageId":I
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 660
    :cond_4
    iget-object v5, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0159

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 663
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 664
    const-string v5, "SomcAmRecordGreetingActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to save file!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$8;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mMessageFilePath:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$1100(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
