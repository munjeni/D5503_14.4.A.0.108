.class Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$2;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$2;->this$0:Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$2;->this$0:Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->finish()V

    .line 139
    return-void
.end method
