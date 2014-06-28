.class Lcom/android/phone/am/SomcAmGreetingsSetting$5;
.super Ljava/lang/Object;
.source "SomcAmGreetingsSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmGreetingsSetting;->getDeleteDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$5;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 381
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$5;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;
    invoke-static {v2}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$200(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$5;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mLongClickMessagePosition:I
    invoke-static {v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$000(Lcom/android/phone/am/SomcAmGreetingsSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v1, v2

    check-cast v1, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 383
    .local v1, "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$5;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingPreference;->getMessageId()I

    move-result v3

    # invokes: Lcom/android/phone/am/SomcAmGreetingsSetting;->deleteGreeting(I)V
    invoke-static {v2, v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$400(Lcom/android/phone/am/SomcAmGreetingsSetting;I)V

    .line 385
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$5;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$300(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 387
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_am_greetings"

    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$5;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # invokes: Lcom/android/phone/am/SomcAmGreetingsSetting;->getFirstGreetingId()I
    invoke-static {v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$500(Lcom/android/phone/am/SomcAmGreetingsSetting;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$5;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # invokes: Lcom/android/phone/am/SomcAmGreetingsSetting;->refreshMessages()V
    invoke-static {v2}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$600(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    .line 392
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$5;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0163

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 395
    return-void
.end method
