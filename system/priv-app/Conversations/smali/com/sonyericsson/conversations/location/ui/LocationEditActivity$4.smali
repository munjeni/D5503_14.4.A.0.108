.class Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$4;
.super Ljava/lang/Object;
.source "LocationEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
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
    .line 503
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$4;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$4;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->finish()V

    .line 507
    return-void
.end method
