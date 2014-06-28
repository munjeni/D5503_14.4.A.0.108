.class Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$2;
.super Ljava/lang/Object;
.source "LocationEditActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
    .line 312
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$2;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$2;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsServiceAvailable:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$000(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return v1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$2;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->locateByAddress(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$800(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
