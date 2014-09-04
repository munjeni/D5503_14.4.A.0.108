.class Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$3;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 141
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$3;->this$0:Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 145
    return-void
.end method
