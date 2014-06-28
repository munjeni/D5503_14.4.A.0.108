.class public final Lcom/android/settings/wifi/WpsDialog$WpsListener;
.super Landroid/app/Fragment;
.source "WpsDialog.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WpsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WpsListener"
.end annotation


# instance fields
.field private mSavedReason:I

.field private mWpsDialog:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mSavedReason:I

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 94
    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    # getter for: Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    sget-object v2, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    const v3, 0x7f0b02c0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailure(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-nez v2, :cond_0

    .line 133
    iput p1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mSavedReason:I

    .line 157
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    # getter for: Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 153
    :pswitch_0
    const v2, 0x7f0b02c3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "msg":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    sget-object v3, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/WpsDialog$DialogState;

    # invokes: Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v1    # "msg":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0b02c7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 144
    .end local v1    # "msg":Ljava/lang/String;
    :pswitch_2
    const v2, 0x7f0b02c4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 147
    .end local v1    # "msg":Ljava/lang/String;
    :pswitch_3
    const v2, 0x7f0b02c5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 150
    .end local v1    # "msg":Ljava/lang/String;
    :pswitch_4
    const v2, 0x7f0b02c2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStartSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    # getter for: Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/app/Activity;

    move-result-object v0

    .line 111
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    sget-object v2, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/WpsDialog$DialogState;

    const v3, 0x7f0b02bf

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    sget-object v2, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/WpsDialog$DialogState;

    const v3, 0x7f0b02be

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWpsDialog(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 2
    .param p1, "wpsDialog"    # Lcom/android/settings/wifi/WpsDialog;

    .prologue
    const/4 v1, -0x1

    .line 97
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 98
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mSavedReason:I

    if-eq v0, v1, :cond_0

    .line 99
    iget v0, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mSavedReason:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsDialog$WpsListener;->onFailure(I)V

    .line 100
    iput v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mSavedReason:I

    .line 102
    :cond_0
    return-void
.end method
