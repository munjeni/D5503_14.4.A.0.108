.class public Lcom/android/phone/ManagedRoaming;
.super Ljava/lang/Object;
.source "ManagedRoaming.java"


# static fields
.field private static isMRDialogShown:Z

.field private static sInstance:Lcom/android/phone/ManagedRoaming;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mManagedRoamingReceiver:Landroid/content/BroadcastReceiver;

.field onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ManagedRoaming;->isMRDialogShown:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Lcom/android/phone/ManagedRoaming$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ManagedRoaming$1;-><init>(Lcom/android/phone/ManagedRoaming;)V

    iput-object v1, p0, Lcom/android/phone/ManagedRoaming;->mManagedRoamingReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance v1, Lcom/android/phone/ManagedRoaming$2;

    invoke-direct {v1, p0}, Lcom/android/phone/ManagedRoaming$2;-><init>(Lcom/android/phone/ManagedRoaming;)V

    iput-object v1, p0, Lcom/android/phone/ManagedRoaming;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    .line 144
    new-instance v1, Lcom/android/phone/ManagedRoaming$3;

    invoke-direct {v1, p0}, Lcom/android/phone/ManagedRoaming$3;-><init>(Lcom/android/phone/ManagedRoaming;)V

    iput-object v1, p0, Lcom/android/phone/ManagedRoaming;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 72
    iput-object p1, p0, Lcom/android/phone/ManagedRoaming;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/phone/ManagedRoaming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/ManagedRoaming;->mManagedRoamingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ManagedRoaming;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ManagedRoaming;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/ManagedRoaming;->createManagedRoamingDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ManagedRoaming;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ManagedRoaming;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/ManagedRoaming;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ManagedRoaming;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ManagedRoaming;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/ManagedRoaming;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/phone/ManagedRoaming;->isMRDialogShown:Z

    return p0
.end method

.method private createManagedRoamingDialog()V
    .locals 6

    .prologue
    .line 96
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 97
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/phone/ManagedRoaming;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "network_selection_key"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "networkSelection":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Received Managed Roaming intent, networkSelection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Is Dialog Displayed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/ManagedRoaming;->isMRDialogShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/ManagedRoaming;->log(Ljava/lang/String;)V

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/phone/ManagedRoaming;->isMRDialogShown:Z

    if-nez v3, :cond_0

    .line 104
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/ManagedRoaming;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b03bc

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b03bd

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b03be

    iget-object v5, p0, Lcom/android/phone/ManagedRoaming;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b03bf

    iget-object v5, p0, Lcom/android/phone/ManagedRoaming;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 113
    .local v0, "managedRoamingDialog":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/phone/ManagedRoaming;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 114
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/phone/ManagedRoaming;->isMRDialogShown:Z

    .line 115
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 116
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 118
    .end local v0    # "managedRoamingDialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/ManagedRoaming;
    .locals 4

    .prologue
    .line 60
    const-class v1, Lcom/android/phone/ManagedRoaming;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/android/phone/ManagedRoaming;->sInstance:Lcom/android/phone/ManagedRoaming;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/phone/ManagedRoaming;

    invoke-direct {v0, p0}, Lcom/android/phone/ManagedRoaming;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/ManagedRoaming;->sInstance:Lcom/android/phone/ManagedRoaming;

    .line 66
    :goto_0
    sget-object v0, Lcom/android/phone/ManagedRoaming;->sInstance:Lcom/android/phone/ManagedRoaming;

    monitor-exit v1

    return-object v0

    .line 64
    :cond_0
    const-string v0, "ManagedRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/ManagedRoaming;->sInstance:Lcom/android/phone/ManagedRoaming;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "ManagedRoaming"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method
