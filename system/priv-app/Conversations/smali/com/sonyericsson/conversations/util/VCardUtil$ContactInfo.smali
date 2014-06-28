.class Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
.super Ljava/lang/Object;
.source "VCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/VCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactInfo"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mPhoto:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mName:Ljava/lang/String;

    .line 469
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mPhoto:Landroid/graphics/Bitmap;

    .line 472
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mName:Ljava/lang/String;

    .line 473
    iput-object p2, p0, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mPhoto:Landroid/graphics/Bitmap;

    .line 474
    return-void
.end method
