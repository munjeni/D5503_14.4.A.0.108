.class Lcom/android/phone/am/SomcAmGreetingsSetting$10;
.super Ljava/lang/Object;
.source "SomcAmGreetingsSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmGreetingsSetting;->getRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmGreetingsSetting;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    iput-object p2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 468
    iget-object v1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0166

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 474
    iget-object v1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->removeDialog(I)V

    .line 486
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$200(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mLongClickMessagePosition:I
    invoke-static {v2}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$000(Lcom/android/phone/am/SomcAmGreetingsSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 479
    .local v0, "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    iget-object v1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingPreference;->getMessageId()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/am/SomcAmGreetingsSetting;->renameGreeting(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$800(Lcom/android/phone/am/SomcAmGreetingsSetting;ILjava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # invokes: Lcom/android/phone/am/SomcAmGreetingsSetting;->refreshMessages()V
    invoke-static {v1}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$600(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    .line 481
    iget-object v1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0165

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 485
    iget-object v1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$10;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method
