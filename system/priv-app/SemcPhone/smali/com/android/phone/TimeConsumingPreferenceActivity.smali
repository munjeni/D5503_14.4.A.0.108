.class public Lcom/android/phone/TimeConsumingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/phone/TimeConsumingPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TimeConsumingPreferenceActivity$1;,
        Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;,
        Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final mBusyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDismiss:Landroid/content/DialogInterface$OnClickListener;

.field private final mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

.field protected mIsForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->DBG:Z

    .line 47
    new-instance v0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    new-instance v0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    .line 61
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    return-void
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 208
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 204
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 131
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0b027d

    .line 65
    const/16 v5, 0x64

    if-eq p1, v5, :cond_0

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_1

    .line 66
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "dialog":Landroid/app/ProgressDialog;
    const v5, 0x7f0b0274

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 70
    sparse-switch p1, :sswitch_data_0

    move-object v1, v4

    .line 124
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    .line 72
    .restart local v1    # "dialog":Landroid/app/ProgressDialog;
    :sswitch_0
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 73
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 74
    const v4, 0x7f0b0276

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :sswitch_1
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 78
    const v4, 0x7f0b0277

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :cond_1
    const/16 v5, 0x190

    if-eq p1, v5, :cond_2

    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_2

    const/16 v5, 0x12c

    if-eq p1, v5, :cond_2

    const/16 v5, 0x258

    if-ne p1, v5, :cond_3

    .line 86
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0275

    .line 91
    .local v3, "titleId":I
    sparse-switch p1, :sswitch_data_1

    .line 108
    const v2, 0x7f0b027a

    .line 110
    .local v2, "msgId":I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 120
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 93
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "msgId":I
    :sswitch_2
    const v2, 0x7f0b0279

    .line 94
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 97
    .end local v2    # "msgId":I
    :sswitch_3
    const v2, 0x7f0b027c

    .line 99
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 102
    .end local v2    # "msgId":I
    :sswitch_4
    const v2, 0x7f0b027b

    .line 104
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "msgId":I
    .end local v3    # "titleId":I
    :cond_3
    move-object v1, v4

    .line 124
    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch

    .line 91
    :sswitch_data_1
    .sparse-switch
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_4
    .end sparse-switch
.end method

.method public onError(Landroid/preference/Preference;I)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "error"    # I

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0, p2}, Landroid/app/Activity;->showDialog(I)V

    .line 187
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    return-void
.end method

.method public onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "exception"    # Lcom/android/internal/telephony/CommandException;

    .prologue
    .line 192
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 193
    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 196
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    if-eqz p2, :cond_1

    .line 171
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    .line 176
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 177
    return-void

    .line 173
    :cond_1
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 137
    return-void
.end method

.method public onStarted(Landroid/preference/Preference;Z)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 153
    if-eqz p2, :cond_1

    .line 154
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
