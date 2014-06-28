.class public Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# instance fields
.field private mDialogId:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/DialogCreatable;I)V
    .locals 3

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 216
    iput p2, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 217
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 222
    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 244
    if-eqz p1, :cond_2

    .line 245
    const-string v0, "key_dialog_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 246
    const-string v0, "key_parent_fragment_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 247
    if-le v0, v2, :cond_1

    .line 248
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 249
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/settings/DialogCreatable;

    if-nez v1, :cond_1

    .line 250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must implement "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/android/settings/DialogCreatable;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    # setter for: Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->access$202(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/DialogCreatable;

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {v0, v1}, Lcom/android/settings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 292
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    # getter for: Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0}, Lcom/android/settings/SettingsPreferenceFragment;->access$200(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->access$202(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 298
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 240
    :cond_0
    return-void
.end method
