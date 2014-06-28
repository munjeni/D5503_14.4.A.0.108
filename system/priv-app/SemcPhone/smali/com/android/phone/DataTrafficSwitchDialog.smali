.class public Lcom/android/phone/DataTrafficSwitchDialog;
.super Landroid/app/Activity;
.source "DataTrafficSwitchDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mReqDataTrafficState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mReqDataTrafficState:Z

    return-void
.end method

.method private isDataTrafficEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, "mCM":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private isDisplayableDialog(Landroid/content/Context;Z)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCurrentDataTrafficOn"    # Z

    .prologue
    const/4 v4, 0x1

    .line 151
    const-string v2, "pref_data_traffic_dialog_state"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    .local v0, "dataTrafficDialogPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    .line 155
    .local v1, "showDialogState":Z
    if-eqz p2, :cond_0

    .line 157
    const-string v2, "key_show_dialog_for_data_traffic_disable"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 161
    :cond_0
    const-string v2, "key_show_dialog_for_data_traffic_enable"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "DataTrafficSwitchDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method private setDataTraffic(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enable"    # Z

    .prologue
    .line 89
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataTraffic enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 90
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 91
    .local v0, "mCM":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 92
    return-void
.end method

.method private setDisableDataTrafficDialog(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRequestDataTrafficOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 168
    const-string v1, "pref_data_traffic_dialog_state"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    .local v0, "dataTrafficDialogPrefs":Landroid/content/SharedPreferences;
    if-eqz p2, :cond_0

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_show_dialog_for_data_traffic_enable"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_show_dialog_for_data_traffic_disable"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onClick"

    invoke-direct {p0, v0}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 119
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 120
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onClick, BUTTON_POSITIVE"

    invoke-direct {p0, v0}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mReqDataTrafficState:Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/DataTrafficSwitchDialog;->setDisableDataTrafficDialog(Landroid/content/Context;Z)V

    .line 124
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mReqDataTrafficState:Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/DataTrafficSwitchDialog;->setDataTraffic(Landroid/content/Context;Z)V

    .line 128
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 129
    return-void

    .line 125
    :cond_4
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    .line 126
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "onClick, BUTTON_NEGATIVE"

    invoke-direct {p0, v0}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficSwitchDialog;->switchData()V

    .line 41
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 136
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDismiss"

    invoke-direct {p0, v0}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 138
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    iget-object v0, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 148
    return-void
.end method

.method public showPopup(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 95
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "showPopup"

    invoke-direct {p0, v2}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_2

    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 99
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 100
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 101
    const v2, 0x1040013

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Done with builder"

    invoke-direct {p0, v2}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 106
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090028

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "checkboxView":Landroid/view/View;
    const v2, 0x1020285

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 109
    iget-object v2, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mCheckBox:Landroid/widget/CheckBox;

    const v3, 0x7f0b0090

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v2, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 111
    iget-object v2, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 112
    iget-object v2, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 114
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "checkboxView":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 115
    return-void
.end method

.method public switchData()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DataTrafficSwitchDialog;->isDataTrafficEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 50
    .local v1, "enabled":Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/phone/DataTrafficSwitchDialog;->isDisplayableDialog(Landroid/content/Context;Z)Z

    move-result v2

    .line 51
    .local v2, "isShowDialog":Z
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 52
    .local v0, "disableDialog":Z
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataTrafficEnabled? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,isShowDialog? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DataTrafficSwitchDialog;->log(Ljava/lang/String;)V

    .line 56
    :cond_0
    if-eqz v1, :cond_2

    .line 58
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 59
    iput-boolean v5, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mReqDataTrafficState:Z

    .line 60
    const v3, 0x7f0b008f

    invoke-virtual {p0, v3}, Lcom/android/phone/DataTrafficSwitchDialog;->showPopup(I)V

    .line 76
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/phone/DataTrafficSwitchDialog;->setDataTraffic(Landroid/content/Context;Z)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 67
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 68
    iput-boolean v6, p0, Lcom/android/phone/DataTrafficSwitchDialog;->mReqDataTrafficState:Z

    .line 69
    const v3, 0x7f0b008e

    invoke-virtual {p0, v3}, Lcom/android/phone/DataTrafficSwitchDialog;->showPopup(I)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/android/phone/DataTrafficSwitchDialog;->setDataTraffic(Landroid/content/Context;Z)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
