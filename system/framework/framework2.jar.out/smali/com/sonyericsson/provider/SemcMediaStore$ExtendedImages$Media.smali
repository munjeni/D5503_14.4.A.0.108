.class public final Lcom/sonyericsson/provider/SemcMediaStore$ExtendedImages$Media;
.super Ljava/lang/Object;
.source "SemcMediaStore.java"

# interfaces
.implements Lcom/sonyericsson/provider/SemcMediaStore$ExtendedImages$ExtendedImageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/SemcMediaStore$ExtendedImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 540
    const-string v0, "internal"

    invoke-static {v0}, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedImages$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedImages$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 547
    const-string v0, "external"

    invoke-static {v0}, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedImages$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedImages$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/extended_images/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
