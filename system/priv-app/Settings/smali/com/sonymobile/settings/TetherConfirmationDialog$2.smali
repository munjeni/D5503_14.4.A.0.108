.class Lcom/sonymobile/settings/TetherConfirmationDialog$2;
.super Ljava/lang/Object;
.source "TetherConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/TetherConfirmationDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 75
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    # getter for: Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->access$000(Lcom/sonymobile/settings/TetherConfirmationDialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    # getter for: Lcom/sonymobile/settings/TetherConfirmationDialog;->mCheckbox:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->access$000(Lcom/sonymobile/settings/TetherConfirmationDialog;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080177

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "show_tether_dialog"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 85
    return-void
.end method
