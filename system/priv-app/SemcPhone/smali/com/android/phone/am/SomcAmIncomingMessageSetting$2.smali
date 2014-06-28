.class Lcom/android/phone/am/SomcAmIncomingMessageSetting$2;
.super Ljava/lang/Object;
.source "SomcAmIncomingMessageSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmIncomingMessageSetting;->refreshMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$2;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting$2;->this$0:Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    # invokes: Lcom/android/phone/am/SomcAmIncomingMessageSetting;->clickItem(Landroid/preference/Preference;)V
    invoke-static {v0, p1}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->access$100(Lcom/android/phone/am/SomcAmIncomingMessageSetting;Landroid/preference/Preference;)V

    .line 165
    const/4 v0, 0x1

    return v0
.end method
