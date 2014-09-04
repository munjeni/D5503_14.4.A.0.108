.class Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;
.super Ljava/lang/Object;
.source "DecodeUtils.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeCanceller"
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils$DecodeCanceller;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 56
    return-void
.end method
