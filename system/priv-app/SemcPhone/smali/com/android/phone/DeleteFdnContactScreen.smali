.class public Lcom/android/phone/DeleteFdnContactScreen;
.super Landroid/app/Activity;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
    }
.end annotation


# instance fields
.field private mFDNHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2:Ljava/lang/String;

.field protected mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    .line 242
    new-instance v0, Lcom/android/phone/DeleteFdnContactScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/DeleteFdnContactScreen$4;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DeleteFdnContactScreen;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/DeleteFdnContactScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DeleteFdnContactScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/DeleteFdnContactScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/DeleteFdnContactScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/DeleteFdnContactScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->handleResult(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/DeleteFdnContactScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/DeleteFdnContactScreen;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/DeleteFdnContactScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/DeleteFdnContactScreen;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/DeleteFdnContactScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/DeleteFdnContactScreen;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->deleteContact()V

    return-void
.end method

.method private authenticatePin2()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    const-class v1, Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    return-void
.end method

.method private deleteContact()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v6, "buf":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v0, "\' AND pin2=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 133
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    .line 134
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 136
    return-void

    .line 122
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v0, "tag=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v0, "\' AND number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private displayProgress(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 148
    return-void

    .line 145
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private handleResult(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 160
    if-eqz p1, :cond_1

    .line 161
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleResult: success!"

    invoke-direct {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->log(Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b033c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/DeleteFdnContactScreen$1;

    invoke-direct {v1, p0}, Lcom/android/phone/DeleteFdnContactScreen$1;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void

    .line 164
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "handleResult: failed!"

    invoke-direct {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->log(Ljava/lang/String;)V

    .line 165
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DeleteFdnContact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method private processPin2(Ljava/lang/String;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "onComplete":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 216
    return-void
.end method

.method private resolveIntent()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    .line 110
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 115
    :cond_0
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "statusMsg"    # Ljava/lang/CharSequence;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onActivityResult"

    invoke-direct {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->log(Ljava/lang/String;)V

    .line 90
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 92
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "extras":Landroid/os/Bundle;
    :goto_1
    if-eqz v0, :cond_2

    .line 94
    const-string v1, "pin2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->processPin2(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 98
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "onActivityResult: CANCELLED"

    invoke-direct {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->log(Ljava/lang/String;)V

    .line 99
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->resolveIntent()V

    .line 79
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->authenticatePin2()V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 82
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 84
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 220
    if-ne p1, v3, :cond_0

    .line 221
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0362

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/DeleteFdnContactScreen$2;

    invoke-direct {v2, p0}, Lcom/android/phone/DeleteFdnContactScreen$2;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 229
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 230
    const/4 v1, -0x3

    const v2, 0x7f0b01fd

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/phone/DeleteFdnContactScreen$3;

    invoke-direct {v3, p0}, Lcom/android/phone/DeleteFdnContactScreen$3;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 239
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method
