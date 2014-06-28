.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;
.super Ljava/lang/Object;
.source "XssmSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->showHintDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mHintDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$702(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 131
    return-void
.end method
