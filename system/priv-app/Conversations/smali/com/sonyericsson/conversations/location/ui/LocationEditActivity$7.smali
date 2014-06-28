.class Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$7;
.super Ljava/lang/Object;
.source "LocationEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->askForLocationSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$7;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$7;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 703
    return-void
.end method
