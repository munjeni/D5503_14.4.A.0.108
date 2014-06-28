.class Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;
.super Ljava/lang/Object;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusUpdateChecker"
.end annotation


# static fields
.field private static final ALL_UPDATE:I = 0x7

.field private static final NOTIFICATION_UPDATE:I = 0x1

.field private static final SIM_UPDATE:I = 0x4

.field private static final TEMPLATE_UPDATE:I = 0x2


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;)V
    .locals 1

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Lcom/sonyericsson/conversations/ui/SettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/SettingsFragment;
    .param p2, "x1"    # Lcom/sonyericsson/conversations/ui/SettingsFragment$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;-><init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;)V

    return-void
.end method


# virtual methods
.method public isAllUpdate()Z
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotificationUpdate()Z
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSimUpdate()Z
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTemplateUpdate()Z
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    .line 135
    return-void
.end method

.method public updateByKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string v0, "pref_key_notifications_settings"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->updateNotification()V

    .line 142
    :cond_0
    const-string v0, "pref_key_text_template"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->updateTemplate()V

    .line 146
    :cond_1
    const-string v0, "pref_key_sim_messages"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->updateSim()V

    .line 149
    :cond_2
    return-void
.end method

.method public updateNotification()V
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    .line 123
    return-void
.end method

.method public updateSim()V
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    .line 131
    return-void
.end method

.method public updateTemplate()V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->mState:I

    .line 127
    return-void
.end method
