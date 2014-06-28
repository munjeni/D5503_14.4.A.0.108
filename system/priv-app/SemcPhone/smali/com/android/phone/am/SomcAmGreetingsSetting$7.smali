.class Lcom/android/phone/am/SomcAmGreetingsSetting$7;
.super Ljava/lang/Object;
.source "SomcAmGreetingsSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmGreetingsSetting;->getDeleteLastDialog()Landroid/app/AlertDialog;
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
    .line 408
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$7;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 411
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$7;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;
    invoke-static {v2}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$200(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$7;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mLongClickMessagePosition:I
    invoke-static {v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$000(Lcom/android/phone/am/SomcAmGreetingsSetting;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v1, v2

    check-cast v1, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 413
    .local v1, "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$7;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingPreference;->getMessageId()I

    move-result v3

    # invokes: Lcom/android/phone/am/SomcAmGreetingsSetting;->deleteGreeting(I)V
    invoke-static {v2, v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$400(Lcom/android/phone/am/SomcAmGreetingsSetting;I)V

    .line 414
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$7;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$300(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 415
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_am_greetings"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string v2, "key_am_enabled"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 420
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$7;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "somc.answering_machine_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$7;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # invokes: Lcom/android/phone/am/SomcAmGreetingsSetting;->refreshMessages()V
    invoke-static {v2}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$600(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    .line 424
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$7;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0163

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 427
    return-void
.end method
