.class Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;
.super Ljava/lang/Object;
.source "TetherAPNSelectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    # getter for: Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mApnList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->access$000(Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    # getter for: Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mApnList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->access$000(Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tether_dun_apn"

    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    # getter for: Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mApnList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->access$000(Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 71
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 73
    return-void
.end method
