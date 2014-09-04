.class Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$8;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->initDoodle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V
    .locals 0

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$8;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 1418
    if-eqz p2, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$8;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->setColor(I)V

    .line 1421
    :cond_0
    return-void
.end method
