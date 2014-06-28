.class public Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;
.super Ljava/lang/Object;
.source "ChargeStateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;
    }
.end annotation


# instance fields
.field private mCloseDialogReceiver:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->closeDialogIfOpen()V

    return-void
.end method

.method private closeDialogIfOpen()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 92
    :cond_0
    return-void
.end method

.method private playHighDischargeSound()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 98
    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "power_sounds_enabled"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 100
    const-string v4, "low_battery_sound"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "soundPath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 104
    .local v3, "soundUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 105
    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 106
    .local v1, "sfx":Landroid/media/Ringtone;
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 108
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 113
    .end local v1    # "sfx":Landroid/media/Ringtone;
    .end local v2    # "soundPath":Ljava/lang/String;
    .end local v3    # "soundUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method


# virtual methods
.method public show(I)V
    .locals 4
    .param p1, "messageResourceId"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->closeDialogIfOpen()V

    .line 57
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mCloseDialogReceiver:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;-><init>(Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$1;)V

    iput-object v2, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mCloseDialogReceiver:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v1, "intents":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mCloseDialogReceiver:Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$CloseDialogIntentReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    .end local v1    # "intents":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05001f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 69
    const v2, 0x104000a

    new-instance v3, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog$1;-><init>(Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mDialog:Landroid/app/AlertDialog;

    .line 78
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 79
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 80
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/ChargeStateDialog;->playHighDischargeSound()V

    .line 83
    return-void
.end method
