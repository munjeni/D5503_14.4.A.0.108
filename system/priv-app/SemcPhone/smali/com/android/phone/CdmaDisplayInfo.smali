.class public Lcom/android/phone/CdmaDisplayInfo;
.super Ljava/lang/Object;
.source "CdmaDisplayInfo.java"


# static fields
.field private static sDisplayInfoDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissDisplayInfoRecord()V
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Dissmissing Display Info Record..."

    invoke-static {v0}, Lcom/android/phone/CdmaDisplayInfo;->log(Ljava/lang/String;)V

    .line 80
    :cond_0
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    .line 84
    :cond_1
    return-void
.end method

.method public static displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "infoMsg"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayInfoRecord: infoMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaDisplayInfo;->log(Ljava/lang/String;)V

    .line 49
    :cond_0
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 56
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b03bb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    .line 63
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 65
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 69
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 71
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "CdmaDisplayInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDisplayInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
