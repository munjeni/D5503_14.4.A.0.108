.class public Lcom/sonyericsson/conversations/ui/SaveVCardActivity;
.super Landroid/app/Activity;
.source "SaveVCardActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveVCardActivity"


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConfirmSaveDialogForTest:Landroid/app/AlertDialog;

.field private mContact:Lcom/android/vcard/VCardEntry;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$1;-><init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    new-instance v0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$2;-><init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    new-instance v0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity$3;-><init>(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Lcom/android/vcard/VCardEntry;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Lcom/android/vcard/VCardEntry;)Lcom/android/vcard/VCardEntry;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SaveVCardActivity;
    .param p1, "x1"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/conversations/ui/SaveVCardActivity;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SaveVCardActivity;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method private createDialogMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 128
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "contactName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    return-object v1
.end method


# virtual methods
.method getConfirmSaveContactDialogForTest()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mConfirmSaveDialogForTest:Landroid/app/AlertDialog;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 51
    .local v1, "vCardUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 52
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/util/VCardUtil;->getAllVCardContactDetails(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;

    .line 53
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContact:Lcom/android/vcard/VCardEntry;

    if-eqz v2, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->createDialogMessage()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07004f

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0700db

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;->mConfirmSaveDialogForTest:Landroid/app/AlertDialog;

    .line 70
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
